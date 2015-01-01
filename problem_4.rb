def palindrome? (number)
  number.to_s == (number.to_s).reverse
end

upper_limit = 1000
a = []
(1...upper_limit).each do |x|
  (1...upper_limit).each do |y|
    product = x * y
    a << product if palindrome?(product)
  end
end

puts a.last
