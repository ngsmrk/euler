(defn pow [n] (* n n))

(- (pow
  (apply +
    (range 1 101)
    ))

  (apply +
    (map pow
      (range 1 101))))
