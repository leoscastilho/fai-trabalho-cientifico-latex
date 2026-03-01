#!/bin/bash

# Configuração
TEMPLATE_REPO="https://github.com/leoscastilho/fai-trabalho-cientifico-latex"

# Verifica se o nome do projeto foi fornecido
if [ -z "$1" ]; then
    echo "Uso: $0 <nome_do_projeto>"
    exit 1
fi

PROJECT_NAME=$1
# Define o caminho do projeto um nível acima (na pasta pai)
PROJECT_DIR="../$PROJECT_NAME"

echo "🚀 Criando novo projeto em: $PROJECT_DIR"

# 1. Cria e entra no diretório do projeto (um nível acima)
if [ -d "$PROJECT_DIR" ]; then
    echo "❌ Erro: A pasta '$PROJECT_DIR' já existe."
    exit 1
fi

mkdir -p "$PROJECT_DIR"
cd "$PROJECT_DIR" || exit

# 2. Inicializa o Git
git init

# 3. Adiciona o template como submódulo
echo "📦 Adicionando o template como submódulo..."
git submodule add "$TEMPLATE_REPO" template

# 4. Cria links simbólicos (Symlinks) para a lógica central
echo "🔗 Criando links simbólicos para a lógica de formatação..."
ln -s template/src src
ln -s template/config config
ln -s template/main.tex main.tex

# 5. Copia o conteúdo inicial editável (Copiando de dentro do submódulo template/)
echo "📄 Copiando arquivos de conteúdo (metadados, capítulos, etc.)..."
find template -maxdepth 1 -name "*.tex" ! -name "main.tex" -exec cp {} . \;

# 6. Copia diretórios de conteúdo editáveis
echo "📁 Copiando diretórios de conteúdo (referencias, ilustracoes, etc.)..."
cp -r template/anexos .
cp -r template/apendices .
cp -r template/referencias .
cp -r template/ilustracoes .

# 7. Cria o .gitignore
cat <<EOF > .gitignore
build/
*.aux
*.log
*.out
*.toc
*.pdf
*.synctex.gz
*.bbl
*.blg
*.run.xml
*.bcf
.DS_Store
EOF

echo "✅ Sucesso! O projeto '$PROJECT_NAME' foi criado em: $(pwd)"
echo ""
echo "Início Rápido:"
echo "  1. cd $PROJECT_DIR"
echo "  2. Edite 'metadados.tex' com suas informações."
echo "  3. Escreva seu conteúdo em 'introducao.tex', 'desenvolvimento.tex', etc."
echo "  4. Compile o arquivo 'main.tex'."
echo ""
echo "Para sincronizar atualizações de formatação futuramente, execute:"
echo "  git submodule update --remote --merge"
