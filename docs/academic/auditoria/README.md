# 📋 Relatório Final de Auditoria — VirtuaTech
### RAI 001/2026 · MAC-PRO DFAC · Auditoria & Segurança Cibernética

---

<div align="center">

![Status](https://img.shields.io/badge/Status-Concluída-brightgreen?style=flat-square)
![Norma](https://img.shields.io/badge/Norma-ISO%2FIEC%2027001%3A2022-blue?style=flat-square)
![PCI DSS](https://img.shields.io/badge/PCI%20DSS-v4.0.1-orange?style=flat-square)
![Maturidade](https://img.shields.io/badge/Maturidade-Crítica-red?style=flat-square)
![Achados](https://img.shields.io/badge/Achados-16-yellow?style=flat-square)
![Evidências](https://img.shields.io/badge/Evidências-16-purple?style=flat-square)

</div>

---

## 📁 Arquivos

| Arquivo | Tipo | Descrição |
|--------|------|-----------|
| [📄 Pablo_Gomes_Sales_Da_Silva_Relatorio_AUD.pdf](Pablo_Gomes_Sales_Da_Silva_Relatorio_AUD.pdf) | PDF | Relatório Final de Auditoria completo (RFA) |
| [🔏 Cadeia_de_Custodia_VirtuaTech_RAI001_2026_Assinado.pdf](Cadeia_de_Custodia_VirtuaTech_RAI001_2026_Assinado.pdf) | PDF | Termos de Cadeia de Custódia assinados digitalmente |
| [📦 Evidencia_Cadeia_de_custódia.zip](Evidencia_Cadeia_de_custódia.zip) | ZIP | Pacote com todas as 16 evidências coletadas (PNG/JPG) |

---

## 🏢 Sobre a Auditoria

> Trabalho acadêmico apresentado na disciplina de **Auditoria e Monitoramento de Redes, Perímetros e Sistemas** como requisito parcial para obtenção do título de **Pós-Graduação Lato Sensu em Cibersegurança Ofensiva** — Faculdade Acaditi.

| Campo | Detalhe |
|-------|---------|
| **Organização Auditada** | VirtuaTech |
| **Organização Auditora** | MAC-PRO DFAC |
| **Relatório** | RAI 001/2026 |
| **Período de Execução** | 11/04/2026 a 03/05/2026 |
| **Orientador** | Prof.° Fábio Sena |
| **Aluno (Repositório)** | Pablo Gomes Sales da Silva |
| **Norma de Referência** | ISO/IEC 27001:2022 · PCI DSS v4.0.1 |

---

## 🎯 Escopo

Os testes concentraram-se nos seguintes ativos críticos da VirtuaTech:

```
┌─────────────────────────────────────────────────────┐
│  🔥 Firewall pfSense          192.168.161.1          │
│  🖥️  Controlador de Domínio   192.168.161.110 (AD)   │
│  📊 SIEM Graylog              192.168.161.50:9000    │
└─────────────────────────────────────────────────────┘
```

---

## 🔬 Metodologia — 4 Fases

```
Fase 1 ──────────── Fase 2 ──────────── Fase 3 ──────────── Fase 4
Planejamento        Execução            Análise             Relatório
11–15/04            16–22/04            23–27/04            28/04–01/05
Definição do        Coleta técnica      Matriz de           RFA + Plano
escopo e docs       de evidências       Riscos P×I          de Ação
```

---

## 📊 Resumo dos Achados

### Conformidades (✅ 2 achados)

| ID | Controle ISO | Ativo | Descrição |
|----|-------------|-------|-----------|
| AUD-001 | A.8.15 | Graylog | Solução centralizada de logs presente e configurada |
| AUD-002 | A.8.20 | pfSense | Firewall perimetral operacional como gateway da rede |

---

### Não Conformidades (❌ 14 achados)

| ID | Classificação | Controle | Achado | Prazo |
|----|--------------|----------|--------|-------|
| AUD-003 | 🔴 **CRÍTICO** | A.8.20 | RDP (3389) exposto diretamente na WAN para o DC | 7 dias |
| AUD-004 | 🔴 **CRÍTICO** | A.8.5 | pfSense com senha padrão `admin/pfsense` | 7 dias |
| AUD-005 | 🔴 **CRÍTICO** | A.8.5 | GPO: senha mínima 1 char, lockout em 5000 tentativas | 7 dias |
| AUD-006 | 🔴 **CRÍTICO** | A.8.19 | Ferramentas de hacking (Nmap, Wireshark) no DC | 7 dias |
| AUD-009 | 🟠 **ALTA** | A.8.10 | Graylog sem logs desde 2023 (lacuna de ~3 anos) | 7 dias |
| AUD-010 | 🟠 **ALTA** | A.8.8 | Graylog v5.1.5 vulnerável à CVE-2024-24824 (RCE) | 7 dias |
| AUD-011 | 🟠 **ALTA** | A.8.15 | Ausência de DNS Reverso (rDNS/PTR) | 15 dias |
| AUD-012 | 🟠 **ALTA** | A.8.7 | Windows Defender desativado no DC (sem proteção ransomware) | 7 dias |
| AUD-013 | 🟠 **ALTA** | A.8.16 | Aplicativos com versões vulneráveis instalados no DC | 15 dias |
| AUD-014 | 🟠 **ALTA** | A.5.18 | Qualquer usuário autenticado pode ingressar máquinas no domínio | 15 dias |
| AUD-015 | 🟠 **ALTA** | A.8.2 | Conta `administrator` padrão habilitada sem renomear | 15 dias |
| AUD-016 | 🟠 **ALTA** | A.8.10 | Advanced Audit Policy não configurada no AD | 7 dias |
| AUD-007 | 🟡 **BAIXA** | A.5.5 | Política com data inválida: "30 de fevereiro de 20XX" | 15 dias |
| AUD-008 | 🟡 **BAIXA** | A.5.32 | Windows Server 2019 não ativado no DC | 30 dias |

---

## 🗺️ Matriz de Risco (Heat Map)

```
  5 │                              │ AUD-010 · AUD-012
    │                              │ AUD-016 · AUD-003
    │                              │
  4 │                    AUD-003   │
P   │                    AUD-004   │
r   │                    AUD-005   │
o   │                    AUD-006   │
b   │                    AUD-011   │
a   │                    AUD-012   │
b   │                    AUD-014   │
i   │                    AUD-015   │
l   │                    AUD-016   │
i 3 │          AUD-008   ──────────┤
d   │          AUD-009             │
a   │                              │
d 2 │                              │
e   │                              │
    │                              │
  1 │                              │
    └────────┬──────────┬──────────┬──────────┬─────────
             1          2          3          4          5
                              Impacto

  🟡 Baixo (1-4)   🟠 Alto (9-16)   🔴 Crítico (25)
```

---

## 🔏 Cadeia de Custódia

Todas as **16 evidências** foram coletadas com hash SHA-256, assinadas digitalmente via gov.br e registradas com data/hora e auditor responsável.

| Auditores Coletores | Evidências |
|--------------------|-----------|
| Odail Della Niesi Junior | EVI-001 ao EVI-008 |
| Pablo Gomes Sales da Silva | EVI-009, EVI-010, EVI-015, EVI-016 |
| Cristiano da Cruz Carvalho | EVI-011, EVI-012, EVI-013, EVI-014 |

> 🔒 A violação do lacre ou alteração do hash invalida a prova.

---

## 🏗️ Arquitetura Recomendada (To-Be)

```
                        INTERNET (WAN)
                             │
                    ┌────────┴────────┐
                    │  VPN Gateway    │  ← MFA obrigatório
                    │  IPS/IDS        │  ← Suricata/Snort
                    │  pfSense 🔥     │
                    └────────┬────────┘
           ┌─────────────────┼─────────────────┐
           │                 │                 │
    ┌──────┴──────┐   ┌──────┴──────┐   ┌──────┴──────┐
    │ VLAN 10     │   │ VLAN 20     │   │ VLAN 30     │
    │ Gerência    │   │ Servidores  │   │ Estações    │
    │ SIEM/pfSense│   │ AD/DC       │   │ Usuários    │
    │ HTTPS+TLS   │   │ Sem WAN     │   │ Internos    │
    └─────────────┘   └─────────────┘   └─────────────┘
```

---

## 📌 Conclusão

> A auditoria revelou um **estado de maturidade crítico** na VirtuaTech. A infraestrutura apresentou risco residual **inaceitável** frente às exigências da ISO/IEC 27001:2022 e PCI DSS v4.0.1. A implementação imediata das ações de remediação é mandatória para garantir a integridade, confidencialidade e disponibilidade dos ativos.

---

<sub>🔙 <a href="../../../README.md">Voltar ao README principal</a> · 📚 <a href="../cti/README.md">Próximo trabalho: CTI →</a></sub>
