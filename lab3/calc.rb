def fact(n)
    n == 0 ? 1 : n * fact(n - 1)
end

last = ""
mem = ""
opertion_massiv = ["--", "sqrt", "sin", "cos", "tan", "ctan", "exp", "ln", "!", "mr","mw"]
while 1
puts 'Calculator has started'
#print last
if last == ""
    puts "First argument"
    a = gets.chomp.to_i
    puts "Input operation"
    operation = gets.chomp.strip
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
    last = mem
    puts "Now first argument is #{mem}" 
end

end
