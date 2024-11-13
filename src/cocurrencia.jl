# Usar la biblioteca de programación paralela
using Base.Threads

# Función que calcula el cuadrado de un número
function calcular_cuadrados(n)
    return n * n
end

# Función que calcula los cuadrados de una lista de números en paralelo
function calcular_cuadrados_paralelo(nums)
    resultados = Vector{Int}(undef, length(nums))
    @threads for i in 1:length(nums)
        resultados[i] = calcular_cuadrados(nums[i])
    end
    return resultados
end

# Lista de números
numeros = collect(1:10)

println("Cuadrados: ", calcular_cuadrados_paralelo(numeros))