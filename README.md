# Importar atualizações da formatação:
Quando houver alterações na formatação no repositório original, basta rodar o comando abaixo:
```bash
git subtree pull --prefix=src/formatting original main --squash
```

# Template LaTeX - Diretrizes de Elaboração de Trabalho Científico da FAI

Este é um template LaTeX completo para elaboração de trabalhos científicos seguindo as diretrizes da Faculdade de Americana (FAI). O sistema é automatizado e permite a criação de monografias, relatórios de estágio e trabalhos acadêmicos de forma padronizada.

📖 **[Diretrizes Oficiais da FAI](pdf/Diretrizes%20para%20elaboração%20de%20trabalhos%20científicos%20-%20Padrão%20ABNT%20e%20adaptação%20às%20normas%20institucionais%20da%20FAI%208a%20Edição.pdf)** - Documento oficial que serve como base para este template.

## Como Usar

### ⚠️ Arquivo Principal - NÃO MODIFICAR
O arquivo [`main.tex`](main.tex) **NÃO deve ser modificado**. Ele contém toda a estrutura automatizada do documento e segue rigorosamente as diretrizes da FAI. Toda a personalização deve ser feita nos arquivos específicos descritos abaixo.

### Configuração Inicial
1. **Configure os metadados**: Edite o arquivo [`metadados.tex`](metadados.tex) com as informações do seu trabalho (título, autor, orientador, etc.)
2. **Edite o conteúdo**: Modifique os arquivos de conteúdo conforme necessário

## Estrutura do Documento

Os arquivos seguem a ordem exata de aparição no documento final:

### Elementos Pré-Textuais
- **[`metadados.tex`](metadados.tex)** - Informações básicas do trabalho (título, autor, orientador, instituição, etc.)
- **[`dedicatoria.tex`](dedicatoria.tex)** - Dedicatória do trabalho (opcional, apenas para monografias)
- **[`agradecimentos.tex`](agradecimentos.tex)** - Agradecimentos (opcional, conforme tipo de documento)
- **[`epigrafe.tex`](epigrafe.tex)** - Epígrafe com citação inspiradora (opcional, apenas para monografias)
- **[`resumo.tex`](resumo.tex)** - Resumo em português com palavras-chave (obrigatório para monografias)
- **[`abreviaturas.tex`](abreviaturas.tex)** - Lista de abreviaturas e siglas (aparece automaticamente se houver mais de 9 itens)

### Elementos Textuais
- **[`introducao.tex`](introducao.tex)** - Introdução do trabalho
- **[`desenvolvimento.tex`](desenvolvimento.tex)** - Desenvolvimento/corpo do trabalho (capítulos principais)
- **[`conclusao.tex`](conclusao.tex)** - Conclusão do trabalho

### Elementos Pós-Textuais
- **[`glossario.tex`](glossario.tex)** - Glossário de termos técnicos (opcional, apenas para monografias)

## Apêndices e Anexos

### Apêndices
Documentos elaborados pelo próprio autor (questionários, roteiros, códigos desenvolvidos, etc.).

📁 **[Pasta apendices/](apendices/)** - [Ver instruções completas](apendices/README.md)

### Anexos
Documentos não elaborados pelo autor (leis, regulamentos, tabelas oficiais, etc.).

📁 **[Pasta anexos/](anexos/)** - [Ver instruções completas](anexos/README.md)

## Referências

Sistema de gerenciamento de referências bibliográficas seguindo as normas ABNT.

📁 **[Pasta referencias/](referencias/)** - [Ver instruções completas](referencias/README.md)

## Ilustrações

O sistema suporta diferentes tipos de ilustrações organizadas em pastas específicas:

### 📁 [`ilustracoes/`](ilustracoes/)

#### Subpastas:
- **[`figuras/`](ilustracoes/figuras/)** - Diagramas, esquemas, desenhos técnicos
- **[`fotografias/`](ilustracoes/fotografias/)** - Fotografias e imagens
- **[`graficos/`](ilustracoes/graficos/)** - Gráficos e charts
- **[`quadros/`](ilustracoes/quadros/)** - Quadros e tabelas complexas

#### Como Usar Ilustrações:

**Para Figuras:**
```latex
\begin{figure}[htbp]
    \centering
    \includegraphics[width=0.8\textwidth]{ilustracoes/figuras/nome_da_figura.png}
    \caption{Título da figura}
    \fonte{Autor da figura ou fonte consultada}
    \label{fig:nome_da_figura}
\end{figure}
```

**Para Fotografias:**
```latex
\begin{fotografia}[htbp]
    \centering
    \includegraphics[width=0.6\textwidth]{ilustracoes/fotografias/nome_da_foto.jpg}
    \caption{Título da fotografia}
    \fonte{Autor da fotografia ou fonte consultada}
    \label{foto:nome_da_foto}
\end{fotografia}
```

**Para Gráficos:**
```latex
\begin{grafico}[htbp]
    \centering
    \includegraphics[width=0.7\textwidth]{ilustracoes/graficos/nome_do_grafico.png}
    \caption{Título do gráfico}
    \fonte{Autor do gráfico ou fonte consultada}
    \label{graf:nome_do_grafico}
\end{grafico}
```

**Para Quadros:**
```latex
\begin{quadro}[htbp]
    \centering
    \includegraphics[width=0.9\textwidth]{ilustracoes/quadros/nome_do_quadro.png}
    \caption{Título do quadro}
    \fonte{Autor do quadro ou fonte consultada}
    \label{quad:nome_do_quadro}
\end{quadro}
```

## Características do Sistema

- ✅ **Conformidade com as Diretrizes da FAI**: Formatação automática seguindo todas as normas
- ✅ **Múltiplos Tipos de Documento**: Monografia, Relatório de Estágio, Trabalhos Acadêmicos
- ✅ **Listas Automáticas**: Figuras, fotografias, gráficos, quadros, tabelas, abreviaturas
- ✅ **Numeração Automática**: Páginas, seções, ilustrações e referências
- ✅ **Sumário Automático**: Gerado automaticamente com links clicáveis
- ✅ **Sistema de Referências**: Integração com BibTeX
- ✅ **Apêndices e Anexos Automatizados**: Sistema de configuração simples

## Estrutura de Pastas

```
├── main.tex                    # Arquivo principal (NÃO MODIFICAR)
├── metadados.tex              # Configurações do trabalho
├── dedicatoria.tex            # Dedicatória
├── agradecimentos.tex         # Agradecimentos
├── epigrafe.tex              # Epígrafe
├── resumo.tex                # Resumo e palavras-chave
├── abreviaturas.tex          # Lista de abreviaturas
├── introducao.tex            # Introdução
├── desenvolvimento.tex       # Desenvolvimento
├── conclusao.tex             # Conclusão
├── glossario.tex             # Glossário
├── apendices/                # Apêndices (documentos do autor)
│   ├── README.md             # Instruções dos apêndices
│   └── apendices.tex         # Configuração dos apêndices
├── anexos/                   # Anexos (documentos de terceiros)
│   ├── README.md             # Instruções dos anexos
│   └── anexos.tex            # Configuração dos anexos
├── ilustracoes/              # Todas as ilustrações
│   ├── figuras/              # Diagramas e esquemas
│   ├── fotografias/          # Fotografias
│   ├── graficos/             # Gráficos
│   └── quadros/              # Quadros
├── referencias/              # Arquivos de bibliografia
├── src/                      # Arquivos de configuração do sistema
├── config/                   # Configurações adicionais
└── build/                    # Arquivos temporários de compilação
```

## Dicas Importantes

- **Sempre compile o documento após fazer alterações** para verificar se está tudo correto
- **Use nomes descritivos** para arquivos de ilustrações e referências
- **Mantenha backup** dos seus arquivos regularmente
- **Teste a compilação** antes de entregar o trabalho final
- **Consulte as diretrizes da FAI** em caso de dúvidas específicas sobre formatação

## Suporte

Para dúvidas sobre o uso deste template:
1. Consulte os arquivos README.md específicos de cada seção
2. Verifique se está seguindo a estrutura de arquivos correta
3. Certifique-se de que não modificou o arquivo `main.tex`
4. Teste a compilação em um ambiente LaTeX atualizado

---

**Desenvolvido para atender às Diretrizes de Elaboração de Trabalho Científico da FAI**
