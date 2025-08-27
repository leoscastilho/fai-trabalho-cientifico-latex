# Sistema de Apêndices Automático

Este diretório contém o sistema de apêndices automatizado para o template LaTeX da FAI.

## Como Funciona

O sistema usa um arquivo de configuração (`apendices.tex`) que lista todos os apêndices a serem incluídos. Você não precisa mais modificar o arquivo `src/definitions.tex` manualmente!

## Como Usar

### 1. Adicionando Novos Apêndices

**Método Manual:**
1. Crie um arquivo `.tex` nesta pasta (`apendices/`)
2. Adicione uma linha em `apendices.tex`:
   ```latex
   \appendixentry{nome_do_arquivo}{TÍTULO DO APÊNDICE}
   ```

### 2. Estrutura dos Arquivos de Apêndice

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

### 3. Arquivo de Configuração

O arquivo `apendices.tex` contém a lista de todos os apêndices:

```latex
\appendixentry{exemplo_apendice_a}{EXEMPLO DE PRIMEIRO APÊNDICE}
% Adicione novos apêndices aqui:
% \appendixentry{nome_do_arquivo}{TÍTULO DO APÊNDICE}
```

### 4. Referenciando Apêndices no Texto

Para referenciar um apêndice no texto principal, use:

```latex
Como pode ser visto no Apêndice \ref{apendice:A}...
```

Os labels são gerados automaticamente como `apendice:A`, `apendice:B`, etc.

### 5. Características do Sistema

- ✅ **Configuração Centralizada**: Todos os apêndices listados em um só arquivo
- ✅ **Numeração Automática**: Os apêndices são numerados automaticamente como A, B, C, etc.
- ✅ **Sumário**: Os apêndices aparecem automaticamente no sumário
- ✅ **Múltiplas Páginas**: Cada apêndice pode ter várias páginas
- ✅ **Título Único**: Apenas a primeira página de cada apêndice tem o título principal
- ✅ **Referências**: Cada apêndice pode ser referenciado no texto principal
- ✅ **Verificação de Arquivos**: O sistema verifica se os arquivos existem antes de incluí-los

### 6. Reordenando Apêndices

Para alterar a ordem dos apêndices, simplesmente reordene as linhas no arquivo `apendices.tex`.

### 7. Removendo Apêndices

Para remover um apêndice:

1. **Método 1**: Delete o arquivo `.tex` correspondente (o sistema irá ignorá-lo automaticamente)
2. **Método 2**: Comente ou remova a linha correspondente em `apendices.tex`
3. **Método 3**: Delete tanto o arquivo quanto a linha de configuração

### 8. Exemplos Incluídos

Este diretório já contém quatro exemplos:

1. **exemplo_apendice_a.tex** - Exemplo básico de apêndice
2. **questionario_pesquisa.tex** - Exemplo de questionário
3. **codigo_fonte.tex** - Exemplo de código fonte
4. **teste_script.tex** - Exemplo criado pelo script

## Estrutura de Arquivos

```
apendices/
├── README.md                    # Este arquivo
├── apendices.tex            # Configuração dos apêndices
├── exemplo_apendice_a.tex       # Exemplo básico
├── questionario_pesquisa.tex    # Exemplo de questionário
├── codigo_fonte.tex             # Exemplo de código
├── teste_script.tex             # Exemplo do script
└── [seus_apendices].tex         # Seus apêndices personalizados
```

## Vantagens do Novo Sistema

- **Sem modificação de código**: Não precisa mais editar `src/definitions.tex`
- **Configuração simples**: Apenas uma linha por apêndice
- **Flexibilidade**: Fácil reordenação e remoção
- **Manutenção**: Sistema mais limpo e organizad
- **Automação**: Script para adicionar novos apêndices automaticamente

## Dicas

- Use nomes de arquivo descritivos (ex: `questionario_satisfacao.tex`)
- Mantenha um apêndice por arquivo para melhor organização
- Use comentários no início de cada arquivo para documentar o conteúdo
- Teste sempre após adicionar novos apêndices compilando o documento
- Para projetos grandes, considere usar subpastas dentro de `apendices/`
