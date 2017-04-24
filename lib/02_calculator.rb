def add(num1, num2)
  num1 + num2

end

def subtract(num1, num2)
  num1 - num2
end

def sum(arr)
  if arr.empty?
    return 0
  end
  arr.reduce(:+)
end

def multiply(arr)
  arr.reduce(:*)
end

def power(num, power)
  num ** power
end

def factorial(n)
  if n == 0
    return 1
  end
    
  range = (1..n).to_a
  range.reduce(:*)
end
