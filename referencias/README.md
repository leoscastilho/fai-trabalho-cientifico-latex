# Sistema de Referências e Citações - Template FAI

Este documento explica como utilizar o sistema de referências bibliográficas do template LaTeX da FAI, que segue rigorosamente as normas ABNT.

## 📚 Arquivo de Referências

### `referencias.bib`
Todas as referências bibliográficas devem ser cadastradas no arquivo `referencias.bib` usando o formato BibTeX. Este arquivo centraliza todas as fontes que podem ser citadas no documento.

### Estrutura Básica
```bibtex
@tipo{chave,
  campo1 = {valor1},
  campo2 = {valor2},
  ...
}
```

## 📖 Tipos de Referências Suportados

### 1. Livros (`@book`)
```bibtex
@book{santos2001,
  author    = {Antônio Raimundo dos Santos},
  title     = {Metodologia Científica},
  subtitle  = {a construção do conhecimento},
  edition   = {4},
  publisher = {DPA},
  address   = {Rio de Janeiro},
  year      = {2001},
  pages     = {139}
}
```

### 2. Artigos de Periódicos (`@article`)
```bibtex
@article{rubio1999psicologia,
  author    = {Rubio, Katia},
  title     = {A psicologia do esporte: histórico e áreas de atuação e pesquisa},
  journal   = {Psicologia: Ciência e Profissão},
  year      = {1999},
  volume    = {19},
  number    = {3},
  pages     = {60--69},
  doi       = {10.1590/S1414-98931999000300007},
  url       = {https://www.scielo.br/j/pcp/a/9Fd3JQFVmtmqsq5vKkMn5Jr/},
  language  = {pt}
}
```

### 3. Dissertações e Teses (`@mastersthesis`, `@phdthesis`)
```bibtex
@mastersthesis{lorena2013cluster,
  author = {Rosa Stela Ribeiro de Lorena},
  school = {Universidad de La Empresa},
  title = {O \textit{Cluster} como vantagem competitiva das empresas eletroeletrônicas de Santa Rita do Sapucaí - MG - Brasil},
  pages = {160},
  year = {2013},
  address = {Montevidéu - Uruguai},
  type = {Dissertação (Mestrado em Administração)}
}
```

### 4. Trabalhos de Conclusão de Curso (`@misc`)
```bibtex
@misc{araujo2019importancia,
  author       = {Araújo, Douglas Ramalho Formiga de},
  title        = {A importância da prática de esporte na infância e na adolescência},
  year         = {2019},
  type         = {Trabalho de Conclusão de Curso (Graduação em Educação Física)},
  institution  = {Centro Universitário de Brasília (UniCEUB)},
  address      = {Brasília},
  url          = {https://repositorio.uniceub.br/jspui/handle/prefix/13862},
  language     = {pt}
}
```

### 5. Capítulo/Artigo em Livro Organizado (`@incollection`)
Para partes de monografia (NBR 6023:2025, seção 7.3): artigo ou capítulo publicado em livro organizado por alguém (coletânea), sem periodicidade.
```bibtex
@incollection{romano1996imagens,
  author       = {Romano, Giovanni},
  title        = {Imagens da juventude na era moderna},
  editor       = {Levi, G. and Schmidt, J.},
  editortype   = {org},
  booktitle    = {História dos jovens 2},
  booksubtitle = {a época contemporânea},
  publisher    = {Companhia das Letras},
  address      = {São Paulo},
  year         = {1996},
  pages        = {7--16}
}
```
**Resultado**: ROMANO, Giovanni. Imagens da juventude na era moderna. In: LEVI, G.; SCHMIDT, J. (org.). **História dos jovens 2**: a época contemporânea. São Paulo: Companhia das Letras, 1996. p. 7-16.

Campos opcionais:
- `editortype = {org}` (padrão), `{ed}`, `{coord}`, `{comp}` — designação dos responsáveis pelo todo
- `bookauthor` — use no lugar de `editor` quando o livro tem autor próprio (ex.: capítulo de livro do mesmo autor); nesse caso a designação "(org.)" não é impressa
- `volume`, `chapter` — impressos como "v. 1, cap. 7" antes das páginas
- `edition`, `isbn`, `url`, `note` (para "Acesso em: ...")

### 6. Recursos Online (`@online`)
```bibtex
@online{pucrs_psicologia_esporte,
  author    = {{PUCRS}},
  title     = {Psicologia do esporte: o que é e como se preparar para atuar na área},
  year      = {2025},
  url       = {https://portal.pucrs.br/noticias/ensino/psicologia-do-esporte-o-que-e-e-como-se-preparar-para-atuar-na-area/},
  note      = {Acesso em: 9 maio 2025}
}
```

## 🔗 Comandos de Citação Disponíveis

O template oferece comandos específicos em português para diferentes tipos de citação:

### 1. `\citacaoindireta{chave}`
**Uso**: Citação indireta (paráfrase) entre parênteses
```latex
O esporte contribui para o desenvolvimento social \citacaoindireta{vianna2011inclusao}.
```
**Resultado**: O esporte contribui para o desenvolvimento social (VIANNA; LOVISOLO, 2011).

### 2. `\citacaoindiretanotexto{chave}`
**Uso**: Citação indireta integrada ao texto
```latex
Segundo \citacaoindiretanotexto{rubio1999psicologia}, a psicologia do esporte é uma área emergente.
```
**Resultado**: Segundo Rubio (1999), a psicologia do esporte é uma área emergente.

### 3. `\citacaodireta[página]{chave}`
**Uso**: Citação direta com indicação de página
```latex
"O exercício físico é fundamental para a saúde" \citacaodireta[87]{fims1997exercicio}.
```
**Resultado**: "O exercício físico é fundamental para a saúde" (FIMS, 1997, p. 87).

### 4. `\citacaodiretanotexto[página]{chave}`
**Uso**: Citação direta integrada ao texto
```latex
\citacaodiretanotexto[25]{santos2001} afirma que "a metodologia é essencial".
```
**Resultado**: Santos (2001, p. 25) afirma que "a metodologia é essencial".

### 5. `\citacaodiretagrifonosso[página]{chave}`
**Uso**: Citação direta com grifo nosso (destaque adicionado pelos autores)
```latex
"O \textbf{esporte} é fundamental" \citacaodiretagrifonosso[15]{vieira2010psicologia}.
```
**Resultado**: "O **esporte** é fundamental" (VIEIRA et al., 2010, p. 15, grifo nosso).

### 6. `\citacaodiretagrifodoautor[página]{chave}`
**Uso**: Citação direta com grifo do autor original
```latex
"O esporte é \underline{fundamental}" \citacaodiretagrifodoautor[20]{sancheserubio2011}.
```
**Resultado**: "O esporte é <ins>fundamental</ins>" (SANCHES; RUBIO, 2011, p. 20, grifo do autor).

### 7. `\citacaodecitacao{fonte_nao_consultada}{fonte_consultada}`
**Uso**: Citação de citação (apud)
```latex
\citacaodecitacao{autor1990}{autor2020} menciona a importância do tema.
```
**Resultado**: Autor (1990 apud AUTOR, 2020) menciona a importância do tema.

### 8. Ambiente `citacaodiretalonga`
**Uso**: Citações diretas longas (mais de 3 linhas)
```latex
\begin{citacaodiretalonga}
Esta é uma citação longa que deve ser formatada com recuo de 4cm da margem esquerda, fonte menor (10pt) e espaçamento simples, conforme as normas ABNT para citações longas. \citacaodireta[45]{autor2020}
\end{citacaodiretalonga}
```

## 📋 Formatação Automática das Referências

O sistema produz automaticamente:

### Na Lista de Referências:
- **Livros**: SANTOS, Antônio Raimundo dos. **Metodologia Científica**: a construção do conhecimento. 4. ed. Rio de Janeiro: DPA, 2001. 139 p.

- **Artigos**: RUBIO, Katia. **A psicologia do esporte: histórico e áreas de atuação e pesquisa**. **Psicologia: Ciência e Profissão**, v. 19, n. 3, p. 60-69, 1999.

- **Teses**: LORENA, Rosa Stela Ribeiro de. **O Cluster como vantagem competitiva das empresas eletroeletrônicas de Santa Rita do Sapucaí - MG - Brasil**. 2013. 160 p. Dissertação (Mestrado em Administração) – Universidad de La Empresa, Montevidéu – Uruguai, 2013.

### Características da Formatação:
- ✅ Sobrenomes em MAIÚSCULAS
- ✅ Títulos em negrito
- ✅ Ordenação alfabética automática
- ✅ Formatação ABNT completa
- ✅ Separação de autores com ponto e vírgula
- ✅ Recuo francês (hanging indent)

## 🔧 Dicas de Uso

### Múltiplos Autores
Separe os autores pela palavra "and"
```bibtex
author = {Primeiro Autor and Segundo Autor and Terceiro Autor}
```

### Autor Institucional
Quando o autor é uma instituição (ABNT, FAI, ...)
```bibtex
author = {{Nome da Instituição}}
```

### Subtítulos
Separe Títulos de Subtítulos
```bibtex
title = {Título Principal},
subtitle = {Subtítulo da Obra}
```

### URLs e Datas de Acesso
```bibtex
url = {https://exemplo.com},
note = {Acesso em: 15 jan. 2025}
```

## ⚠️ Observações Importantes

1. **Chaves Únicas**: Cada referência deve ter uma chave única (ex: `santos2001`, `rubio1999psicologia`)

2. **Compilação**: O sistema usa BibTeX/Biber, requerendo múltiplas compilações:
   - 1ª: LaTeX (gera .aux)
   - 2ª: Biber (processa bibliografia)
   - 3ª: LaTeX (inclui referências)
   - 4ª: LaTeX (ajusta referências cruzadas)

3. **Caracteres Especiais**: Use `\textit{}` para itálico, `\textbf{}` para negrito

4. **Páginas**: Use `--` para intervalos (ex: `pages = {10--25}`)

## 🎯 Resultado Final

O sistema gera automaticamente:
- Lista de referências formatada segundo ABNT
- Citações no texto com formatação correta
- Numeração e ordenação automáticas
- Links entre citações e referências (se usando hyperref)

Para mais exemplos, consulte o arquivo `referencias.bib` incluído no template.
