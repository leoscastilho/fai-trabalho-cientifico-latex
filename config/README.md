# Compilação do Documento

Este diretório contém as ferramentas e configurações para compilar o documento LaTeX seguindo as diretrizes da FAI.

## ⚠️ Importante
**Sempre execute os comandos de compilação a partir desta pasta (`config/`)**

```bash
cd config/
```

## Opções de Compilação

### 1. Script Automatizado (Recomendado)
```bash
./build.sh
```

### 2. Usando Make
```bash
make
```

### 3. Usando Latexmk
```bash
latexmk -pdf
```

### 4. Compilação Manual
```bash
pdflatex ../main.tex
bibtex ../main
pdflatex ../main.tex
pdflatex ../main.tex
```

## Limpeza de Arquivos Temporários

### Usando Make
```bash
make clean
```

### Usando Latexmk
```bash
latexmk -c
```

## Arquivos de Configuração

- **`Makefile`** - Configurações para compilação com Make
- **`.latexmkrc`** - Configurações para Latexmk
- **`build.sh`** - Script automatizado de compilação

## Saída

O arquivo PDF final será gerado na pasta raiz do projeto como `main.pdf`.
