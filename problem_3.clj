(defn divisors [number]
(filter #(= (rem number %) 0) (range 2(. Math sqrt number)))
)

(defn prime [number]
  (= (count (divisors number)) 0)
)

(last (filter #(prime %) (divisors 600851475143)))
