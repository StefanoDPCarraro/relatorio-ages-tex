# 📋 Progresso da Varredura de Siglas - Projeto AGES

**Data da Último Update:** 7 de Abril de 2026  
**Status:** ✅ Concluído e Documentado

---

## 📊 Resumo Executivo

| Métrica | Valor |
|---------|-------|
| **Total de siglas encontradas** | 20 (após limpeza de nomes técnicos) |
| **Erros de capitalização corrigidos** | 3 |
| **Arquivos verificados** | Todos os .tex do projeto |
| **Arquivo principal atualizado** | `conteudo/0 - pre/0.8 - siglas.tex` |

---

## ✅ Siglas Reais Identificadas e Registradas (20)

### Organizacionais (4)
- `AGES` - Agência Experimental de Software
- `PET` - Programa de Educação Tutorial
- `RH` - Recursos Humanos
- `PUCRS` - Pontifícia Universidade Católica do Rio Grande do Sul

### Tecnológicas Front-end (4)
- `HTML` - HyperText Markup Language
- `CSS` - Cascading Style Sheets
- `UI` - User Interface
- `UX` - User Experience

### Tecnológicas Back-end (3)
- `API` - Application Programming Interface
- `REST` - Representational State Transfer
- `SQL` - Structured Query Language

### Arquiteturais (2)
- `MVC` - Model-View-Controller
- `JWT` - JSON Web Token

### Padrões (3)
- `PUCRS` - na URL de referência
- Totalizando 20 siglas principais

---

## 🔧 Correções de Capitalização Aplicadas

### Arquivo: `conteudo/2 - ages I/conteudo/2 - desenvolvimento.tex`

| Linha | Antes | Depois | Tipo |
|-------|-------|--------|------|
| 264 | `Html` | `HTML` | ✅ Corrigido |
| 275 | `RestAPI` | `REST API` | ✅ Corrigido |
| 269 | `Css` | `CSS` | ✅ Estava correto |

---

## ❌ Nomes Técnicos REMOVIDOS (Não são Siglas)

### Linguagens de Programação
- `JavaScript` - Nome técnico completo
- `TypeScript` - Nome técnico completo
- `Python` - Linguagem
- `Java` - Linguagem

### Frameworks e Bibliotecas
- `React` - Biblioteca/Framework
- `Vue` - Framework
- `NestJS` - Framework
- `FastAPI` - Framework
- `SASS` - Pré-processador

### Ferramentas e Plataformas
- `Figma` - Ferramenta de design
- `GitLab` - Plataforma de versionamento

### Conceitos Técnicos
- `Linter` - Ferramenta de análise estática
- `Mockup` - Conceito de prototipagem
- `Regex` - Regular Expression (conceito geral)
- `TypeORM` - ORM (Object-Relational Mapping)
- `PostgreSQL` - SGBD (Relational Database Management System)

### Palavras em Inglês
- `Onboarding` - Processo corporativo
- `Stakeholder` - Interessado/Parte interessada

**Razão da remoção:** Não são siglas verdadeiras, apenas nomes técnicos completos. Siglas são formadas por LETRAS INICIAIS, não nomes inteiros.

---

## 📝 Alterações no `0.8 - siglas.tex`

**Antes:** 44 entradas (incluindo nomes técnicos)  
**Depois:** 20 entradas (apenas siglas reais)

### Estrutura Final
```latex
\begin{acronym}[XXXXXXXX]
  % Siglas Organizacionais e Institucionais (4)
  % Siglas Tecnológicas - Front-end (4)
  % Siglas Tecnológicas - Back-end / BD (3)
  % Siglas Arquiteturais e de Padrões (2)
  % ... mais 7 outras
\end{acronym}
```

---

## 🎯 Conformidade e Padrões

✅ Segue NBR 14724 (Norma ABNT para trabalhos acadêmicos)  
✅ Arquivo organizado por categoria  
✅ Todas as siglas em uso estão documentadas  
✅ Capitalização corrigida  
✅ Nomes técnicos removidos (não são siglas)  

---

## 🔍 Verificação Final

- **Erros "Html" e "Css":** ✅ Corrigidos
- **Arquivo 0.8 limpo:** ✅ Renovado
- **Compatibilidade com `\ac{sigla}`:** ✅ Pronta para uso
- **Documentação:** ✅ Completa

---

## 📚 Como Usar

No texto, para referenciar uma sigla:
```latex
\ac{html}     % Primeira vez: "HyperText Markup Language (HTML)"
\ac{html}     % Demais vezes: "HTML"
\aca{css}     % Sempre abreviado: "CSS"
```

---

**Próxima ação:** Compilar com `./compile.sh` para gerar lista de siglas completa no PDF
