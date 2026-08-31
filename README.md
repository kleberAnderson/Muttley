# Muttley
Sistema para gerenciamento de eventos, palestras e workshops. Permite inscrição de participantes, controle de eventos.
# 🏷️ Sistema Muttley

![status](https://img.shields.io/badge/status-em%20desenvolvimento-yellow)
![java](https://img.shields.io/badge/Java-21-blue)
![spring](https://img.shields.io/badge/Spring%20Boot-3.4.5-brightgreen)

**Fatec Zona Leste / Instituição de Ensino Superior** — Curso: Análise e Desenvolvimento de Sistemas

**Desenvolvedor:** 
[LucasOtorres](https://github.com/LucasOtorres) | 
[kleberAnderson](https://github.com/kleberAnderson) | 
[PedroNakao](https://github.com/PedroNakao) | 
[rafinhakenzo2004](https://github.com/rafinhakenzo2004) | 
[nakaxi](https://github.com/nakaxi)

---

## Tecnologias Utilizadas

- **Linguagem:** Java
- **Framework:** Spring Boot 3.4.5
- **Banco de Dados:** MySQL
- **ORM:** Spring Data JPA / Hibernate

---

## Principais Funcionalidades

- [x] Manter Eventos
- [x] Manter tags de competências para eventos
- [x] Cadastramento de participante
- [x] Geração de Certificado

---

## Como Executar o Projeto (Docker)

O projeto está totalmente containerizado — não é necessário instalar Java, Maven ou MySQL na sua máquina, apenas o Docker.

### Pré-requisitos

- Docker Desktop instalado e em execução

### Passo a passo

1. **Clone o repositório**
```bash
   git clone https://github.com/kleberAnderson/Muttley.git
```

2. **Suba os containers**
```bash
   docker compose up --build
```

   Na primeira execução, o Docker vai baixar as imagens necessárias e compilar o projeto — pode levar alguns minutos. Nas próximas vezes, basta:
```bash
   docker compose up
   docker compose down -v
```

3. **Acesse o sistema**

   Abra o navegador em: http://localhost:8092/
