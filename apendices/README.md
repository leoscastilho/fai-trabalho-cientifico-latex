# Sistema de Apêndices Automático

Este diretório contém o sistema de apêndices automatizado para o template LaTeX da FAI.

## Como Funciona

O sistema usa um arquivo de configuração (`apendices.tex`) que lista todos os apêndices a serem incluídos no documento.

## Como Criar um Novo Apêndice

### Passo 1: Criar o Arquivo do Apêndice
1. Crie um novo arquivo `.tex` nesta pasta (`apendices/`)
2. Use um nome descritivo (ex: `questionario_satisfacao.tex`)

### Passo 2: Estrutura do Arquivo
Cada arquivo de apêndice deve conter apenas o conteúdo, **sem** o título principal. O título é gerado automaticamente pelo sistema.

**Exemplo de arquivo de apêndice:**

```latex
% APÊNDICE - TÍTULO DO APÊNDICE
% Descrição: [Adicione uma breve descrição do conteúdo deste apêndice]

Este é o conteúdo do apêndice...

\subsection{Subseção do Apêndice}

Conteúdo da subseção...

\subsubsection{Subsubseção}

Mais conteúdo...
```

### Passo 3: Registrar no Arquivo de Configuração
Adicione uma linha no arquivo `apendices.tex`:

```latex
\apendice{nome_do_arquivo}{TÍTULO DO APÊNDICE}{apendice:label_personalizado}
```

**Exemplo:**
```latex
\apendice{questionario_satisfacao}{QUESTIONÁRIO DE SATISFAÇÃO}{apendice:questionario_satisfacao}
```

### Passo 4: Referenciar no Texto Principal
Para referenciar o apêndice no texto principal, use:

```latex
Como pode ser visto no Apêndice \ref{apendice:questionario_satisfacao}...
```

## Arquivo de Configuração Atual

O arquivo `apendices.tex` contém a lista de todos os apêndices configurados:

```latex
\apendice{modelo_capa_falsa_folha_rosto}{MODELO DE CAPA OU FALSA FOLHA DE ROSTO}{apendice:modelo_capa_falsa_folha_rosto}
\apendice{questionario_pesquisa}{QUESTIONÁRIO DA PESQUISA}{apendice:questionario_pesquisa}
\apendice{codigo_fonte}{CÓDIGO FONTE DO SISTEMA}{apendice:codigo_fonte}
\apendice{teste_appendice}{OUTRO QUESTIONÁRIO}{apendice:teste_appendice}
```

## Apêndices Disponíveis

Este diretório atualmente contém os seguintes apêndices:

1. **modelo_capa_falsa_folha_rosto.tex** - Modelo de capa ou falsa folha de rosto
2. **questionario_pesquisa.tex** - Exemplo de questionário de pesquisa
3. **codigo_fonte.tex** - Exemplo de código fonte
4. **teste_appendice.tex** - Exemplo de outro questionário

## Gerenciamento de Apêndices

### Reordenando Apêndices
Para alterar a ordem dos apêndices, simplesmente reordene as linhas no arquivo `apendices.tex`.

### Removendo Apêndices
Para remover um apêndice:

1. **Método 1**: Delete o arquivo `.tex` correspondente (o sistema irá ignorá-lo automaticamente)
2. **Método 2**: Comente ou remova a linha correspondente em `apendices.tex`
3. **Método 3**: Delete tanto o arquivo quanto a linha de configuração

### Características do Sistema

- ✅ **Configuração Centralizada**: Todos os apêndices listados em um só arquivo
- ✅ **Numeração Automática**: Os apêndices são numerados automaticamente como A, B, C, etc.
- ✅ **Sumário**: Os apêndices aparecem automaticamente no sumário
- ✅ **Múltiplas Páginas**: Cada apêndice pode ter várias páginas
- ✅ **Título Único**: Apenas a primeira página de cada apêndice tem o título principal
- ✅ **Referências Personalizadas**: Cada apêndice pode ter seu próprio label personalizado
- ✅ **Verificação de Arquivos**: O sistema verifica se os arquivos existem antes de incluí-los

## Estrutura de Arquivos

```
apendices/
├── README.md                           # Este arquivo de instruções
├── apendices.tex                       # Configuração dos apêndices
├── modelo_capa_falsa_folha_rosto.tex   # Modelo de capa ou falsa folha de rosto
├── questionario_pesquisa.tex           # Exemplo de questionário
├── codigo_fonte.tex                    # Exemplo de código fonte
├── teste_appendice.tex                 # Exemplo de outro questionário
└── [seus_apendices].tex                # Seus apêndices personalizados
```

## Dicas

- Use nomes de arquivo descritivos (ex: `questionario_satisfacao.tex`)
- Mantenha um apêndice por arquivo para melhor organização
- Use comentários no início de cada arquivo para documentar o conteúdo
- Teste sempre após adicionar novos apêndices compilando o documento
- Para projetos grandes, considere usar subpastas dentro de `apendices/`
