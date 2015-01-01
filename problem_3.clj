(def number 600851475143)

;; use sqrt to limit range
;; gets all prime elements between 2 and the end of the range
(filter #(= (rem number %) 0) (range 2(. Math sqrt number)))
