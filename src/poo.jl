struct Persona
    nombre::String
end

function saludar(p::Persona)
    return "Hola, $(p.nombre)"
end

persona1 = Persona("Juan")
mensaje = saludar(persona1)
println(mensaje)