# Generar un conjunto de datos de texto
start_time = time() 
n = 10_000  # Número de líneas de texto
data = [string("line ", i, ": This is an example of a text line.") for i in 1:n]

# Función que busca un patrón y reemplaza una parte de la cadena
function process_text(data)
    result = []
    for line in data
        if occursin(r"example", line)
            push!(result, replace(line, "example" => "sample"))
        else
            push!(result, line)
        end
    end
    return result
end

# Medir el tiempo de ejecución con `@time`
process_text(data)
stop_time = time() 
x = stop_time-start_time
print("Tiempo de ejecucion ", x)

