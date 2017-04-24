def ftoc(fahrenheit)
  zero_celsius = (5.0/9) * 32
  celsius = (fahrenheit * (5.0/9)) - zero_celsius
  celsius
end

def ctof(celsius)
  zero_celsius = (5.0/9) * 32
  fahrenheit = (celsius + zero_celsius) * (9.0/5)
end
