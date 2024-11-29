import random
import time

# Función de simulación de Monte Carlo para estimar π
def estimate_pi(n):
    inside_circle = 0
    for _ in range(n):
        x, y = random.random(), random.random()  # Generamos un punto aleatorio en el cuadrado
        if x**2 + y**2 <= 1:  # Verificamos si está dentro del círculo
            inside_circle += 1
    return 4 * inside_circle / n  # Estimación de π

# Número de simulaciones
n = 10_000_000

# Medir el tiempo de ejecución
start_time = time.time()
estimate_pi(n)
end_time = time.time()

print(f"Tiempo de ejecucion: {end_time - start_time} segundos")
