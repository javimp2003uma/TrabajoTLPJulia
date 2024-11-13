# Definicion de la funcion "describir" con multiples metodos
function describir(x::Int)
    return "Este es un número entero: $x"
end

function describir(x::Float64)
    return "Este es un número de punto flotante: $x"
end

function describir(x::String)
    return "Este es un texto: $x"
end

# Usar la funcion con diferentes tipos de datos
println(describir(42))
println(describir(3.14))
println(describir("Hola, mundo!"))