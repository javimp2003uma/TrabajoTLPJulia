macro duplicar(expr)
    return esc(:(($expr) * 2))
end

# Uso de la macro duplicar
resultado = @duplicar(5 * 3)

println("El resultado es: $resultado")