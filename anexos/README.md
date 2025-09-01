# Sistema de Anexos Automático

Este diretório contém o sistema de anexos automatizado para o template LaTeX da FAI.

## Como Funciona

O sistema usa um arquivo de configuração (`anexos.tex`) que lista todos os anexos a serem incluídos no documento.

## Como Criar um Novo Anexo

### Passo 1: Criar o Arquivo do Anexo
1. Crie um novo arquivo `.tex` nesta pasta (`anexos/`)
2. Use um nome descritivo (ex: `tabela_dados_estatisticos.tex`)

### Passo 2: Estrutura do Arquivo
Cada arquivo de anexo deve conter apenas o conteúdo, **sem** o título principal. O título é gerado automaticamente pelo sistema.

**Exemplo de arquivo de anexo:**

```latex
% ANEXO - TÍTULO DO ANEXO
% Descrição: [Adicione uma breve descrição do conteúdo deste anexo]

Este é o conteúdo do anexo...

\subsection{Subseção do Anexo}

Conteúdo da subseção...

\subsubsection{Subsubseção}

Mais conteúdo...
```

### Passo 3: Registrar no Arquivo de Configuração
Adicione uma linha no arquivo `anexos.tex`:

```latex
\anexo{nome_do_arquivo}{TÍTULO DO ANEXO}{anexo:label_personalizado}
```

**Exemplo:**
```latex
\anexo{tabela_dados_estatisticos}{TABELA DE DADOS ESTATÍSTICOS}{anexo:tabela_dados_estatisticos}
```

### Passo 4: Referenciar no Texto Principal
Para referenciar o anexo no texto principal, use:

```latex
Como pode ser visto no Anexo \ref{anexo:tabela_dados_estatisticos}...
```

## Arquivo de Configuração Atual

O arquivo `anexos.tex` contém a lista de todos os anexos configurados:

```latex
\anexo{modelo_tabela_estatistica}{COMPILAÇÃO DE ORIENTAÇÕES PARA PREPARAÇÃO DE REFERÊNCIAS}{anexo:modelo_tabela_estatistica}
\anexo{modelo_tabela_estatistica copy}{COMPILAÇÃO DE ORIENTAÇÕES PARA PREPARAÇÃO DE REFERÊNCIAS2}{anexo:modelo_tabela_estatistica_copy}
```

## Anexos Disponíveis

Este diretório atualmente contém os seguintes anexos:

1. **modelo_tabela_estatistica.tex** - Compilação de orientações para preparação de referências
2. **modelo_tabela_estatistica copy.tex** - Compilação de orientações para preparação de referências (cópia)

## Gerenciamento de Anexos

### Reordenando Anexos
Para alterar a ordem dos anexos, simplesmente reordene as linhas no arquivo `anexos.tex`.

### Removendo Anexos
Para remover um anexo:

1. **Método 1**: Delete o arquivo `.tex` correspondente (o sistema irá ignorá-lo automaticamente)
2. **Método 2**: Comente ou remova a linha correspondente em `anexos.tex`
3. **Método 3**: Delete tanto o arquivo quanto a linha de configuração

### Características do Sistema

- ✅ **Configuração Centralizada**: Todos os anexos listados em um só arquivo
- ✅ **Numeração Automática**: Os anexos são numerados automaticamente como A, B, C, etc.
- ✅ **Sumário**: Os anexos aparecem automaticamente no sumário
- ✅ **Múltiplas Páginas**: Cada anexo pode ter várias páginas
- ✅ **Título Único**: Apenas a primeira página de cada anexo tem o título principal
- ✅ **Referências Personalizadas**: Cada anexo pode ter seu próprio label personalizado
- ✅ **Verificação de Arquivos**: O sistema verifica se os arquivos existem antes de incluí-los

## Estrutura de Arquivos

```
anexos/
├── README.md                           # Este arquivo de instruções
├── anexos.tex                          # Configuração dos anexos
├── modelo_tabela_estatistica.tex       # Compilação de orientações para referências
├── modelo_tabela_estatistica copy.tex  # Compilação de orientações para referências (cópia)
└── [seus_anexos].tex                   # Seus anexos personalizados
```

## Diferença entre Apêndices e Anexos

- **Apêndices**: Documentos elaborados pelo próprio autor (questionários, roteiros de entrevista, códigos desenvolvidos, etc.)
- **Anexos**: Documentos não elaborados pelo autor (leis, regulamentos, tabelas estatísticas oficiais, etc.)

## Dicas

- Use nomes de arquivo descritivos (ex: `lei_diretrizes_bases_educacao.tex`)
- Mantenha um anexo por arquivo para melhor organização
- Use comentários no início de cada arquivo para documentar o conteúdo
- Teste sempre após adicionar novos anexos compilando o documento
- Para projetos grandes, considere usar subpastas dentro de `anexos/`
- Certifique-se de que tem permissão para incluir documentos de terceiros como anexos
