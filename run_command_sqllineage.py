import subprocess

# Comando a ser executado
command = ["sqllineage", "-g", "-f", "complex_example_with_previous_layer.sql"]

# Executa o comando usando subprocess
result = subprocess.run(command, capture_output=True, text=True)

# Verifica se houve erro
if result.returncode != 0:
    print("Erro ao executar sqllineage:", result.stderr)
else:
    print("Saída do sqllineage:")
    print(result.stdout)
