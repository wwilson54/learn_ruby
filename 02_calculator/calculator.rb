#write your code here
def add num1, num2
    sum = num1 + num2
end

def subtract num1, num2
    num1 - num2
end

def sum num1
    sum = 0
    num1.each {|x| sum += x}
    sum
end

def multiply (num1, *nums)
    sum = num1
    nums.each {|x| sum *= x}
    sum
end

def power num1, num2
    num1**num2
end

def factorial num1
    result = 1
    while num1 > 1
        result *= num1
        num1 -= 1
    end
    result
end