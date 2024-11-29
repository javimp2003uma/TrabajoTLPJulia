using LinearAlgebra

# Función para realizar la multiplicación de matrices usando LinearAlgebra
function multiply_with_lib()
    x = rand(Float64, (1000, 1000))  # Generar matriz aleatoria 10x10
    y = rand(Float64, (1000, 1000))  # Generar matriz aleatoria 10x10
    c = zeros(Float64, (1000, 1000))  # Inicializar matriz de resultados

    # Medir el tiempo de ejecución
    print("Tiempo LinearAlgebra:")
    @time LinearAlgebra.mul!(c, x, y)  # Multiplicación usando LinearAlgebra
    return c
end

function manual_multiplication()
    x = rand(Float64, (1000, 1000)) 
    y = rand(Float64, (1000, 1000))  
    c = zeros(Float64, (1000, 1000))  

    start_time = time() 

    for i in 1:10
        for j in 1:10
            for k in 1:10
                c[i, j] += x[i, k] * y[k, j]
            end
        end
    end

    end_time = time()  
    println("Tiempo de multiplicación manual: ", end_time - start_time, " segundos")
    return c
end

# Ejecutar las funciones
c_lib = multiply_with_lib()

c_manual = manual_multiplication()
