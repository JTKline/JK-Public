class TestClass
  attr_accessor :name

  def initialize(name = "John")
    @name = name
  end

  def say_hi
    puts "Hi #{@name}"
  end

  def say_bye
    puts "Bye #{@name}"
  end
end

aName = TestClass.new
aName.say_hi
aName.say_bye

aName.name = "David"
aName.say_hi
aName.say_bye

aName.name = "I don't know your name."
aName.say_hi
aName.say_bye
