# 🕵️ Relatório Final de CTI — Kaseya

### PGCO 001/2026 · MAC-PRO DFAC · Cyber Threat Intelligence

---

[![Status](https://img.shields.io/badge/Status-Concluído-brightgreen?style=flat-square)](https://img.shields.io/badge/Status-Concluído-brightgreen?style=flat-square) [![Disciplina](https://img.shields.io/badge/Disciplina-Cyber%20Threat%20Intelligence-blue?style=flat-square)](https://img.shields.io/badge/Disciplina-Cyber%20Threat%20Intelligence-blue?style=flat-square) [![Setor](https://img.shields.io/badge/Setor-Tecnologia-purple?style=flat-square)](https://img.shields.io/badge/Setor-Tecnologia-purple?style=flat-square) [![Framework](https://img.shields.io/badge/Framework-MITRE%20ATT%26CK-red?style=flat-square)](https://img.shields.io/badge/Framework-MITRE%20ATT%26CK-red?style=flat-square) [![Alvo](https://img.shields.io/badge/Alvo-Kaseya%20VSA-orange?style=flat-square)](https://img.shields.io/badge/Alvo-Kaseya%20VSA-orange?style=flat-square)

---

## 📁 Arquivos

| Arquivo | Tipo | Descrição |
|---|---|---|
| [📊 Apresentação\_Relatório\_KASEYA\_PGCO0012.pdf](https://github.com/pablo-s4les/PROJECTS/blob/main/docs/academic/cti/Apresenta%C3%A7%C3%A3o%20Relat%C3%B3rio%20KASEYA%20PGCO0012.pdf) | PDF | Apresentação do relatório de CTI — Kaseya |
| [📄 Pablo\_Gomes\_Sales\_Da\_Silva\_Relatorio\_IAC.pdf](https://github.com/pablo-s4les/PROJECTS/blob/main/docs/academic/cti/Pablo_Gomes_Sales_Da_Silva_Relatorio_IAC.pdf) | PDF | Relatório Final de CTI completo |

---

## 🏢 Sobre o Trabalho

> Trabalho acadêmico apresentado na disciplina de **Cyber Threat Intelligence** como requisito parcial para obtenção do título de **Pós-Graduação Lato Sensu em Cibersegurança Ofensiva** — Faculdade Acaditi.

| Campo | Detalhe |
|---|---|
| **Alvo Analisado** | Kaseya VSA |
| **Setor** | Tecnologia (MSP / Gerenciamento de TI) |
| **Trabalho** | PGCO 001/2026 |
| **Período de Execução** | 07/05/2026 a 07/06/2026 |
| **Orientador** | Prof.° Alex Feleol |
| **Aluno (Repositório)** | Pablo Gomes Sales da Silva |
| **Frameworks de Referência** | MITRE ATT&CK · Diamond Model · Cyber Kill Chain |

---

## 🎯 Escopo

A análise concentrou-se no incidente de cadeia de suprimentos da **Kaseya VSA** — software de gerenciamento remoto amplamente utilizado por MSPs (Managed Service Providers):

```
┌─────────────────────────────────────────────────────┐
│  🎯 Alvo Primário    Kaseya VSA (on-premise)        │
│  👥 Ator de Ameaça   REvil / Sodinokibi (APT)       │
│  💥 Vetor de Ataque  Supply Chain + 0-day CVE-2021  │
│  🌍 Impacto Global   ~1.500 empresas / 60 MSPs      │
└─────────────────────────────────────────────────────┘
```

---

## 🔬 Metodologia — 4 Fases

```
Fase 1 ──────────── Fase 2 ──────────── Fase 3 ──────────── Fase 4
Planejamento        Coleta              Processamento       Produção
07–14/05            15–25/05            26/05–01/06         02–07/06
Definição do        OSINT · SIGINT      Correlação e        Relatório
alvo e fontes       Feeds de CTI        Análise TTPs        + Apresentação
```

---

## 📊 Resumo da Inteligência

### Ator de Ameaça — REvil (Sodinokibi)

| Atributo | Detalhe |
|---|---|
| **Classificação** | APT / Ransomware-as-a-Service (RaaS) |
| **Origem** | Leste Europeu (provável) |
| **Motivação** | Financeira |
| **Atividade** | 2019 – presente |
| **Alianças** | GandCrab (predecessor) |
| **CVEs Exploradas** | CVE-2021-30116 · CVE-2021-30119 · CVE-2021-30120 |

---

### TTPs Mapeadas (MITRE ATT&CK)

| Tática | Técnica | ID |
|---|---|---|
| Initial Access | Exploit Public-Facing Application | T1190 |
| Execution | Command and Scripting Interpreter | T1059 |
| Defense Evasion | Masquerading / Signed Binary Proxy Execution | T1036 / T1218 |
| Credential Access | OS Credential Dumping | T1003 |
| Lateral Movement | Remote Services (VSA Agent) | T1021 |
| Impact | Data Encrypted for Impact (Ransomware) | T1486 |
| Impact | Inhibit System Recovery | T1490 |

---

### Linha do Tempo do Incidente

```
02/07/2021 ── REvil explora 0-days no Kaseya VSA (on-premise)
     │
     ├── Distribuição do ransomware via agentes VSA legítimos
     │
     ├── ~60 MSPs comprometidos em horas
     │
     ├── ~1.500 empresas afetadas (clientes dos MSPs)
     │
04/07/2021 ── Kaseya desativa servidores SaaS / alerta clientes
     │
13/07/2021 ── REvil some da internet (servers offline)
     │
22/07/2021 ── Kaseya recebe decryptor (origem não confirmada)
     │
08/11/2021 ── Afiliado do REvil preso (Yaroslav Vasinskyi)
```

---

## 🔏 Indicadores de Comprometimento (IOCs)

| Tipo | Indicador | Descrição |
|---|---|---|
| **Hash MD5** | `d55f983c994caa160ec63a59f6b4250b` | `MsMpEng.exe` malicioso |
| **Hash SHA256** | `e2a24ab94f865caeacdf2c3ad015f31f...` | Payload ransomware REvil |
| **Domínio** | `kdumpanalytics[.]com` | C2 REvil |
| **IP** | `161.35.239[.]91` | Servidor de comando e controle |
| **Caminho** | `C:\kworking\agent.crt` | Dropper distribuído via VSA |
| **CVE** | CVE-2021-30116 | Auth bypass no Kaseya VSA |

> ⚠️ IOCs defangeados intencionalmente. Não resolver/acessar diretamente.

---

## 🗺️ Diamond Model

```
                    ┌──────────────────┐
                    │  ADVERSÁRIO      │
                    │  REvil/Sodinokibi│
                    └────────┬─────────┘
                             │
            ┌────────────────┼────────────────┐
            │                │                │
   ┌────────┴───────┐        │      ┌─────────┴──────┐
   │ INFRAESTRUTURA │        │      │    VÍTIMA       │
   │ C2 · dominios  │        │      │ Kaseya VSA      │
   │ IPs maliciosos │        │      │ MSPs · clientes │
   └────────────────┘        │      └─────────────────┘
                             │
                    ┌────────┴─────────┐
                    │  CAPACIDADES     │
                    │ 0-day · RaaS     │
                    │ Supply Chain     │
                    └──────────────────┘
```

---

## 🏗️ Recomendações de Mitigação

```
┌─────────────────────────────────────────────────────────┐
│  🔴 CRÍTICO   Patch imediato de instâncias VSA          │
│  🔴 CRÍTICO   Desativar VSA on-premise até patch        │
│  🟠 ALTA      MFA obrigatório em painéis administrativos│
│  🟠 ALTA      Segmentação de rede MSP ↔ clientes        │
│  🟠 ALTA      Monitoramento de agentes legítimos (LOLBaS│
│  🟡 MÉDIA     Threat Hunting com IOCs fornecidos        │
│  🟡 MÉDIA     Revisão de SLA de segurança com MSPs      │
└─────────────────────────────────────────────────────────┘
```

---

## 📌 Conclusão

> A análise de CTI sobre o incidente Kaseya revelou um ataque de **cadeia de suprimentos altamente sofisticado**, executado pelo grupo REvil com exploração de múltiplos 0-days. O impacto global demonstrou como **um único ponto de comprometimento em software de gestão de TI pode propagar-se para milhares de organizações**. A adoção de frameworks como MITRE ATT&CK e Diamond Model mostrou-se essencial para estruturar a inteligência e orientar respostas eficazes.

---

🔙 [Voltar ao README principal](https://github.com/pablo-s4les/PROJECTS/blob/main/README.md) · 🔙 [Trabalho anterior: Auditoria VirtuaTech ←](https://github.com/pablo-s4les/PROJECTS/blob/main/docs/academic/auditoria/README.md)
