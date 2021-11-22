# class' are like things, while modules are like tools to use on classes
# were taking in the module crud below:

require_relative 'crud'

class Student
# make sure to include Crud module:
include Crud

    # set the initialize so the object starts with all of the required information
    attr_accessor :first_name, :last_name, :email, :username, :password

    # include intialize function for all necessary attributes
    def initialize(first_name, last_name, email, username, password)
        @first_name = first_name
        @last_name = last_name
        @email = email
        @username = username
        @password = password
    end

    # to_s is a built in function that allows us to see whats going on inside of the class
    def to_s
        "first name: #{@first_name},  
        last name: #{@last_name}
        email: #{@email},
        username: #{@username}, 
        password: #{@password}"
    end

end

user1 = Student.new("Daniel", "Patnode", "dbpatnode@email.com", "dbpatnode", "hkjdsakj123")
user2 = Student.new("Meg", "Mitchell", "meg@email.com", "megamitch", "hsdjk345")

hashed_password = user1.create_hash_digest(user1.password)
puts hashed_password
puts user1.password
puts hashed_password == "hkjdsakj123"

