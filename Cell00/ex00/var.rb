
# Solicita al usuario que ingrese dos números
print "Ingrese el primer número: "
num1 = gets.chomp.to_f
print "Ingrese el segundo número: "
num2 = gets.chomp.to_f

# Realiza las operaciones aritméticas
suma = num1 + num2
resta = num1 - num2
multiplicacion = num1 * num2
division = num1 / num2

# Imprime los resultados
puts "Suma: #{suma}"
puts "Resta: #{resta}"
puts "Multiplicación: #{multiplicacion}"
puts "División: #{division}"
