class Command
    def execute
    end
end

class State
    attr_accessor :a, :b, :result, :last, :stack, :mem
def initialize
    @a = 0
    @b = 0
    @result = 0
    @last = 0
    @stack = []
    @mem = 0
end
end

class Prime < Command
    def initialize(state) 
        @stat = state
        end

def prime (n)
    prime_numbers = []
    i = 2
    while i <= n do
        is_prime = true
        i.times do |n|
            if n > 1 && i % n == 0 && n != i
                is_prime = false 
    end
end
prime_numbers.push(i) if is_prime
i += 1 
end
return prime_numbers
end

        def execute
            @stat.stack = prime(@stat.b)
            puts @stat.stack[@stat.stack.size-1] 
        end
end

class MemRead <  Command
    def initialize(state) 
    @stat = state
    end
    def execute
        @stat.a = @stat.mem
        @stat.result = @stat.mem
        puts "Now first argument is #{@stat.a}"
    end
end

class MemWrite <  Command
    def initialize(state) 
    @stat = state
    end
    def execute
        @stat.mem = @stat.result
        puts "Now mem cell have: #{@stat.mem}"
    end
end

class Push <  Command
    def initialize(state) 
    @stat = state
    end
    def execute
        @stat.stack.push(@stat.result)
        puts "Now #{@stat.result} in stack,now stack is: #{@stat.stack}"
    end
end

class Pop <  Command
    def initialize(state) 
    @stat = state
    end
    def execute
        puts "Now #{@stat.stack.pop} out of stack,now stack is: #{@stat.stack}"
    end
end

class UnariMinus <  Command
    def initialize(state) 
    @stat = state
    end
    def execute
        @stat.result = @stat.a - 1
    end
end

class Sqrt <  Command
    def initialize(state) 
    @stat = state
    end
    def execute
        @stat.result = Math.sqrt(@stat.a)
    end
end

class Sin <  Command
    def initialize(state) 
    @stat = state
    end
    def execute
        @stat.result = Math.sin(@stat.a)
    end
end

class Cos <  Command
    def initialize(state) 
    @stat = state
    end
    def execute
        @stat.result = Math.cos(@stat.a)
    end
end

class Tan <  Command
    def initialize(state) 
    @stat = state
    end
    def execute
        @stat.result = Math.tan(@stat.a)
    end
end

class Ctan <  Command
    def initialize(state) 
    @stat = state
    end
    def execute
        @stat.result = 1/Math.tan(@stat.a)
    end
end

class Exp <  Command
    def initialize(state) 
    @stat = state
    end
    def execute
        @stat.result = Math.exp(@stat.a)
    end
end

class Ln <  Command
    def initialize(state) 
    @stat = state
    end
    def execute
        @stat.result = Math.ln(@stat.a)
    end
end

class Exp <  Command
    def initialize(state) 
    @stat = state
    end
    def execute
        @stat.result = Math.exp(@stat.a)
    end
end

class Fact <  Command
    def fact(n)
    return n == 0 ? 1 : n * fact(n - 1)
    end

    def initialize(state) 
    @stat = state
    end

    def execute
        @stat.result = fact(@stat.a)
    end
end

class Exp <  Command
    def initialize(state) 
    @stat = state
    end
    def execute
        @stat.result = Math.exp(@stat.a)
    end
end

class Plus <  Command
    def initialize(state) 
    @stat = state
    end
    def execute
        @stat.result = @stat.a + @stat.b 
    end
end

class Minus <  Command
    def initialize(state) 
    @stat = state
    end
    def execute
        @stat.result = @stat.a - @stat.b 
    end
end

class Multiple <  Command
    def initialize(state) 
    @stat = state
    end
    def execute
        @stat.result = @stat.a * @stat.b 
    end
end


class Division <  Command
    def initialize(state) 
    @stat = state
    end
    def execute
        @stat.result = @stat.a / @stat.b 
    end
end

class Mod <  Command
    def initialize(state) 
    @stat = state
    end
    def execute
        @stat.result = @stat.a % @stat.b 
    end
end

class Pow <  Command
    def initialize(state) 
    @stat = state
    end
    def execute
        @stat.result = @stat.a.pow(@stat.b)
    end
end

class Calculator
attr_accessor :stat, :commands_unar, :commands_binar
def initialize
@stat = State.new
@commands_unar = {
    "--" => UnariMinus.new(stat),
    "sqrt" => Sqrt.new(stat),
    "cos" => Cos.new(stat),
    "tan" => Tan.new(stat),
    "ctan" => Ctan.new(stat),
    "exp" => Exp.new(stat),
    "ln" => Ln.new(stat),
    "!" => Fact.new(stat),
    "push" => Push.new(stat),
    "pop" => Pop.new(stat),
    "mw" => MemWrite.new(stat),
    "mr" => MemRead.new(stat)
}

@commands_binar = {
    "+" => Plus.new(stat),
    "-" => Minus.new(stat),
    "*" => Multiple.new(stat),
    "/" => Division.new(stat),
    "%" => Mod.new(stat),
    "**" => Pow.new(stat),
    "prime" => Prime.new(stat),
    }
    #"--", "sqrt", "sin", "cos", "tan", "ctan", "exp", "ln", "!", "mr","mw", "pop", "push", pow, ,mod, division, multiple, plus, minus,
end

def Calculator_Start
    puts 'Calculator has started'
    while 1
        #print last
        if @stat.result == 0
            puts "First argument"
            @stat.a = gets.chomp.to_i
            puts "Input operation"
            operation = gets.chomp.strip.downcase
            if commands_binar.key?(operation)
            puts "Second argument" 
            @stat.b = gets.chomp.to_i
            @commands_binar[operation].execute
            else @commands_unar[operation].execute
            end 
        else
            @stat.a = @stat.result
            puts "Now first argument is #{@stat.result}"
            puts "Input operation"
            operation = gets.chomp.strip.downcase
            if @commands_binar.key?(operation)
            puts "Seconnd argument"
            @stat.b = gets.chomp.to_i
            @commands_binar[operation].execute
            else @commands_unar[operation].execute
            end
        end
        puts "Result is: #{@stat.result}"
end
end
end

calculatorC = Calculator.new
calculatorC.Calculator_Start