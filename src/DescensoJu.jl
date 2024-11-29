
start_time = time() 

# Definir la función y su gradiente
f(x, y) = (x - 3)^2 + (y + 1)^2
df(x, y) = (2 * (x - 3), 2 * (y + 1))  # Derivadas parciales de f respecto a x e y

# Función principal que ejecuta el gradiente descendente
function gradient_descent()
    # Inicializar parámetros
    x, y = 0.0, 0.0  # Punto inicial
    learning_rate = 0.1
    epochs = 100

    # Gradiente descendente
    for epoch in 1:epochs
        grad_x, grad_y = df(x, y)
        x -= learning_rate * grad_x
        y -= learning_rate * grad_y
        #println("Epoch $epoch: x = $x, y = $y, f(x, y) = $(f(x, y))")
    end

    println("Mínimo encontrado en: x = $x, y = $y")
end

# Ejecutar la función
gradient_descent()
stop_time = time() 
println("Tiempo ejecucion: ", stop_time - start_time)

