class User
  attr_reader :first_name, :last_name, :age, :grade

  DEFAULT_GRADE = "BASIC"

  class << self
    def className
      puts "I am a User class"
    end
  end

  def self.sayHello
  puts "hello!"
  end

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
    @grade = DEFAULT_GRADE
  end

  def fullname
    "#{@first_name} #{@last_name}"
  end
end

users = []
users << User.new('Alice','Ruby',20)
users << User.new('Bob','Python',30)
