# Sistema de Anexos Automático

Este diretório contém o sistema de anexos automatizado para o template LaTeX da FAI.

## Como Funciona

O sistema usa um arquivo de configuração (`anexos.tex`) que lista todos os anexos a serem incluídos.

## Como Usar

### 1. Adicionando Novos Anexos

**Método Manual:**
1. Crie um arquivo `.tex` nesta pasta (`anexos/`)
2. Adicione uma linha em `anexos.tex`:
   ```latex
   \anexo{nome_do_arquivo}{TÍTULO DO APÊNDICE}
   ```

### 2. Estrutura dos Arquivos de Apêndice

Cada arquivo de anexo deve conter apenas o conteúdo, **sem** o título principal. O título é gerado automaticamente pelo sistema.

**Exemplo de arquivo de apêndice:**

```latex
% ANEXO - TÍTULO DO ANEXO
% Descrição: [Adicione uma breve descrição do conteúdo deste apanexoêndice]

Este é o conteúdo do anexo...

\subsection{Subseção do Apêndice}

Conteúdo da subseção...

\subsubsection{Subsubseção}

Mais conteúdo...
```

### 3. Arquivo de Configuração

O arquivo `anexos.tex` contém a lista de todos os anexos:

```latex
\anexo{exemplo_anexo_a}{EXEMPLO DE PRIMEIRO ANEXO}
% Adicione novos anexos aqui:
% \anexo{nome_do_arquivo}{TÍTULO DO ANEXO}
```

### 4. Referenciando Anexos no Texto

Para referenciar um anexo no texto principal, use:

```latex
Como pode ser visto no Anexo \ref{anexo:A}...
```

Os labels são gerados automaticamente como `anexo:A`, `anexo:B`, etc.

### 5. Características do Sistema

- ✅ **Configuração Centralizada**: Todos os anexos listados em um só arquivo
- ✅ **Numeração Automática**: Os anexos são numerados automaticamente como A, B, C, etc.
- ✅ **Sumário**: Os anexos aparecem automaticamente no sumário
- ✅ **Múltiplas Páginas**: Cada anexo pode ter várias páginas
- ✅ **Título Único**: Apenas a primeira página de cada anexo tem o título principal
- ✅ **Referências**: Cada anexo pode ser referenciado no texto principal
- ✅ **Verificação de Arquivos**: O sistema verifica se os arquivos existem antes de incluí-los

### 6. Reordenando Anexos

Para alterar a ordem dos anexos, simplesmente reordene as linhas no arquivo `anexos.tex`.

### 7. Removendo Anexos

Para remover um apêndice:

1. **Método 1**: Delete o arquivo `.tex` correspondente (o sistema irá ignorá-lo automaticamente)
2. **Método 2**: Comente ou remova a linha correspondente em `anexos.tex`
3. **Método 3**: Delete tanto o arquivo quanto a linha de configuração

### 8. Exemplos Incluídos

Este diretório já contém quatro exemplos:

1. **exemplo_anexo_a.tex** - Exemplo básico de apêndice
2. **questionario_pesquisa.tex** - Exemplo de questionário
3. **codigo_fonte.tex** - Exemplo de código fonte
4. **teste_script.tex** - Exemplo criado pelo script

## Estrutura de Arquivos

```
anexos/
├── README.md                    # Este arquivo
├── anexos.tex                   # Configuração dos anexos
└── [seus_anexos].tex         # Seus anexos personalizados
```

## Dicas

- Use nomes de arquivo descritivos (ex: `questionario_satisfacao.tex`)
- Mantenha um anexo por arquivo para melhor organização
- Use comentários no início de cada arquivo para documentar o conteúdo
- Teste sempre após adicionar novos anexos compilando o documento
- Para projetos grandes, considere usar subpastas dentro de `anexos/`
