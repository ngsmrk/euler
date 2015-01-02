(defn palindrome? [number]
  (= (reverse (str number)) (seq (str number))
  )
)

(palindrome? 1111)

(let [upper-limit 1000]
  (last (for [x (range 1 upper-limit) y (range 1 upper-limit) :when (palindrome?(* x y))] (* x y)))
)
