# 📊 Dashboard - Olist Store

> Dashbord destinado a análise de dados das operações da empresa Olist Store, o projeto contém análises no setor comercial e logístico, com objetivo de relevar insights estratégicos para o negócio"

[![Dashboard Interativo](https://img.shields.io/badge/Ver%20Dashboard-Power%20BI-yellowgreen?style=for-the-badge&logo=power-bi&logoColor=white)](https://app.powerbi.com/view?r=eyJrIjoiNzNjNjc4NjktYzY2YS00ZDIzLTlkMzgtYWVhYzFlZjMzMDZhIiwidCI6IjY1OWNlMmI4LTA3MTQtNDE5OC04YzM4LWRjOWI2MGFhYmI1NyJ9)

---

## 📝 Índice

* [Objetivo do Projeto](#🎯-objetivo-do-projeto)
* [Principais Dashboards e Análises](#✨-principais-dashboards-e-análises)
* [Tecnologias Utilizadas](#🛠️-tecnologias-utilizadas)
* [Arquitetura da Solução](#🏗️-arquitetura-da-solução)
* [Fonte de Dados](#📊-fonte-de-dados)
* [Principais Métricas e Cálculos](#🧮-principais-métricas-e-cálculos)
* [Como Usar](#🚀-como-usar)
* [Como Contribuir](#🤝-como-contribuir)
* [Autores](#📫-autores)
* [Licença](#📄-licença)

---

## 🎯 Objetivo do Projeto
O objetivo principal desta análise é consolidar os indicadores-chave de performance (KPIs) de vendas em um único local, permitindo um acompanhamento estratégico do negócio. O dashboard foi construído para responder a perguntas como:
* Qual o **faturamento, quantidade de apólices e ticket médio**, e como eles se comparam com o período anterior?
* Quais são as **categorias de clientes** com maior contribuição para o resultado?
* Quais são os maiores ofensores no **churn** que influenciam ou impactam nos resultados

[Ver Apresentação Corporativa](./Apresentacao_Executiva.pdf)

[Ver Análise Exploratória](./SQL_Seguradora.docx)

## 🛠️ Tecnologias Utilizadas

Liste todas as ferramentas, linguagens e plataformas que você usou no projeto.

* **BI Tool:** Power BI
* **Banco de Dados:** SQLite
* **ETL:** SQLite, Power Query
* **Linguagens:** SQL (PL-SQL), DAX, Mashup Language (Power Query)
* **Controle de Versão:** Git & GitHub

## 🏗️ Arquitetura da Solução

`Banco de dados Local SQLite -> Criação de Views (Tabelas desnormalizadas-> ETL no Power Query -> Modelo de Dados (Power BI) -> Dashboards (Power BI Service)`

## 📊 Fonte de Dados

Detalhe de onde os dados foram extraídos. Se for um projeto público, forneça links para os datasets.

* **Banco de Dados:** Conexão com o banco de dados `farma_xperiun` no SQLITE. **[Faça o download do banco de dados aqui](https://drive.google.com/file/d/1FdNaIpMlbW8DIyOyy3dAcYCNi6CszufX/view?usp=sharing)**.
* **Views:** Criadas no Banco de dados para serem consumidas pelo Modelo Semântico. ([código-fonte das queries aqui](./Queries))
[Documentação do Banco de dados](./documentacao_farma_xperiun.docx)

## 🧮 Principais Métricas e Cálculos (DAX)

Abaixo estão detalhadas as principais medidas criadas no Power BI para suportar as análises dos dashboards.

| Medida                     | Descricao                                                         | Pasta            |
|--------------------------|------------------------------------------------------------------|------------------|
| Receita esperada         | target a ser alcançado na venda                                  | 1 - Principais   |
| Receita Realizada        | Valor bruto vendido                                              | 1 - Principais   |
| Comisão Base             | Valor total de comissao dos vendedores                           | 2 - Auxiliar     |
| Evasão de Receita        | delta entre a receita prevista e realizada                       | 1 - Principais   |
| % Evasão de Receita      | % de receita nao realizada vs receita total realizada            | 1 - Principais   |
| Churn Qtd                | Quantidade de apolices canceladas em um determinado periodo      | 1 - Principais   |
| Margem Liquida           | receita descontando a comissao do vendedor                       | 1 - Principais   |
| Ticket Medio             | Valor médio de faturamento por venda realizada                   | 1 - Principais   |
| Qtdes Apolices           | Quantidade de apolices realizada                                 | 1 - Principais   |
| imagem Var Receita Total | ilustrativo da receita total                                     | 2 - Auxiliar     |
| Receita LY              | Receita realizada no mesmo periodo do ano anterior               | 3 - Temporais    |
| YOY Receita %            | % de variação de receita % vs ano anterior                       | 3 - Temporais    |
| Nº Apolices LY           | Número de apolices no mesmo periodo do ano anterior              | 3 - Temporais    |
| YOY N APOLICES %         | % de variação de numero de apolices vs ano anterior              | 3 - Temporais    |
| imagem Var N. Apolices   | imagem para demonstrar apolices                                  | 2 - Auxiliar     |
| TM LY                    | Ticket Médio no mesmo periodo do ano anterior                    | 3 - Temporais    |
| YOY TM %                 | % de variação de ticket médio % vs ano anterior                  | 3 - Temporais    |
| Receita esperada LY      | Receita esperada no mesmo periodo do ano anterior                | 3 - Temporais    |
| YOY Rec. Esperado %      | % de variação de receita esperada vs ano anterior                | 3 - Temporais    |
| Evasão Receita LY        | evasão de receita no mesmo periodo do ano anterior               | 3 - Temporais    |
| YOY Evasão Receita %     | % de variação de evasão de receita vs ano anterior               | 3 - Temporais    |
| imagem Var Ticket Medio  | ilustrativo do ticket medio                                     | 2 - Auxiliar     |
| imagem Var Rec. Esperada | imagem de ilustração da receita esperada                         | 2 - Auxiliar     |
| imagem Var Evasão Receita| icone para representar evasão de receita                         | 2 - Auxiliar     |

[Para mais informações sobre os cálculos detalhados, consulte o arquivo .pbip](<04 -Seguradora Xperiun.pbip>)

## 🚀 Como Usar

1.  **Pré-requisitos:**
    * **Power BI Desktop:** Ferramenta de desenvolvimento dos dashboards. ([Download na Microsoft Store](https://aka.ms/pbiSingleInstaller))
    * **DB Browser for SQLite:** Ferramenta recomendada para visualizar e gerenciar o banco de dados SQLite. ([Download aqui](https://sqlitebrowser.org/dl/))
    * **Driver ODBC para SQLite:** Necessário para o Power BI se conectar ao banco de dados. Instale a versão correspondente à sua arquitetura (provavelmente 64-bit). ([Download aqui](http://www.ch-werner.de/sqliteodbc/))

2.  **Configuração:**

    * **Passo 1: Clonar o Repositório**
        Clone este repositório para a sua máquina local usando o comando:
        ```bash
        git clone https://github.com/johnata122/seguradora_xperiun
        ```

    * **Passo 2: Baixar o Banco de Dados**
        Faça o download do banco de dados `seguradora_xperiun.db` através **[deste link](https://drive.google.com/file/d/1FdNaIpMlbW8DIyOyy3dAcYCNi6CszufX/view?usp=sharing)** e salve-o em uma pasta de fácil acesso no seu computador (por exemplo: `C:\Projetos\BI`).

    * **Passo 3: Configurar a Conexão no Power BI**
        1.  Abra a pasta do projeto clonado e dê um duplo clique no arquivo `.pbip` para abrir o projeto no Power BI Desktop.
        2.  No Power BI, vá para a guia **Página Inicial** e clique em **Transformar dados**.
        3.  Na janela do Power Query que se abrir, no painel esquerdo, localize e selecione o parâmetro chamado **`Pasta`**.
        4.  No campo **Pasta**, cole o caminho completo de onde você salvou o arquivo `farma_xperiun.db`. Por exemplo: `C:\Projetos\BI\farma_xperiun.db`.
        5.  Clique em **Fechar e Aplicar** no canto superior esquerdo.

Pronto! O relatório será atualizado automaticamente, conectando-se ao arquivo local do banco de dados.

3.  **Visualização:**
    * O relatório pode ser explorado diretamente no Power BI Desktop.
    * [![Dashboard Interativo](https://img.shields.io/badge/Ver%20Dashboard-Power%20BI-yellowgreen?style=for-the-badge&logo=power-bi&logoColor=white)](https://app.powerbi.com/view?r=eyJrIjoiNzNjNjc4NjktYzY2YS00ZDIzLTlkMzgtYWVhYzFlZjMzMDZhIiwidCI6IjY1OWNlMmI4LTA3MTQtNDE5OC04YzM4LWRjOWI2MGFhYmI1NyJ9)
    
## 🤝 Como Contribuir

1.  Faça um "Fork" do projeto.
2.  Crie uma nova "Branch" (`git checkout -b feature/nova-analise`).
3.  Faça o "Commit" de suas mudanças (`git commit -m 'Adiciona nova análise'`).
4.  Faça o "Push" para a "Branch" (`git push origin feature/nova-analise`).
5.  Abra um "Pull Request".

## 📫 Autores

Este projeto foi desenvolvido por:

* **[Johnata Moraes]** - [jhou.122@gmail.com](mailto:jhou.122@gmail.com)
* **[Raquel Pegoraro]** - [raquelpegoraro@gmail.com](mailto:raquelpegoraro@gmail.com)
* **[Claudio Machado]** - [claudiomvm@gmail.com](mailto:claudiomvm@gmail.com)
* **[Lucimary Ribeiro]** - [lucisabara@hotmail.comm](mailto:lucisabara@hotmail.com)

## 📄 Licença

Este projeto está sob a licença MIT. Para mais detalhes, veja o arquivo [LICENSE.md](LICENSE.md).