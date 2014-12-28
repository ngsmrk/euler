
(defn fib [a b]
  (cons a
    (lazy-seq
      (fib b
        (+ b a)))))

(apply + (filter even? (take 8(fib 0 1))))

(apply + (filter even? (take-while (partial >= 4000000) (fib 0 1))))
