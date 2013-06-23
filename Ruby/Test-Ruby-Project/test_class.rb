class TestClass
  attr_accessor :name

  def initialize
    @name = "John"
  end

  def say_hi
    if @name.respond_to?("each")
      @name.each do |name|
        puts "Hi #{name}"
      end
    else
      puts "Hey #{@name}"
    end
  end

  def join
    @name.each do |name|
      @name = @name, name
    end
  end

  def say_bye
    if @name.respond_to?("join")
      puts "See ya #{@name.join(", ")}."
    else
      puts "Later #{@name}."
    end
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

aName.name = ["John", "David", "Timmy"]
aName.say_hi
aName.say_bye

