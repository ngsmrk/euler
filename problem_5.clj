(defn gcd [a b] (if (zero? b) a (recur b (mod a b))))  ; greatest common divisor

(defn lcm [a b] (/ (* a b) (gcd a b)))                 ; lowest common multiple

(reduce #(lcm %1 %2) (range 1 21))
