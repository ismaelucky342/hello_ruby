# 
# /$$   /$$           /$$ /$$                 /$$$$$$$            /$$                
# | $$  | $$          | $$| $$                | $$__  $$          | $$                
# | $$  | $$  /$$$$$$ | $$| $$  /$$$$$$       | $$  \ $$ /$$   /$$| $$$$$$$  /$$   /$$
# | $$$$$$$$ /$$__  $$| $$| $$ /$$__  $$      | $$$$$$$/| $$  | $$| $$__  $$| $$  | $$
# | $$__  $$| $$$$$$$$| $$| $$| $$  \ $$      | $$__  $$| $$  | $$| $$  \ $$| $$  | $$
# | $$  | $$| $$_____/| $$| $$| $$  | $$      | $$  \ $$| $$  | $$| $$  | $$| $$  | $$
# | $$  | $$|  $$$$$$$| $$| $$|  $$$$$$/      | $$  | $$|  $$$$$$/| $$$$$$$/|  $$$$$$$
# |__/  |__/ \_______/|__/|__/ \______//$$$$$$|__/  |__/ \______/ |_______/  \____  $$
#                                     |______/                               /$$  | $$
#                                                                          |  $$$$$$/
#                                                                           \______/ 
#                                     Ismael Hernandez - ismherna@student.42madrid.com 
class ComplexNumber
  attr_accessor :real, :imaginary
  
  def initialize(real, imaginary)
    self.real = real
    self.imaginary = imaginary
  end
  
  def +(other)
    puts "#{self} + #{other}"
  end
  
  def -(other)
    puts "#{self} - #{other}"
  end
  
  def /(other)
    puts "#{self} / #{other}"
  end
  
  def *(other)
    puts "#{self} * #{other}"
  end
  
  def to_s
    "#{real}+#{imaginary}i"
  end
end

first = ComplexNumber.new(1, 0)
second = ComplexNumber.new(0, 1)
addition = first + second
subtraction = first - second
division = first / second
multiplication = first * second
