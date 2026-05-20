#!/bin/bash

# ==========================================
# CONFIGURAÇÕES
# ==========================================

IP_PABX="ip.ip.ip.ip"
GKEY="chavekey"

# Cole aqui o cookie da sua sessão logada
COOKIE="PHPSESSID=ekm2kj1qr66h8i5sjuulsfv0s2;"

# Defina a página inicial e a página final da sua pesquisa mensal
PAGINA_INICIAL=1
PAGINA_FINAL=5

# Diretório onde as gravações serão armazenadas
DEST_DIR="$HOME/Diretorio"

# Cria diretório
mkdir -p ${HOME}/Diretorio

# A URL base. Adicione aqui os parâmetros de data caso a pesquisa do mês adicione isso na URL
BASE_URL="http://${IP_PABX}/callcenter/index.php?action=detalhar_atendidas_por_ramal&go=Relatorio_callcenter&&fluxo=recebidas&tipo=fila&ramal=123"

# ==========================================
# INÍCIO DO SCRIPT
# ==========================================

for (( pagina=$PAGINA_INICIAL; pagina<=$PAGINA_FINAL; pagina++ ))
do
    echo "=========================================="
    echo "Lendo página $pagina de $PAGINA_FINAL..."
    echo "=========================================="

    # 1. Monta a URL da página atual
    PAGE_URL="${BASE_URL}&lispg=${pagina}"

    # 2. Baixa o HTML da página usando o Cookie de sessão
    HTML=$(curl -s -b "$COOKIE" "$PAGE_URL")

    # 3. Extrai apenas os nomes dos arquivos .WAV do HTML
    # Procura por monitor="algo.WAV" e extrai só o conteúdo de dentro das aspas e remove duplicidade
    WAV_FILES=$(echo "$HTML" | grep -o 'monitor="[^"]*\.WAV"' | cut -d'"' -f2 | sort -u)

    # Verifica se encontrou arquivos na página
    if [ -z "$WAV_FILES" ]; then
        echo "Nenhuma gravação encontrada na página $pagina. Verifique se o cookie expirou ou se a URL está correta."
        continue
    fi

    # 4. Loop para baixar cada arquivo encontrado na página
    for wav in $WAV_FILES; do
        
        # Substitui o sinal de '+' por '%2B' para enviar na URL
        WAV_URL_PARAM=$(echo "$wav" | sed 's/+/%2B/g')
        
        # Substitui o sinal de '+' por '_' para o nome do arquivo que será salvo no disco
        WAV_FILENAME=$(echo "$wav" | sed 's/+/_/g')

        # Monta a URL de download final via lisintegra
        DOWNLOAD_URL="http://${IP_PABX}/lisintegra.php?gacao=downloadrec&gkey=${GKEY}&gfile=${WAV_URL_PARAM}"

        echo "Baixando: $WAV_FILENAME"
        
        # Executa o download salvando com o nome correto
        curl -s --request GET --url "$DOWNLOAD_URL" -o "${DEST_DIR}/${WAV_FILENAME}"
        
    done
done

echo "=========================================="
echo "Download de todas as páginas concluído!"
echo "=========================================="
