Claro! Aqui está o conteúdo formatado como `README.md`:

```markdown
# SQL Lineage POC

Este repositório contém uma prova de conceito (POC) para utilizar a ferramenta Sql Lineage para rastrear e visualizar a linhagem de dados dentro de scripts SQL. O projeto demonstra como configurar, executar e interpretar a linhagem de dados em um ambiente GitPod, fornecendo um exemplo claro e prático de mapeamento de linhagem de dados em pipelines de dados baseados em SQL.

## Funcionalidades

- **Configuração do Ambiente GitPod**: Instruções detalhadas para configurar o ambiente de desenvolvimento no GitPod.
- **Exemplos de Scripts SQL**: Exemplos de scripts SQL simples e complexos para testar a funcionalidade de mapeamento de linhagem.
- **Análise de Linhagem Automatizada**: Scripts Python para executar a ferramenta Sql Lineage e capturar a linhagem de dados.
- **Visualização da Linhagem**: Geração de gráficos de linhagem que podem ser visualizados em um servidor web simples.

## Estrutura do Projeto

```plaintext
sql_lineage_poc/
├── complex_example.sql
├── complex_example_with_previous_layer.sql
├── example.sql
├── generate_lineage.py
├── run_sqllineage.py
├── README.md
└── requirements.txt
```

## Pré-requisitos

- **Python 3.x**
- **Conta no GitPod**
- **Biblioteca Sql Lineage**: Instale usando `pip install sqllineage`

## Configuração do Ambiente

1. **Clone o Repositório**:
   ```bash
   git clone https://github.com/seu-usuario/sql_lineage_poc.git
   cd sql_lineage_poc
   ```

2. **Crie um Ambiente Virtual** (Opcional, mas recomendado):
   ```bash
   python3 -m venv venv
   source venv/bin/activate
   ```

3. **Instale as Dependências**:
   ```bash
   pip install -r requirements.txt
   ```

## Executando Exemplos

### Script SQL Simples

1. **Crie o arquivo `example.sql`**:
   ```sql
   CREATE TABLE raw_table (
       column1 INT,
       column2 VARCHAR(255)
   );

   INSERT INTO raw_table (column1, column2)
   VALUES (1, 'data1'), (2, 'data2');

   CREATE TABLE trusted_table AS
   SELECT column1, column2
   FROM raw_table
   WHERE column1 > 1;
   ```

2. **Execute o Script Python**:
   ```bash
   python run_sqllineage.py
   ```

### Script SQL Complexo

1. **Crie o arquivo `complex_example.sql`**:
   ```sql
   -- Conteúdo do script SQL complexo
   ```

2. **Execute o Script Python**:
   ```bash
   python run_sqllineage.py
   ```

### Script SQL com Camada Anterior

1. **Crie o arquivo `complex_example_with_previous_layer.sql`**:
   ```sql
   -- Conteúdo do script SQL com camada anterior
   ```

2. **Execute o Script Python**:
   ```bash
   python run_sqllineage.py
   ```

## Visualizando a Linhagem

Para visualizar a linhagem de dados, você pode utilizar um servidor HTTP simples para servir os arquivos HTML gerados:

1. **Gere a Visualização**:
   ```bash
   python generate_lineage.py
   ```

2. **Inicie o Servidor HTTP**:
   ```bash
   python -m http.server
   ```

3. **Acesse no Navegador**:
   Abra o navegador e vá para `http://localhost:8000/lineage.html` para visualizar a linhagem de dados.

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues e pull requests.

## Licença

Este projeto é licenciado sob a Licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.
```

---

Sinta-se à vontade para ajustar qualquer detalhe conforme necessário. Este README oferece uma visão geral abrangente do projeto e deve ser útil para qualquer pessoa que queira entender e usar o repositório.