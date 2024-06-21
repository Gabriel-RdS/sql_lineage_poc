from sqllineage.runner import LineageRunner

sql_script = """
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
"""

# Pass the SQL script directly to LineageRunner
lineage_runner = LineageRunner(sql_script)
lineage_result = lineage_runner.source_tables  # or another method as required

print(lineage_result)
