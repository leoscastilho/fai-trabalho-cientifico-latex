# Gerenciando Múltiplos Projetos com o Template FAI

Este documento explica como usar este repositório como um "template base" para todos os seus trabalhos acadêmicos, garantindo que a formatação esteja sempre sincronizada entre todos eles.

## Estratégia de Gerenciamento

Usamos **Git Submodules** e **Links Simbólicos (Symlinks)** para separar a **Lógica de Formatação** (que deve ser igual em todos os projetos) do **Conteúdo** (que muda em cada curso).

### Como funciona:
- **`template/`**: Uma pasta dentro do seu projeto que contém o código original deste repositório.
- **Links Simbólicos (`src`, `config`, `main.tex`)**: Apontam para dentro da pasta `template`. Se você atualizar o template original, esses arquivos no seu projeto são atualizados instantaneamente.
- **Arquivos de Conteúdo (`metadados.tex`, capítulos, etc.)**: São copiados apenas uma vez na criação do projeto. Você pode editá-los livremente sem afetar outros projetos.

---

## 1. Criando um Novo Projeto

Para criar um novo trabalho acadêmico usando esta estrutura, use o script automatizado:

1.  Abra o terminal na pasta deste template.
2.  Execute o script passando o nome da pasta do novo projeto:
    ```bash
    ./new_project.sh Meu_Novo_Trabalho
    ```
3.  Uma nova pasta chamada `Meu_Novo_Trabalho` será criada com tudo configurado.

---

## 2. Sincronizando Atualizações de Formatação

Se você fizer uma melhoria na formatação (por exemplo, corrigir uma margem ou atualizar uma norma da FAI) no repositório principal, você pode propagar essa mudança para todos os seus projetos existentes:

1.  Entre na pasta do seu projeto (ex: `Meu_Novo_Trabalho`).
2.  Execute o comando:
    ```bash
    git submodule update --remote --merge
    ```
Isso baixará a versão mais recente da pasta `src/` e `config/` do repositório original.

---

## 3. Vantagens desta Abordagem

- **Consistência**: Todos os seus trabalhos seguirão exatamente a mesma norma.
- **Facilidade**: Correções no template são aplicadas a todos os projetos com um único comando.
- **Organização**: Seus arquivos de texto ficam limpos na raiz do projeto, enquanto a "bagunça" do código LaTeX fica escondida na pasta `template/`.

## 4. Requisitos por Sistema Operacional

### Linux e macOS
O script funciona nativamente. Certifique-se apenas de que ele possui permissão de execução:
```bash
chmod +x new_project.sh
```

### Windows
O script **requer o Git Bash** (instalado junto com o Git para Windows). Para que a sincronização (links simbólicos) funcione corretamente:
1.  **Ative o Modo de Desenvolvedor**: Vá em Configurações > Privacidade e Segurança > Para incorporadores > **Modo de Desenvolvedor** (Ative).
2.  **Use o Git Bash**: Clique com o botão direito na pasta do template e selecione "Git Bash Here".
3.  Execute o script normalmente: `./new_project.sh Meu_Projeto`.

*Nota: Se o Modo de Desenvolvedor não estiver ativo, você precisará abrir o Git Bash como Administrador.*

---

## 5. Compartilhando com Colegas

Se você quiser compartilhar este sistema com outras pessoas, elas também podem manter os projetos delas sincronizados com as suas atualizações de formatação:

### Para quem quer apenas usar (Sem acesso de escrita):
Qualquer pessoa pode clonar este repositório e usar o script `./new_project.sh`. Como o script aponta para a URL pública do GitHub, o comando de sincronização funcionará para elas normalmente:

1.  **O colega clona o seu template**:
    ```bash
    git clone https://github.com/leoscastilho/fai-trabalho-cientifico-latex.git
    ```
2.  **Cria o projeto dele**:
    ```bash
    cd fai-trabalho-cientifico-latex
    ./new_project.sh Trabalho_Do_Amigo
    ```
3.  **Sincronização**: Sempre que você (Leo) atualizar a formatação no GitHub, seu colega só precisa rodar o `git submodule update --remote --merge` dentro do projeto dele para receber as melhorias.

### Se o colega quiser sugerir melhorias:
Caso algum colega queira corrigir algo na formatação, ele pode fazer um **Fork** do seu projeto no GitHub e enviar um **Pull Request**. Se você aceitar, a melhoria será propagada para todos que usam o sistema!
