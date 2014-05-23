# What does the third line evaluate to?

x = 5
x += 3
x / 2 + 10   #=> 40


##############################################################

# Get the first element of 'teams'

teams = ["Knicks", "Celtics", "76ers", "Raptors"]
teams[0]

##############################################################

# Provide 2 ways to get the last element of 'teams'. 

teams = ["Giants", "Cowboys", "Eagles", "Steelers"]
teams[-1];teams[3]


##############################################################

# Provide two ways to add the word 'Shady' to the end of 'rappers.''

rapper = ["The", "real", "Slim"]
rapper<<"Shady"
rapper.push("Shady")


##############################################################

# Write a method to iterate through the following array
# and print each element to the screen.

ary = ["MakerSquare", "is", "cool!"]
ary.each{|arg| print arg}



##############################################################

# Iterate through 'names' and return a new array with each
# name capitalized.

names = ["nick", "mike", "shehzan", "gilbert"]

return names.collect{|arg| arg.capitalize}


##############################################################

# What is the value of 'y'?

x = "I love Austin, Texas!"
y = x.split[2]   #=> Austin,

##############################################################

# What are two ways to concatenate the following strings?

first = "Cohort 7 "
second = "rocks!!!"
first+ " " +second
"#{first} #{second}"


##############################################################

# Create a new hash that contains some information about yourself

me =  #=> { :name =>"Jered McCullough",
#           :age =>"26",
#           :location=> "San Francisco"}



##############################################################

# The formula to convert Fahrenheit temperatures to Celsius is:
#    1. subtract 32 from the Fahrenheit temperature
#    2. multiply by 5
#    3. divide by 9
# Write a method called f2c that takes a temperature and in
# Fahrenheit and returns its Celsius equivalen


# ANSWER HERE
def f2c(temp)
  return ((temp-32)*5.0/9.0)
end


##############################################################

# What does the following method return?
# Next to each call to 'some_method' write
# a comment that says what the return value is.

def some_method(x)
  if x > 5 && x < 10
    return :a
  elsif x < 5
    return :b
  end    

  :c
end

some_method(3)    #=>  :b
some_method(12)   #=>  :c
some_method(7)    #=>  :a

##############################################################

# What is the output of the following expression.

if !"nick"
  puts "He's a cool guy!"
end

#=>nil

##############################################################


# The following 3 lines of code have errors. Please correct them.
# You can change them in place.

my_name = "Nick McDonnough"
pop_punk = "Blink" + 182.to_s
7.0 / 2 == 3.5   # there are multiple acceptable answers for this one.

##############################################################

# What is the output of the following code 

def recursion(x)
  return "HEYO!" if x >= 5
  puts x
  recursion x += 1
end

recursion(0)   #=> 01234HEYO!

recursion(6)   #=> HEYO!

##############################################################

# Given the following data structure please answer the
# questions below it

ballers = [
  {:name => "Michael Jordan", :team => "Chicago"},
  {:name => "Larry Bird", :team => "Boston"},
  {:name => "Isiah Thomas", :team => "Detroit"}
]

# How would you access Larry Bird's team?
# ballers[1][team]

# How would you return an array containing only the player names?
# names= ballers.collect{|arg|arg[:name]};return names;

##############################################################

# Using the above hash, what does the following return?
ballers[-1].size    #=> 2

##############################################################

# Return the cast members of The Sopranos as a single
# string separated by commas.

tv_shows = {
  "Mad Men" => {:network => "AMC", :cast => ["John Hamm", "John Slattery", "Elizabeth Olson"]},
  "Dexter" => {:network => "Showtime", :cast => ["Michael C. Hall", "Jennifer Carpenter", "CS Lee"]},
  "The Sopranos" => {:network => "HBO", :cast => ["James Gandolfini", "Michael Imperioli", "Edie Falco"]}
}

# tv_shows["The Sopranos"][:cast].join(", ")

##############################################################

# Iterate through 'words' and return the following sentence:
#    "I'm excited for MakerSquare!""

words = [
  ["I'm", "eating", "pizza"],
  ["Excited", "begins", "with", "E"],
  ["For", "sale"],
  ["MakerSquare", "is", "awesome!"]
]

# new=words.collect{|arg|arg[0].downcase};new[0].capitalize!;new[-1].capitalize!;new.join(" ")+"!"

##############################################################

# How would I access the value "Austin" in this hash?

person = {
  :name => "Nick McDonnough",
  :age => 28,
  :address => {
    :street => "2520 Elmont St",
    :city => "Austin",
    :state => "TX"
  }
}
person[:address][:city]

##############################################################

# What does the 'initialize' method do?
# A sentence or two will suffice.
# Initialize is a method that is automatically initiated when an object of the specific class is created.
# This allows you to pass information into an object at its creation.

##############################################################

# Create a Person class based off of this behavior
# This will take up many lines. You can start your answer here.
class Person
  attr_accessor :name, :age,:kids
  def initialize(name, age)
    @name = name
    @age = age
    @kids=[]
    @family=[]
  end
  def birthday
  @age+=1
  end
  def family
    puts "#{@name} has #{@kids.length} children:\n #{@kids.collect{|arg|arg.name}.join(',')}"
  end

end

bobby = Person.new("Bobby", 28)
bobby.age  #=> 28
bobby.birthday
bobby.birthday
bobby.age  #=> 30

tim = Person.new("Tim", 1)
sam = Person.new("Sam", 1)

bobby.kids << tim
bobby.kids << sam

bobby.family  #=> "Bobby has 2 children:
              #=>  Tim,
              #=>  Sam"

##############################################################

# Create a new class Person that is initialized with a name and an age.
# In the Person class create a method 'talk' that takes a single parameter
# and prints it to the screen.
# Create a Singer class that inherits from Person. Singer should have a
# method 'sing'. The following code describes the behaviour of the classes.

# This will take up many lines. You can start your answer here.
class Person
  attr_accessor :name, :age
  def initialize(name, age=0)
    @name = name
    @age = age
  end
  def greet
    puts "Hey there! I'm #{@name}!"
  def talk(words)
  print words
  end
end

class Singer < Person
  def sing
    puts "R-E-S-P-E-C-T. Find out what it means to me!"
  end
end

nick = Person.new("Nick")
nick.greet   #=> "Hey, there! I'm Nick!"
nick.talk("Prework is super important!")  #=> "Prework is super important!"

aretha = Singer.new("Aretha Franklin")
aretha.greet  #=> "Hey, there! I'm Aretha Franklin!"
aretha.sing   #=> "R-E-S-P-E-C-T. Find out what it means to me!"


##############################################################

# Rewrite the code below to expand the attr_accessor line into
# the methods it represents. You can simply replace the code.

class Cookie
  attr_accessor :type, :calories
  def initialize type, calories
    @type = type
    @calories = calories
  end
  def type(new_val=nil)#I am not sure how to use the = pass in the new value
    if new_val!=nil
      @type = new_val
    else
      return @type
    end 
  end
  def calories(new_val=nil)
    if new_val!=nil
      @calories = new_val
    else
      return @type
    end 
  end
end 

##############################################################

# What is a class variable? Why might you use one?
# Just write a sentence below. You can provide some code if
# you're not sure how to word it.
# A class variable is an unique object created for every intance of the class that generates it.
# One use for a class variable is to store attributes of a class that differ in instances of that class.

##############################################################

# What is a block? Please provide a code example along with
# a sentence or two explaining it.
# A block is a section of code that performs an action upon the object being passed in.
# There are 2 ways to write a block:{|arg|....arg...} where arg is the object being passed into the block
# and for multiline blocks we use the notation
#do |arg|
# .... arg....
# end 


##############################################################

# Describe the scope of the following variable types. If you have
# trouble putting it to words you can use some code.

# local variables are variables stated in the code, outside of any specific objecs, 
# and thus may be called upon by any part of the code after which it has been stated.

# instance variables are located within an object, used within the object and are not
# typically accessible outside of the object.

# class variables are a mix between the local and instance variables in that class 
# variables are stated inside class instances, and are accessible within the class 
# instance however they are not typically accessible outside of the class instance, 
# unless called for using a method specifying the instance in which it is located.

##############################################################

# When you call the 'methods' method you receive a list of all methods
# available to that object based on what class it is in. Knowing
# that please answer the question below.

class Test
end

x = Test.new
x.methods.count   #=> 54

# If we didn't write any methods for our Test class how did it
# the 'methods' method find 50 methods associated with it?
# The Class object has certain methods that are associated with it,
# therefore any new class inherits the methods associated with all 
# classes.
