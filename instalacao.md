# Guia de Instalação - Template LaTeX FAI

Este guia fornece instruções passo a passo para instalar todas as dependências necessárias para compilar este projeto LaTeX em diferentes sistemas operacionais.

## O Que Você Precisa

Este projeto requer:
- Uma distribuição LaTeX completa (TeX Live ou MiKTeX)
- Motor XeLaTeX (incluído nas distribuições)
- Biber (processador de bibliografia)
- latexmk (automação de compilação)
- Shell Bash (para scripts de compilação)

---

## macOS

### Opção 1: Instalação Completa (Recomendado)

**Instalar MacTeX (Distribuição TeX Live completa - ~4.5 GB)**

```bash
brew install --cask mactex
```

Após a conclusão da instalação, reinicie seu terminal ou execute:
```bash
eval "$(/usr/libexec/path_helper)"
```

### Opção 2: Instalação Mínima

**Instalar BasicTeX (Distribuição menor - ~100 MB)**

```bash
brew install --cask basictex
```

Reinicie o terminal e então instale os pacotes necessários:
```bash
sudo tlmgr update --self
sudo tlmgr install latexmk biber
sudo tlmgr install babel-portuges hyphen-portuguese
sudo tlmgr install times geometry graphicx titlesec fancyhdr setspace
sudo tlmgr install csquotes ragged2e lipsum enumitem appendix
sudo tlmgr install pgf tabularx calc textcase footmisc etoolbox
sudo tlmgr install biblatex biblatex-abnt
```

### Verificar Instalação

```bash
xelatex --version
biber --version
latexmk --version
```

### Compilar o Projeto

```bash
cd /caminho/para/faitec2025
chmod +x config/build.sh
./config/build.sh pdf
```

O PDF compilado estará em `pdf/artigo.pdf`.

---

## Linux

### Ubuntu / Debian

**Instalar Distribuição TeX Live Completa**

```bash
sudo apt-get update
sudo apt-get install texlive-full texlive-xetex texlive-lang-portuguese biber latexmk
```

Isso instala tudo que é necessário (~5 GB). Para uma instalação mínima:

```bash
sudo apt-get update
sudo apt-get install texlive-latex-base texlive-latex-recommended texlive-latex-extra
sudo apt-get install texlive-xetex texlive-lang-portuguese biber latexmk
sudo apt-get install texlive-fonts-recommended texlive-fonts-extra
```

### Fedora / RHEL / CentOS

**Instalar Distribuição TeX Live Completa**

```bash
sudo dnf install texlive-scheme-full
```

Ou para instalação mínima:

```bash
sudo dnf install texlive-scheme-basic texlive-xetex texlive-collection-langportuguese
sudo dnf install texlive-latexmk biber
sudo dnf install texlive-babel-portuges texlive-hyphen-portuguese
sudo dnf install texlive-geometry texlive-graphics texlive-titlesec
sudo dnf install texlive-fancyhdr texlive-setspace texlive-csquotes
sudo dnf install texlive-enumitem texlive-appendix texlive-pgf
```

### Arch Linux

```bash
sudo pacman -S texlive-most texlive-langextra biber
```

### Verificar Instalação

```bash
xelatex --version
biber --version
latexmk --version
```

### Compilar o Projeto

```bash
cd /caminho/para/faitec2025
chmod +x config/build.sh
./config/build.sh pdf
```

O PDF compilado estará em `pdf/artigo.pdf`.

---

## Windows

### Opção 1: MiKTeX (Recomendado para Windows)

1. **Baixar o Instalador do MiKTeX**
   - Visite: https://miktex.org/download
   - Baixe o instalador para Windows

2. **Instalar o MiKTeX**
   - Execute o instalador
   - Escolha "Install for all users" ou "Install for current user"
   - Selecione "Always install missing packages on-the-fly" durante a configuração
   - Complete a instalação

3. **Instalar o Git Bash** (para scripts de compilação)
   - Baixe de: https://git-scm.com/download/win
   - Instale com as opções padrão

4. **Atualizar o MiKTeX**
   - Abra "MiKTeX Console" no Menu Iniciar
   - Clique em "Check for updates"
   - Instale todas as atualizações disponíveis

5. **Instalar o Biber** (se não estiver incluído)
   - Abra o MiKTeX Console
   - Vá para a aba "Packages"
   - Procure por "biber" e instale

### Opção 2: TeX Live no Windows

1. **Baixar o Instalador do TeX Live**
   - Visite: https://tug.org/texlive/acquire-netinstall.html
   - Baixe `install-tl-windows.exe`

2. **Instalar o TeX Live**
   - Execute o instalador como Administrador
   - Escolha "Full installation" (recomendado)
   - A instalação leva 1-2 horas e requer ~7 GB

3. **Instalar o Git Bash**
   - Baixe de: https://git-scm.com/download/win
   - Instale com as opções padrão

### Verificar Instalação

Abra o Git Bash ou Prompt de Comando e execute:
```bash
xelatex --version
biber --version
latexmk --version
```

### Compilar o Projeto

**Usando Git Bash:**
```bash
cd /c/caminho/para/faitec2025
./config/build.sh pdf
```

**Usando Prompt de Comando ou PowerShell:**
```cmd
cd C:\caminho\para\faitec2025
latexmk -r config/.latexmkrc -xelatex main.tex
```

O PDF compilado estará em `pdf\artigo.pdf`.

---

## Alternativa: Usando Docker (Todas as Plataformas)

Se você preferir não instalar o LaTeX localmente, use Docker:

### Pré-requisitos
- Instale o Docker Desktop: https://www.docker.com/products/docker-desktop

### Compilar com Docker

```bash
cd /caminho/para/faitec2025

# Baixar imagem LaTeX
docker pull texlive/texlive:latest

# Compilar o documento
docker run --rm -v "$(pwd):/workspace" -w /workspace texlive/texlive:latest \
  latexmk -r config/.latexmkrc -xelatex main.tex
```

O PDF compilado estará em `pdf/artigo.pdf`.

---

## Solução de Problemas

### Erro de Pacotes Faltando

Se você receber erros sobre pacotes faltando:

**TeX Live (macOS/Linux):**
```bash
sudo tlmgr install <nome-do-pacote>
```

**MiKTeX (Windows):**
- Abra o MiKTeX Console
- Vá para a aba Packages
- Procure e instale o pacote faltando

### Permissão Negada no build.sh

```bash
chmod +x config/build.sh
```

### XeLaTeX Não Encontrado

Certifique-se de que o diretório bin do LaTeX está no seu PATH:

**macOS:**
```bash
export PATH="/Library/TeX/texbin:$PATH"
```

**Linux:**
```bash
export PATH="/usr/local/texlive/2024/bin/x86_64-linux:$PATH"
```

**Windows:**
- Adicione `C:\Program Files\MiKTeX\miktex\bin\x64` ao PATH do Sistema

### Incompatibilidade de Versão do Biber

Atualize tanto o biblatex quanto o biber:

**TeX Live:**
```bash
sudo tlmgr update --self --all
```

**MiKTeX:**
- Abra o MiKTeX Console → Updates → Update all

---

## Teste Rápido

Após a instalação, teste com:

```bash
cd /caminho/para/faitec2025
./config/build.sh pdf
```

Se bem-sucedido, você verá o arquivo `pdf/artigo.pdf` criado.

---

## Recursos Adicionais

- **Documentação TeX Live**: https://tug.org/texlive/
- **Documentação MiKTeX**: https://docs.miktex.org/
- **Projeto LaTeX**: https://www.latex-project.org/
- **Diretrizes da FAI**: Veja `pdf/Diretrizes para elaboração de trabalhos científicos...pdf`
