import time as t


# Definir la función y su gradiente
empezar = t.time()
def f(x, y):
    return (x - 3)**2 + (y + 1)**2

def df(x, y):
    return (2 * (x - 3), 2 * (y + 1))  # Derivadas parciales de f respecto a x e y

# Inicializar parámetros
x, y = 0.0, 0.0  # Punto inicial
learning_rate = 0.1
epochs = 100

# Gradiente descendente
for epoch in range(epochs):
    grad_x, grad_y = df(x, y)
    x -= learning_rate * grad_x
    y -= learning_rate * grad_y
    #print(f"Epoch {epoch + 1}: x = {x}, y = {y}, f(x, y) = {f(x, y)}")

print(f"Minimo encontrado en: x = {x}, y = {y}")
stop = t.time()
print("Tiempo ejecucion: " + str(stop - empezar))

