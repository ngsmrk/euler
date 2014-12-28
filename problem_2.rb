def fibonacci(qty)
  return qty if qty <= 1
  return fibonacci(qty - 1) + fibonacci(qty - 2)
end

puts fibonacci(7)

# do it with a temp variable
a = [0, 1]
(0..5).each do
  a << a[-1] + a[-2]
end

puts a

# do it with an iterator
output = (0..5).each_with_object([0, 1]) do | _, obj |
  obj << obj[-1] + obj[-2]
end

puts output

max_value = 4_000_000

a = [0, 1]
while (x = a[-1] + a[-2]) < max_value do
  a << x
end

puts a.select { | x | x.even? }.reduce (:+)
