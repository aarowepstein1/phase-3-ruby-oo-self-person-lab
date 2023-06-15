require 'pry'
class Person
    attr_accessor :bank_account
    attr_reader :name

    def initialize(name)
        @name = name
        self.bank_account = 25
        self.happiness=8
        self.hygiene=8
    end

    def happiness=(h_value)
        if h_value > 10
            @happiness = 10
        elsif h_value < 0
            @happiness = 0
        else
            @happiness = h_value
        end
    end

    def happiness
        @happiness
    end

    def hygiene=(hygiene)
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        else
            @hygiene = hygiene
        end
    end

    def hygiene
        @hygiene
    end
    
    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end
    
    def get_paid(amount)
        @amount = amount
        self.bank_account=(self.bank_account + @amount) 
        "all about the benjamins"       
    end

    def take_bath
        self.hygiene=@hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene=@hygiene -= 3
        self.happiness=@happiness += 2
        "♪ another one bites the dust ♫"
    end
    
    def call_friend(friend)
        happiness=@happiness += 3
        
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
end

