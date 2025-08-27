# Diretrizes para Elaboração de Trabalho Científico da FAI

Este projeto contém o template LaTeX para elaboração de trabalhos científicos seguindo as diretrizes da FAI (Centro de Ensino Superior em Gestão, Tecnologia e Educação), baseado nas normas ABNT.

## 📋 Sobre o Projeto

Esta é a oitava edição do manual "Diretrizes para elaboração de trabalhos científicos: padrão ABNT e adaptação às normas institucionais da FAI". O template foi desenvolvido para facilitar a produção acadêmica da instituição, seguindo rigorosamente as normas da Associação Brasileira de Normas Técnicas (ABNT).

## 🏗️ Estrutura do Projeto

```
├── config/                    # Arquivos de configuração
│   ├── Makefile              # Configuração principal de build
│   ├── .latexmkrc            # Configurações do LaTeX
│   └── build.sh              # Script alternativo de build
├── src/                      # Arquivos fonte LaTeX
│   ├── preamble.tex          # Configurações de formato e estilo
│   └── definitions.tex       # Formatação das páginas
├── bib/                      # Bibliografia
│   └── references.bib        # Arquivo de referências bibliográficas
├── figuras/                  # Imagens e figuras
├── quadros/                  # Quadros e tabelas
├── build/                    # Arquivos auxiliares de compilação
├── pdf/                      # Arquivo PDF final gerado
├── .vscode/                  # Configurações do VS Code
│   └── settings.json         # Configurações do LaTeX Workshop
├── artigo.tex                # Arquivo principal do documento
├── metadata.tex              # Metadados (título, autor, etc.)
└── Makefile                  # Wrapper para facilitar o build
```

## 🗂️ Sistema de Apêndices Automático

O template agora inclui um **sistema automatizado de apêndices** que facilita a adição e gerenciamento de apêndices no seu documento **sem precisar modificar arquivos de código**.

### Características do Sistema

- ✅ **Configuração Centralizada**: Todos os apêndices listados em um arquivo de configuração
- ✅ **Numeração Automática**: Apêndices são numerados automaticamente como A, B, C, etc.
- ✅ **Inclusão no Sumário**: Aparecem automaticamente no sumário
- ✅ **Referências**: Podem ser referenciados no texto principal
- ✅ **Múltiplas Páginas**: Cada apêndice pode ter várias páginas
- ✅ **Gerenciamento Simples**: Scripts para adicionar e remover apêndices
- ✅ **Sem Modificação de Código**: Não precisa editar `src/definitions.tex`

### Como Usar

#### Adicionar Apêndices
```bash
# Adicionar um novo apêndice
./add_appendix.sh nome_do_arquivo "TÍTULO DO APÊNDICE"

# Exemplo
./add_appendix.sh questionario_satisfacao "QUESTIONÁRIO DE SATISFAÇÃO"
```

#### Remover Apêndices
```bash
# Remover um apêndice
./remove_appendix.sh nome_do_arquivo

# Exemplo
./remove_appendix.sh questionario_satisfacao
```

#### Método Manual
1. Crie um arquivo `.tex` na pasta `apendices/`
2. Adicione uma linha em `apendices/apendices.tex`:
   ```latex
   \appendixentry{nome_do_arquivo}{TÍTULO DO APÊNDICE}
   ```

### Estrutura dos Apêndices

```
apendices/
├── README.md                    # Documentação do sistema
├── apendices.tex            # Configuração dos apêndices
├── exemplo_apendice_a.tex       # Exemplo básico
├── questionario_pesquisa.tex    # Exemplo de questionário
├── codigo_fonte.tex             # Exemplo de código
└── [seus_apendices].tex         # Seus apêndices personalizados
```

### Referenciando Apêndices

No texto principal, use:
```latex
Como pode ser visto no Apêndice \ref{apendice:A}...
```

### Reordenando Apêndices

Para alterar a ordem, simplesmente reordene as linhas no arquivo `apendices/apendices.tex`.

### Exemplos Incluídos

O sistema já vem com exemplos funcionais:
- **Apêndice A**: Exemplo básico de estrutura
- **Apêndice B**: Questionário de pesquisa
- **Apêndice C**: Código fonte de sistema

Para mais detalhes, consulte `apendices/README.md`.

## 🚀 Como Usar

### Pré-requisitos

- **LaTeX**: XeLaTeX (recomendado) ou outro compilador LaTeX
- **Biber**: Para processamento de bibliografia
- **Make**: Para usar os comandos de build (opcional)
- **VS Code** com extensão **LaTeX Workshop** (opcional, mas recomendado)

### Compilação

#### Opção 1: Usando Make (Recomendado)
```bash
# Compilar o documento
make pdf

# Limpar arquivos temporários
make clean

# Limpar e recompilar
make rebuild

# Abrir o PDF gerado
make open

# Ver conteúdo da pasta build
make show

# Ver ajuda
make help
```

#### Opção 2: Usando o Script de Build
```bash
# Compilar o documento
./config/build.sh pdf

# Limpar arquivos temporários
./config/build.sh clean

# Abrir o PDF gerado
./config/build.sh open

# Ver ajuda
./config/build.sh help
```

#### Opção 3: Usando LaTeX diretamente
```bash
# Compilar com XeLaTeX
latexmk -xelatex -synctex=1 -interaction=nonstopmode -file-line-error -outdir=build artigo.tex

# Ou usando a configuração personalizada
latexmk -r config/.latexmkrc -xelatex -outdir=build artigo.tex
```

#### Opção 4: Usando VS Code
1. Abra o projeto no VS Code
2. Use `Ctrl+Alt+B` (ou `Cmd+Alt+B` no Mac) para compilar
3. O PDF será gerado automaticamente na pasta `pdf/`

### Personalização do Documento

#### 1. Metadados
Edite o arquivo `metadata.tex` para definir:
- Título do trabalho
- Nome do autor
- Instituição
- Data
- Outras informações específicas

#### 2. Resumo e Palavras-chave
No arquivo `artigo.tex`, edite as seções:
```latex
\newcommand{\theabstract}{
    Seu resumo aqui...
}

\newcommand{\thekeywords}{
    Palavra1. Palavra2. Palavra3.
}
```

#### 3. Conteúdo Principal
Adicione seu conteúdo no arquivo `artigo.tex` ou crie arquivos separados e inclua-os usando `\input{arquivo.tex}`.

#### 4. Bibliografia
Adicione suas referências no arquivo `bib/references.bib` no formato BibTeX.

#### 5. Figuras e Quadros
- Coloque imagens na pasta `figuras/`
- Coloque quadros e tabelas na pasta `quadros/`

## 🔧 Configurações Avançadas

### Configuração do VS Code
O arquivo `.vscode/settings.json` está configurado para:
- Usar XeLaTeX como compilador padrão
- Direcionar arquivos auxiliares para a pasta `build/`
- Copiar o PDF final para a pasta `pdf/`
- Limpeza automática de arquivos auxiliares
- Visualização do PDF integrada

### Configuração do LaTeX
O arquivo `config/.latexmkrc` define:
- XeLaTeX como engine padrão
- Biber para processamento de bibliografia
- Diretório de saída como `build/`
- Limpeza automática de arquivos temporários

### Makefile
O sistema de build oferece:
- Compilação automatizada
- Gerenciamento de dependências
- Limpeza de arquivos temporários
- Abertura automática do PDF

## 📁 Arquivos Gerados

O sistema de build organiza os arquivos da seguinte forma:

### Pasta `pdf/`
- `artigo.pdf` - **Documento final** (único arquivo nesta pasta)

### Pasta `build/`
- `artigo.aux`, `artigo.log`, etc. - Arquivos auxiliares do LaTeX
- `artigo.synctex.gz` - Arquivo de sincronização para editores
- `artigo.bbl` - Bibliografia processada
- Outros arquivos temporários de compilação

Esta separação mantém a pasta `pdf/` limpa com apenas o arquivo final, enquanto todos os arquivos auxiliares ficam organizados na pasta `build/`.

## 🎨 Sistema de Ilustrações

O template agora suporta **quatro tipos distintos** de ilustrações, cada um com sua própria lista condicional:

### Tipos Disponíveis

| Tipo | Ambiente | Comando Contador | Uso Recomendado |
|------|----------|------------------|-----------------|
| **FIGURAS** | `figura` | `\addfigura` | Diagramas, esquemas, desenhos técnicos |
| **FOTOGRAFIAS** | `fotografia` | `\addfotografia` | Imagens fotográficas reais |
| **GRÁFICOS** | `grafico` | `\addgrafico` | Gráficos de barras, linhas, pizza |
| **QUADROS** | `quadro` | `\addquadro` | Tabelas com informações qualitativas |

### Exemplo de Uso

```latex
\begin{figura}[h!]
  \centering
  \addfigura % OBRIGATÓRIO para gerar a lista
  \includegraphics[width=0.8\textwidth]{figuras/diagrama.png}
  \caption{Diagrama de arquitetura do sistema}
  \vspace{0em}
  \begin{minipage}{\textwidth}
    FONTE: O autor
  \end{minipage}
  \label{fig:arquitetura}
\end{figura}
```

### Listas Automáticas

As listas são geradas **automaticamente** apenas se houver pelo menos um elemento de cada tipo:
- Lista de Figuras
- Lista de Fotografias  
- Lista de Gráficos
- Lista de Quadros

### Arquivos de Exemplo

- `exemplos_ilustracoes.tex` - Exemplos completos de uso
- `teste_ilustracoes.tex` - Documento de teste funcional
- `ILUSTRACOES_README.md` - Documentação detalhada

### Características do Template

### Formatação ABNT
- Margens conforme ABNT NBR 14724
- Fonte Times New Roman, tamanho 12pt
- Espaçamento 1,5 entre linhas
- Numeração de páginas adequada
- Formatação de títulos e seções

### Elementos Pré-configurados
- Capa e folha de rosto
- Resumo e abstract
- Sumário automático
- Lista de figuras
- Lista de quadros/tabelas
- Bibliografia formatada
- Citações no padrão ABNT

### Pacotes Incluídos
- `babel` - Suporte ao português brasileiro
- `biblatex` - Gerenciamento de bibliografia
- `geometry` - Configuração de margens
- `graphicx` - Inclusão de imagens
- `titlesec` - Formatação de títulos
- `fancyhdr` - Cabeçalhos e rodapés
- `setspace` - Controle de espaçamento
- E muitos outros...

## 🐛 Solução de Problemas

### Erro de Compilação
1. Verifique se todos os pacotes LaTeX estão instalados
2. Certifique-se de que o arquivo `bib/references.bib` existe
3. Use `make clean` e tente compilar novamente

### PDF não é gerado
1. Verifique o arquivo `build/artigo.log` para erros
2. Certifique-se de que o XeLaTeX está instalado
3. Tente compilar usando `make xelatex` para mais controle

### Problemas com Bibliografia
1. Verifique se o Biber está instalado
2. Confirme que as referências estão no formato BibTeX correto
3. Use `biber build/artigo` manualmente se necessário

### VS Code não compila automaticamente
1. Instale a extensão LaTeX Workshop
2. Recarregue a janela do VS Code
3. Verifique se as configurações em `.vscode/settings.json` estão corretas

## 📚 Recursos Adicionais

- [Documentação ABNT](https://www.abnt.org.br/)
- [Manual LaTeX](https://www.latex-project.org/help/documentation/)
- [BibTeX Guide](http://www.bibtex.org/)
- [LaTeX Workshop Extension](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)

## 🤝 Contribuição

Este template foi desenvolvido com base nas diretrizes da FAI e nas normas ABNT. Para sugestões de melhorias ou correções, entre em contato com a biblioteca da FAI.

## 📄 Licença

Este material é disponibilizado pela FAI - Centro de Ensino Superior em Gestão, Tecnologia e Educação para uso acadêmico de seus alunos, professores e funcionários.

---

**FAI - Centro de Ensino Superior em Gestão, Tecnologia e Educação**  
*Biblioteca - Normalização de Trabalhos Acadêmicos*
