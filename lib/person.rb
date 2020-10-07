# your code goes here
# Introduction
# To practice object oriented programming (OOP), you're going to create a Person class. Each instance of the Person class will have the ablity to: - get paid/receive payments - take a bath - call a friend - start a conversation - state if they are happy and/or clean

# Instructions
# First you need to create a person class that is initialized with a name that cannot be changed.
# Each instance of class Personshould be able to remember their name
# Each instance of class Person should start with $25 in their bank accounts
# Each instance of class Person should start with eight happiness points
# Each instance of class Person should start with eight hygiene points
# The happiness and hygiene points should be able to change, however the maximum and minimum points for both happiness and hygiene should be 10 and 0 respectively
# The amount in the bank account should also be able to change, though it has no max or min.
require 'pry'
class Person

    attr_reader :name 
    attr_accessor :happiness, :hygiene, :bank_account
    
    def initialize(name)
        @name = name 
        @bank_account = 25
        @hygiene = 8
        @happiness = 8
    end

    def clean?
        hygiene > 7
        return true 
    end 

    def happy?
        happiness > 7 
        return true 
    end 

    def get_paid(salary)
        bank_account += salary
        puts "all about the benjamins"
    end

    def take_bath
        @hygiene += 4
        puts "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        puts "♪ another one bites the dust ♫"
    end

    def call_friend(person)
        self.happiness += 3
        person.happiness += 3
        puts "Hi Felix! It's Stella. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2 
            return "blah blah partisan blah lobbyist"
        elsif 
            topic == "weather"
            self.happiness += 100
            person.happiness += 100   
            return "blah blah sun blah rain"          
        else
            return "blah blah blah blah blah"
        end
    end
end

person1 = Person.new("Gon")
person2 = Person.new("Hisoka")
binding.pry