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

class MyClass  
  # Methods are public by default

  def public_method
    puts "public_method invoked"
    private_method # You can invoke private methods from instance methods
    protected_method # You can invoke protected methods too
  end  

  protected  

    def protected_method
    puts "protected_method invoked"
  end

  private

 
  def private_method
    puts "private_method invoked"
  end
end

object = MyClass.new

object.public_method

begin
  object.protected_method
rescue => e
  puts "\nnot allowed to invoke protected here: " + e.message
end

begin
  object.private_method
rescue => e
  puts "not allowed to invoke private: " + e.message
end

class SubClass < MyClass
  def invoke_protected(object)
    puts "\nallowed to invoke protected now since we are 'in the family':"
    object.protected_method
  end
end

other_object = SubClass.new
other_object.invoke_protected(object)
