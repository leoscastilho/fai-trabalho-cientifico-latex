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
├── build/                    # Arquivos gerados (PDF, auxiliares)
├── .vscode/                  # Configurações do VS Code
│   └── settings.json         # Configurações do LaTeX Workshop
├── main.tex                  # Arquivo principal do documento
├── metadata.tex              # Metadados (título, autor, etc.)
└── Makefile                  # Wrapper para facilitar o build
```

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
latexmk -xelatex -synctex=1 -interaction=nonstopmode -file-line-error -outdir=build main.tex

# Ou usando a configuração personalizada
latexmk -r config/.latexmkrc -xelatex -outdir=build main.tex
```

#### Opção 4: Usando VS Code
1. Abra o projeto no VS Code
2. Use `Ctrl+Alt+B` (ou `Cmd+Alt+B` no Mac) para compilar
3. O PDF será gerado automaticamente na pasta `build/`

### Personalização do Documento

#### 1. Metadados
Edite o arquivo `metadata.tex` para definir:
- Título do trabalho
- Nome do autor
- Instituição
- Data
- Outras informações específicas

#### 2. Resumo e Palavras-chave
No arquivo `main.tex`, edite as seções:
```latex
\newcommand{\theabstract}{
    Seu resumo aqui...
}

\newcommand{\thekeywords}{
    Palavra1. Palavra2. Palavra3.
}
```

#### 3. Conteúdo Principal
Adicione seu conteúdo no arquivo `main.tex` ou crie arquivos separados e inclua-os usando `\input{arquivo.tex}`.

#### 4. Bibliografia
Adicione suas referências no arquivo `bib/references.bib` no formato BibTeX.

#### 5. Figuras e Quadros
- Coloque imagens na pasta `figuras/`
- Coloque quadros e tabelas na pasta `quadros/`

## 🔧 Configurações Avançadas

### Configuração do VS Code
O arquivo `.vscode/settings.json` está configurado para:
- Usar XeLaTeX como compilador padrão
- Direcionar todos os arquivos gerados para a pasta `build/`
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

Todos os arquivos gerados durante a compilação são organizados na pasta `build/`:
- `main.pdf` - Documento final
- `main.aux`, `main.log`, etc. - Arquivos auxiliares do LaTeX
- `main.synctex.gz` - Arquivo de sincronização para editores
- `main.bbl` - Bibliografia processada

## 🎨 Características do Template

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
1. Verifique o arquivo `build/main.log` para erros
2. Certifique-se de que o XeLaTeX está instalado
3. Tente compilar usando `make xelatex` para mais controle

### Problemas com Bibliografia
1. Verifique se o Biber está instalado
2. Confirme que as referências estão no formato BibTeX correto
3. Use `biber build/main` manualmente se necessário

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
