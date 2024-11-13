using Base.Iterators: flatten
using StatsBase: mean

numeros = [1, 2, 3, 4, 5]

cuadrados = map(x -> x^2, numeros)
pares = filter(x -> x % 2 == 0, numeros)
suma_total = reduce(+, numeros)