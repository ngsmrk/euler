def pow(n)
  n * n
end

(pow (1..100).reduce (:+)) - ((1..100).inject(0) { | sum, j | sum + pow(j) })
