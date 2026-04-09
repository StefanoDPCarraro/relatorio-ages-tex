# Playbook de Iteracao do Memorial AGES

Objetivo: manter consistencia metodologica inspirada em memoriais fortes sem perder a autenticidade de um relatorio pessoal.

## Principio Editorial

- Este e um relatorio pessoal: priorizar fatos vividos, decisoes reais, dificuldades reais e aprendizados reais.
- Nao inventar resultado, metrica, tecnologia adotada, maturidade ou impacto.
- Quando houver incerteza, usar linguagem contextual (ex.: "naquele momento", "com o conhecimento disponivel").

## Checklist por Secao

### 1. Abertura de AGES (index + estrutura)

- Confirmar as quatro secoes: introducao, desenvolvimento, atividades, conclusao.
- Confirmar os arquivos de sprint (0 a 4) e os `\input` corretos.
- Garantir coerencia com o escopo do semestre (nao antecipar responsabilidades de niveis superiores).

### 2. Introducao (contexto do projeto)

- Identificar stakeholder/cliente e problema principal.
- Explicitar o objetivo da iteracao do produto naquele semestre.
- Delimitar papel pessoal no time sem inflar atribuicoes.

### 3. Desenvolvimento (base tecnica)

- Documentar stack usada de fato e justificativas de escolha.
- Descrever arquitetura e dados com foco em decisoes e trade-offs.
- Relacionar figuras/diagramas com decisoes tecnicas concretas.
- Evitar listar tecnologia sem explicar impacto no projeto.

### 4. Atividades/Sprints (trilha factual)

- Descrever por sprint: objetivo, desafio, acao, resultado e aprendizado.
- Citar impedimentos reais (tecnicos/processuais/comunicacao) com contexto.
- Conectar evolucao da sprint com backlog/entrega seguinte.

### 5. Conclusao (reflexao)

- Registrar evolucao pessoal (tecnica e comportamental) baseada em eventos do capitulo.
- Explicitar pelo menos um erro ou limite enfrentado e o que mudou depois.
- Evitar conclusoes genericas sem evidencia do proprio texto.

## Checklist de Autenticidade

- Toda afirmacao forte tem evidencia local (sprint, artefato, decisao, incidente).
- Sem "hero narrative": reconhecer colaboracao do time e orientacoes recebidas.
- Sem anacronismo: o tom de AGES I deve refletir inicio de jornada; AGES IV, consolidacao.
- Nao usar numeros/percentuais sem fonte ou justificativa clara no contexto.

## Checklist Tecnico Transversal

- Siglas: toda nova `\ac{chave}` deve existir em `conteudo/0 - pre/0.8 - siglas.tex`.
- Links: usar `\urlref{...}` para URLs no texto corrido.
- Figuras: labels unicos, captions descritivas, sem duplicidade.
- Revisao de compilacao:
  - Mudanca textual: `./compile-fast.sh`
  - Mudanca estrutural/referencias/bib: `./compile.sh`

## Gate de Revisao por Iteracao

- Revisao de Conteudo: coerencia narrativa e aderencia a realidade.
- Revisao Tecnica: termos, arquitetura, dados, siglas e consistencia entre secoes.
- Revisao Formal: fluxo de texto, figuras, links e compilacao.

Uma secao so e considerada pronta quando passa nos tres gates.
