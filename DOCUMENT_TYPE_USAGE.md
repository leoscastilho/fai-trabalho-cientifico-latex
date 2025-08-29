# Sistema de Tipos de Documento

## Como Usar

### 1. Definir o Tipo de Documento

No arquivo `metadata.tex`, defina o tipo do seu documento:

```latex
\newcommand{\thedocumenttype}{Monografia} % Altere aqui
```

### 2. Opções Disponíveis

- `Monografia` - Inclui: Epígrafe, Agradecimentos, Folha de Aprovação
- `Projeto de Pesquisa` - Não inclui nenhuma das seções opcionais
- `Relatório de Estágio` - Inclui: Epígrafe, Agradecimentos
- `Trabalhos acadêmicos` - Não inclui nenhuma das seções opcionais

### 3. Uso no Documento Principal (artigo.tex)

A lógica condicional está no próprio `artigo.tex`. Exemplo:

```latex
% Folha de Aprovação - apenas para Monografia
\begin{FolhaDeAprovacao}
\ifMonografia{
    % Conteúdo da Folha de Aprovação aqui
}
\end{FolhaDeAprovacao}

% Agradecimentos - para Monografia e Relatório de Estágio
\ifMonografia{
\begin{Agradecimentos}
    Seus agradecimentos aqui...
\end{Agradecimentos}
}

\ifRelatorio{
\begin{Agradecimentos}
    Seus agradecimentos aqui...
\end{Agradecimentos}
}

% Epígrafe - para Monografia e Relatório de Estágio
\ifMonografia{
\begin{Epigrafe}
    "Sua citação aqui" (AUTOR, ANO).
\end{Epigrafe}
}

\ifRelatorio{
\begin{Epigrafe}
    "Sua citação aqui" (AUTOR, ANO).
\end{Epigrafe}
}
```

### 4. Comandos Condicionais Disponíveis

- `\ifMonografia{conteúdo}` - Mostra conteúdo apenas para Monografia
- `\ifProjeto{conteúdo}` - Mostra conteúdo apenas para Projeto de Pesquisa
- `\ifRelatorio{conteúdo}` - Mostra conteúdo apenas para Relatório de Estágio
- `\ifTrabalhos{conteúdo}` - Mostra conteúdo apenas para Trabalhos acadêmicos

### 5. Seções Condicionais Implementadas

#### Epígrafe
- ✅ Monografia
- ❌ Projeto de Pesquisa  
- ✅ Relatório de Estágio
- ❌ Trabalhos acadêmicos

#### Agradecimentos
- ✅ Monografia
- ❌ Projeto de Pesquisa
- ✅ Relatório de Estágio
- ❌ Trabalhos acadêmicos

#### Folha de Aprovação
- ✅ Monografia
- ❌ Projeto de Pesquisa
- ❌ Relatório de Estágio
- ❌ Trabalhos acadêmicos

### 6. Vantagens desta Abordagem

- **Controle Visual**: Você vê exatamente onde cada seção aparece no código
- **Flexibilidade**: Pode facilmente adicionar condições específicas para cada seção
- **Simplicidade**: Lógica clara e direta no documento principal
- **Manutenção**: Fácil de modificar sem mexer nos arquivos de definição
