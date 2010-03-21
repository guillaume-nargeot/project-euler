(load-file "utils.clj")

(def e-seq
  (map #(if (zero? (rem % 3)) (* 2 (/ % 3)) 1) (iterate inc 2)))

(defn e-frac [n]
  (let [c-seq (reverse (take (dec n) e-seq))]
    (+ 2 (reduce #(/ (+ %1 %2)) 0 c-seq))))

(println (reduce + (to-d (.numerator (e-frac 100)))))