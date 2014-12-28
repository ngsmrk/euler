;; use anon function simplified syntax
(println (apply + (filter #(zero? (min (mod % 3) (mod % 5))) (take 1000 (iterate inc 0)))))

(println(apply + (filter
  #(or
    (zero?
    (mod % 3))
    (zero?
    (mod % 5))
  )
     (take 1000 (iterate inc 0))
 )))
