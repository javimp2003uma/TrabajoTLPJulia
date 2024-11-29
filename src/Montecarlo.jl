# Función de simulación de Monte Carlo para estimar π
function estimate_pi(n)
    inside_circle = 0
    for i in 1:n
        x, y = rand(), rand()  # Generamos un punto aleatorio en el cuadrado
        if x^2 + y^2 <= 1  # Verificamos si está dentro del círculo
            inside_circle += 1
        end
    end
    return 4 * inside_circle / n  # Estimación de π
end

# Número de simulaciones
n = 10_000_000

# Medir el tiempo de ejecución
@time println("Tiempo de ejecucion: ", estimate_pi(n))
