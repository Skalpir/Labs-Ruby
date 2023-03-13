def fact(n)
    n == 0 ? 1 : n * fact(n - 1)
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

stack = []
last = ""
mem = ""
opertion_massiv = ["--", "sqrt", "sin", "cos", "tan", "ctan", "exp", "ln", "!", "mr","mw", "pop", "push"]
while 1
puts 'Calculator has started'
#print last
if last == ""
    puts "First argument"
    a = gets.chomp.to_i
    puts "Input operation"
    operation = gets.chomp.strip.downcase
    if !opertion_massiv.include? operation
    puts "Seconnd argument" 
    b = gets.chomp.to_i
    end 
else
    a = last
    puts "Now first argument is #{last}"
    puts "Input operation"
    operation = gets.chomp.strip
    if !opertion_massiv.include? operation
    puts "Seconnd argument"
    b = gets.chomp.to_i
    end
end

if operation == "+"
    puts a + b
    last = a + b
end

if operation == "-"
    puts a - b
    last = a - b
end

if operation == "*"
    puts a * b
    last = a * b
end

if operation == "/" and b != 0
    puts a / b
    last = a / b
elsif b == 0 and operation == "/"
puts "Second argument = 0"
end

if operation == "mod"
    puts a % b
    last = a % b
end

if operation == "pow"
    puts a.pow(b)
    last = a.pow(b)
end

if operation == "--"
    puts a - 1
    last = a - 1
end 

if operation == "sqrt"
    puts Math.sqrt(a)
    last = Math.sqrt(a)
end 

if operation == "sin"
    puts Math.sin(a)
    last = Math.sin(a)
end 

if operation == "cos"
    puts Math.cos(a)
    last = Math.cos(a)
end 

if operation == "tan"
    puts Math.tan(a)
    last = Math.tan(a)
end

if operation == "ctan"
    puts 1/Math.tan(a)
    last = 1/Math.tan(a)
end

if operation == "exp"
    puts Math.exp(a)
    last = Math.exp(a)
end

if operation == "ln"
    puts Math.log(a)
    last = Math.log(a)
end

if operation == "!"
    puts fact(a)
    last = fact(a)    
end

if operation == "mw" #mem write
    mem = a
    puts "Now is mem cell is #{mem}" 
end

if operation == "mr" #mem read
    a = mem 
    puts "Now first argument is #{mem}" 
end

if operation == "pop"
    if stack[0] == nil
        puts "Error"
    else 
        puts stack.pop
    end
end

if operation == "push"
    stack.push(a)
    puts "#{a} is pushed in stack"
end

if operation == "primes"
    stack = prime(b)
    puts stack[stack.size-1] 
end

end