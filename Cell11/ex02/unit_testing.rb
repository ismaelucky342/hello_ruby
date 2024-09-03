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
require 'test/unit'

class Person
  attr_accessor :name, :age
  
  def initialize(name, age)
    self.name = name
    self.age = age
  end
  
  def old?
    age > 40
  end
end

class PersonTest < Test::Unit::TestCase
  def setup
    @person = Person.new("Joe", 43)
  end
  
  def teardown
    # Nothing to tear down in this case
  end
  
  def test_name
    assert_equal "Joe", @person.name
    @person.name = "Peter"
    assert_equal "Peter", @person.name
  end

  def test_age
    assert_equal 43, @person.age
    @person.age = 15
    assert_equal 15, @person.age
  end
  
  def test_old
    assert @person.old?
    @person.age = 39
    assert !@person.old?
  end
end
