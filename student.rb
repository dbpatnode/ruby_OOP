class Student
    # accessor acts as both a getter and setter function
    attr_accessor :first_name, :last_name, :email, :username, :password

    # set the initialize so the object starts with all of the required information

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
puts user1
puts user2