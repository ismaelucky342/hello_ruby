def mostrar_menu
    puts "Calculadora Avanzada"
    puts "Seleccione una operación:"
    puts "1. Suma"
    puts "2. Resta"
    puts "3. Multiplicación"
    puts "4. División"
    puts "5. Potencia"
    puts "6. Raíz Cuadrada"
    puts "7. Salir"
  end
  
  def obtener_numero(prompt)
    print prompt
    gets.chomp.to_f
  end
  
  def suma(num1, num2)
    num1 + num2
  end
  
  def resta(num1, num2)
    num1 - num2
  end
  
  def multiplicacion(num1, num2)
    num1 * num2
  end
  
  def division(num1, num2)
    if num2 == 0
      "Error: División por cero no permitida."
    else
      num1 / num2
    end
  end
  
  def potencia(base, exponente)
    base**exponente
  end
  
  def raiz_cuadrada(num)
    if num < 0
      "Error: Raíz cuadrada de un número negativo no es real."
    else
      Math.sqrt(num)
    end
  end
  
  loop do
    mostrar_menu
    opcion = gets.chomp.to_i
  
    case opcion
    when 1
      num1 = obtener_numero("Ingrese el primer número: ")
      num2 = obtener_numero("Ingrese el segundo número: ")
      puts "Resultado: #{suma(num1, num2)}"
    when 2
      num1 = obtener_numero("Ingrese el primer número: ")
      num2 = obtener_numero("Ingrese el segundo número: ")
      puts "Resultado: #{resta(num1, num2)}"
    when 3
      num1 = obtener_numero("Ingrese el primer número: ")
      num2 = obtener_numero("Ingrese el segundo número: ")
      puts "Resultado: #{multiplicacion(num1, num2)}"
    when 4
      num1 = obtener_numero("Ingrese el primer número: ")
      num2 = obtener_numero("Ingrese el segundo número: ")
      resultado = division(num1, num2)
      puts resultado.is_a?(String) ? resultado : "Resultado: #{resultado}"
    when 5
      base = obtener_numero("Ingrese la base: ")
      exponente = obtener_numero("Ingrese el exponente: ")
      puts "Resultado: #{potencia(base, exponente)}"
    when 6
      num = obtener_numero("Ingrese el número: ")
      resultado = raiz_cuadrada(num)
      puts resultado.is_a?(String) ? resultado : "Resultado: #{resultado}"
    when 7
      puts "Saliendo del programa. ¡Hasta luego!"
      break
    else
      puts "Opción no válida. Por favor, intente de nuevo."
    end
    puts # Línea en blanco para separación
  end
  