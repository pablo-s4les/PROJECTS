<div align="center">

# 🛡️ PROJECTS | Pablo Sales
### Infra · Security · CyberSec

</div>

<br/>

![Repo Banner](https://img.shields.io/badge/Focus-Infrastructure%20%26%20Security-00FF41?style=for-the-badge&logo=hackthebox&logoColor=white)
![Made by pablo-s4les](https://img.shields.io/badge/Made%20by-pablo--s4les-blueviolet?style=for-the-badge&logo=github&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)

</div>

---

## 📌 Sobre este Repositório

> Repositório central de **projetos**, **scripts** e **ferramentas** voltados para as áreas de:
> 🖥️ Infraestrutura · 🔐 Segurança da Informação · 🛡️ Cibersegurança

Aqui você encontrará automações, ferramentas de hardening, scripts de monitoramento, análises de vulnerabilidades e muito mais — tudo documentado e organizado para uso prático em ambientes reais e laboratoriais.

---

## 🗂️ Estrutura do Repositório

```
PROJECTS/
│
├── 📁 infrastructure/          # Provisionamento, IaC, redes e sistemas
│   ├── ansible/                # Playbooks e roles Ansible
│   ├── terraform/              # Infraestrutura como código (AWS, Azure, GCP)
│   ├── docker/                 # Compose files e Dockerfiles
│   └── networking/             # Configurações de rede, VPN, firewall
│
├── 📁 security/                # Hardening, políticas e conformidade
│   ├── hardening/              # Scripts de hardening (Linux, Windows)
│   ├── compliance/             # CIS Benchmarks, NIST, ISO 27001
│   ├── iam/                    # Gestão de identidade e acessos
│   └── monitoring/             # SIEM, logs, alertas, dashboards
│
├── 📁 cybersecurity/           # Pentest, CTF, análise de vulnerabilidades
│   ├── recon/                  # Scripts de reconhecimento e OSINT
│   ├── exploitation/           # Ferramentas e PoCs (uso ético)
│   ├── forensics/              # Análise forense e resposta a incidentes
│   └── ctf/                    # Writeups e ferramentas para CTF
│
├── 📁 scripts/                 # Scripts utilitários gerais
│   ├── bash/                   # Shell scripts
│   ├── python/                 # Scripts Python
│   └── powershell/             # Scripts PowerShell
│
└── 📁 docs/                    # Documentação, checklists e referências
    ├── checklists/
    └── references/
```

---

## 🚀 Projetos em Destaque

| Projeto | Área | Descrição | Status |
|--------|------|-----------|--------|
| `getrecords.sh` | 🖥️ Scripts/Bash | Download automatizado de gravações via API Fortics PBX | 🟢 Ativo |
| `backup_vms_esxi.sh` | 🖥️ Scripts/Bash | Backup automatizado de VMs no VMware ESXi via SSH | 🟢 Ativo |
| `infra-hardening` | 🖥️ Infra + 🔐 Segurança | Scripts de hardening automatizado para Linux | 🟡 Em dev |
| `vuln-scanner` | 🛡️ CyberSec | Scanner de vulnerabilidades com relatório em HTML | 🟡 Em dev |
| `network-monitor` | 🖥️ Infra | Monitoramento de rede com alertas via Telegram | 🟢 Ativo |
| `ctf-toolkit` | 🛡️ CTF | Conjunto de ferramentas para competições CTF | 🟡 Em dev |
| `iac-templates` | 🖥️ IaC | Templates Terraform para ambientes seguros na AWS | 🟡 Em dev |

---

## 🧰 Tecnologias e Ferramentas

<div align="center">

![Linux](https://img.shields.io/badge/Linux-FCC624?style=flat-square&logo=linux&logoColor=black)
![Bash](https://img.shields.io/badge/Bash-4EAA25?style=flat-square&logo=gnubash&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white)
![Ansible](https://img.shields.io/badge/Ansible-EE0000?style=flat-square&logo=ansible&logoColor=white)
![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=flat-square&logo=terraform&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat-square&logo=docker&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-232F3E?style=flat-square&logo=amazonaws&logoColor=white)
![MikroTik](https://img.shields.io/badge/MikroTik-293239?style=flat-square&logo=mikrotik&logoColor=white)
![Fortinet](https://img.shields.io/badge/Fortinet-EE3124?style=flat-square&logo=fortinet&logoColor=white)
![VMware](https://img.shields.io/badge/VMware-607078?style=flat-square&logo=vmware&logoColor=white)
![Nmap](https://img.shields.io/badge/Nmap-0078D7?style=flat-square&logo=nmap&logoColor=white)
![Wireshark](https://img.shields.io/badge/Wireshark-1679A7?style=flat-square&logo=wireshark&logoColor=white)
![Cisco Packet Tracer](https://img.shields.io/badge/Cisco%20Packet%20Tracer-1BA0D7?style=flat-square&logo=cisco&logoColor=white)
![Metasploit](https://img.shields.io/badge/Metasploit-2A2A2A?style=flat-square&logo=metasploit&logoColor=white)
![Kali Linux](https://img.shields.io/badge/Kali%20Linux-557C94?style=flat-square&logo=kalilinux&logoColor=white)
![Git](https://img.shields.io/badge/Git-F05032?style=flat-square&logo=git&logoColor=white)

</div>

---

## ⚡ Quick Start

```bash
# Clone o repositório
git clone https://github.com/pablo-s4les/PROJECTS.git
cd PROJECTS

# Explore a estrutura
ls -la

# Exemplo: rodar um script de hardening
cd security/hardening/
chmod +x linux-hardening.sh
sudo ./linux-hardening.sh
```

---

## 📋 Como Contribuir

1. **Fork** este repositório
2. Crie uma branch: `git checkout -b feat/meu-script`
3. Adicione seu código com documentação clara
4. Commit: `git commit -m "feat: adiciona script de X"`
5. Push: `git push origin feat/meu-script`
6. Abra um **Pull Request**

> ⚠️ **Aviso Legal:** Todo o conteúdo deste repositório é para fins **educacionais e de uso ético**. O uso indevido de qualquer ferramenta aqui contida é de inteira responsabilidade do usuário.

---

## 📚 Referências e Recursos

- 🔗 [OWASP Top 10](https://owasp.org/www-project-top-ten/)
- 🔗 [CIS Benchmarks](https://www.cisecurity.org/cis-benchmarks)
- 🔗 [NIST Cybersecurity Framework](https://www.nist.gov/cyberframework)
- 🔗 [HackTricks](https://book.hacktricks.xyz/)
- 🔗 [PCI DSS](https://www.pcisecuritystandards.org/standards/pci-dss/)
- 🔗 [GTFOBins](https://gtfobins.github.io/)
- 🔗 [CVE Mitre](https://cve.mitre.org/)

---

## 📊 GitHub Stats

<div align="center">

![GitHub followers](https://img.shields.io/github/followers/pablo-s4les?style=for-the-badge&logo=github&color=00FF41)
![GitHub stars](https://img.shields.io/github/stars/pablo-s4les?style=for-the-badge&logo=github&color=blueviolet)

</div>

---

## 📬 Contato

<div align="center">

[![GitHub](https://img.shields.io/badge/GitHub-pablo--s4les-181717?style=for-the-badge&logo=github)](https://github.com/pablo-s4les)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Conectar-0A66C2?style=for-the-badge&logo=linkedin)](https://linkedin.com/in/pablogsales)

</div>

---

<div align="center">
<sub>⚡ Feito com dedicação por <strong>pablo-s4les</strong> · Segurança é um processo, não um produto.</sub>
</div>
