import time

# Generar un conjunto de datos de texto
n = 10_000  # Número de líneas de texto
data = [f"line {i}: This is an example of a text line." for i in range(1, n+1)]

# Función que busca un patrón y reemplaza una parte de la cadena
def process_text(data):
    result = []
    for line in data:
        if "example" in line:
            result.append(line.replace("example", "sample"))
        else:
            result.append(line)
    return result

# Medir el tiempo de ejecución utilizando time.time()
start_time = time.time()
process_text(data)
end_time = time.time()

# Imprimir el tiempo de ejecución
print(f"Tiempo de ejecución: {end_time - start_time} segundos")


