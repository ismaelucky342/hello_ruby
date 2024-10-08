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

$:.unshift(File.dirname(__FILE__) + '/../07_classes_and_objects')

# Makes sure a class is required automatically whenever it is used.
# This is a naive implementation.
def Object.const_missing(name)
  @looked_for ||= {} 
  str_name = name.to_s 
  raise "Class not found: #{name}" if @looked_for[str_name] 
  @looked_for[str_name] = 1 
  file = str_name.downcase 
  require file 
  klass = const_get(name) 
  return klass if klass 
  raise "Class not found: #{name}" 
end

# With const_missing in place we can now use our Person class without first doing a require 'person'
person = Person.new("Peter")
person.say_hi
