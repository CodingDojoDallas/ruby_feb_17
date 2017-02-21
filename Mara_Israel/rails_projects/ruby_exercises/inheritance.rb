  class ParentClass
    def a_method
      puts 'b'
    end
  end
  class SomeClass < ParentClass  # < means inherit (or "extends" if you are from Java background)
    def another_method
      puts 'a'
    end
  end
  instance = SomeClass.new
  instance.another_method # => "a"
  instance.a_method       # => "b"

# All non-private variables and functions are inherited by the child class from the superclass.

# Example
class Cat < Mammal #inherits from the Mammal class 
  def jerk
    puts 'scratching you...'
  end 
  def speak  
    puts "Meow"   
  end  
end
chloe = Cat.new #creates new class called Cat, 'I am alive!' should print on the screen
chloe.jerk # prints 'scratching you' on the screen
chloe.speak # prints 'Meow'
chloe.breathe # can access the Mammal methods as well, prints 'Inhale and exhale'
