
x = 10
println(typeof(x))   # Muestra "Int64"

x = 3.14
println(typeof(x))   # Muestra "Float64"





a = 42              # Por defecto, es Int64 en sistemas de 64 bits

b::Int8 = 127       # Entero de 8 bits
c::UInt16 = 30000   # Entero sin signo de 16 bits



x = 3.1415           # Float64 por defecto
y::Float32 = 2.71    # Float32




flag = true
println(typeof(flag))   # Muestra "Bool"



greeting = "Hello, world!"
println(typeof(greeting))   # Muestra "String"



char = 'A'
println(typeof(char))   # Muestra "Char"




z = 1 + 2im
println(typeof(z))   # Muestra "Complex{Int64}"






arr = [1, 2, 3]                 # Vector de enteros
arr_float = [1.0, 2.0, 3.0]     # Vector de flotantes







a = 10 + 5        # Suma, resultado: 15
b = 10 - 5        # Resta, resultado: 5
c = 10 * 5        # Multiplicación, resultado: 50
d = 10 / 3        # División, resultado: 3.3333...
e = 10 % 3        # Módulo (resto de la división), resultado: 1
f = 2 ^ 3         # Potencia, resultado: 8



x = 10
y = 5

println(x > y)    # Mayor que, resultado: true
println(x < y)    # Menor que, resultado: false
println(x >= y)   # Mayor o igual que, resultado: true
println(x <= y)   # Menor o igual que, resultado: false
println(x == y)   # Igualdad, resultado: false
println(x != y)   # Desigualdad, resultado: true



a = true
b = false

println(a && b)   # AND lógico, resultado: false
println(a || b)   # OR lógico, resultado: true
println(!a)       # NOT lógico, resultado: false



x = 10
x += 5           # Equivalente a x = x + 5, resultado: 15
x -= 3           # Equivalente a x = x - 3, resultado: 12
x *= 2           # Equivalente a x = x * 2, resultado: 24
x /= 4           # Equivalente a x = x / 4, resultado: 6.0
x %= 3           # Equivalente a x = x % 3, resultado: 0




str1 = "Hola"
str2 = "Julia"
str3 = str1 * ", " * str2   # Concatenación, resultado: "Hola, Julia"
println(str3)





range1 = 1:5              # Rango de 1 a 5
range2 = 1:2:9            # Rango de 1 a 9 con incremento de 2




if condición
    # Código que se ejecuta si la condición es verdadera
elseif otra\_condición
    # Código que se ejecuta si la primera condición es falsa y esta es verdadera
else
    # Código que se ejecuta si todas las condiciones anteriores son falsas
end




x = 10

if x > 0
    println("x es positivo")
elseif x == 0
    println("x es cero")
else
    println("x es negativo")
end





x = 5
y = -3

if x > 0
    if y > 0
        println("x e y son positivos")
    else
        println("x es positivo, pero y no lo es")
    end
else
    println("x no es positivo")
end



x = 10
resultado = x > 0 ? "positivo" : "no positivo"
println(resultado)  # Muestra "positivo"




x = 10
y = 5

if x > 0 && y > 0
    println("Ambos son positivos")
end

if x < 0 || y < 0
    println("Al menos uno es negativo")
end


for i in 1:5
    println("Iteración $i")
end




colores = ["rojo", "verde", "azul"]

for color in colores
    println("Color: $color")
end





contador = 1

while contador <= 5
    println("Contador: $contador")
    contador += 1
end




for i in 1:10
    if i == 6
        break       # Termina el bucle cuando i es 6
    elseif i % 2 == 0
        continue    # Salta a la siguiente iteración si i es par
    end
    println("i: $i")
end





for i in 1:3
    for j in 1:2
        println("i = $i, j = $j")
    end
end





function suma(a, b)
    return a + b
end

# Llamada a la función
resultado = suma(3, 4)  # resultado es 7




suma(a, b) = a + b

# Llamada a la función
resultado = suma(3, 4)  # resultado es 7




# Definición de una función anónima
f = (x, y) -> x * y

# Uso de la función
resultado = f(3, 5)  # resultado es 15





function suma_todos(valores...)
    total = 0
    for v in valores
        total += v
    end
    return total
end

# Llamada a la función con diferentes números de argumentos
resultado = suma_todos(1, 2, 3, 4) # resultado es 10





function elevar(x, y=2)
    return x^y
end

# Llamada a la función sin especificar y
resultado = elevar(3)    # resultado es 9, ya que y=2 por defecto

# Llamada a la función especificando y
resultado = elevar(3, 3) # resultado es 27





# Definición de una función de orden superior
function aplicar_operacion(f, x, y)
    return f(x, y)
end

# Uso de una función de orden superior con una función anónima
resultado = aplicar_operacion((a, b) -> a * b, 3, 4)  # resultado es 12






function dividir_y_residuo(a, b)
    cociente = div(a, b)
    residuo = a % b
    return cociente, residuo
end

# Asignación de los valores retornados a múltiples variables
c, r = dividir_y_residuo(10, 3)  # c es 3, r es 1





try
    # Código que puede lanzar un error
    resultado = 10 / 0
catch e
    # Manejo del error
    println("Error: ", e)
finally
    println("Esta parte del código siempre se ejecuta")
end






function dividir(a, b)
    if b == 0
        throw(DivideError("No se puede dividir entre cero"))
    else
        return a / b
    end
end

# Ejemplo de llamada
try
    dividir(10, 0)
catch e
    println("Ocurrió un error: ", e)
end





function raiz_cuadrada(x)
    if x < 0
        throw(ArgumentError("El argumento no puede ser negativo"))
    else
        return sqrt(x)
    end
end

try
    raiz_cuadrada(-4)
catch e
    println("Ocurrió un error: ", e)
end



function dividir(a, b)
    @assert b != 0 "El divisor no puede ser cero"
    return a / b
end

# Ejemplo de llamada
dividir(10, 0)  # Lanza AssertionError con mensaje "El divisor no puede ser cero"


