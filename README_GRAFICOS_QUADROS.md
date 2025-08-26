# Documentação: GRÁFICOS e QUADROS

## Visão Geral

Este projeto agora suporta três tipos de elementos visuais:
- **FIGURAS** - Para imagens e ilustrações gerais
- **GRÁFICOS** - Para gráficos, charts e visualizações de dados
- **QUADROS** - Para tabelas e quadros informativos

Cada tipo gera sua própria lista automaticamente quando há elementos do respectivo tipo no documento.

## Como Usar

### GRÁFICOS

```latex
\begin{grafico}[h!]
  \centering
  \includegraphics[width=0.8\textwidth]{caminho/para/grafico.png}
  \caption{Título do gráfico}
  \vspace{0em}
  \begin{minipage}{\textwidth}
    FONTE: Sua fonte aqui
  \end{minipage}
  \label{graf:SeuLabel}
\end{grafico}
```

### QUADROS

```latex
\begin{quadro}[h!]
  \centering
  \includegraphics[width=0.8\textwidth]{caminho/para/quadro.png}
  \caption{Título do quadro}
  \vspace{0em}
  \begin{minipage}{\textwidth}
    FONTE: Sua fonte aqui
  \end{minipage}
  \label{quad:SeuLabel}
\end{quadro}
```

### FIGURAS (já existente)

```latex
\begin{figure}[h!]
  \centering
  \includegraphics[width=1\textwidth]{caminho/para/figura.png}
  \caption{Título da figura}
  \vspace{0em}
  \begin{minipage}{\textwidth}
    FONTE: Sua fonte aqui
  \end{minipage}
  \label{fig:SeuLabel}
\end{figure}
```

## Referenciando no Texto

- Para figuras: `\ref{fig:SeuLabel}`
- Para gráficos: `\ref{graf:SeuLabel}`
- Para quadros: `\ref{quad:SeuLabel}`

## Listas Geradas Automaticamente

O documento gerará automaticamente:
- **LISTA DE ILUSTRAÇÕES** - quando há figuras
- **LISTA DE GRÁFICOS** - quando há gráficos
- **LISTA DE QUADROS** - quando há quadros

As listas só aparecem se houver pelo menos um elemento do respectivo tipo no documento.

## Estrutura dos Arquivos Modificados

### preamble.tex
- Adicionados pacotes `newfloat` e `totcount`
- Definidos novos tipos de float: `grafico` e `quadro`
- Configurada formatação das listas

### definitions.tex
- Adicionados comandos `\ListaDeGraficos` e `\ListaDeQuadros`
- Configurada lógica condicional para exibir listas

### main.tex
- Adicionadas chamadas para as novas listas na seção pré-textual
- Incluídos exemplos de uso dos novos ambientes

## Convenções de Nomenclatura

- **Labels**: Use prefixos consistentes
  - `fig:` para figuras
  - `graf:` para gráficos  
  - `quad:` para quadros

- **Arquivos**: Organize em pastas
  - `figuras/` para figuras
  - `graficos/` para gráficos (sugestão)
  - `quadros/` para quadros

## Exemplo Completo

Veja os exemplos incluídos no `main.tex` após a Figura da estrutura de trabalhos acadêmicos para referência de implementação.
