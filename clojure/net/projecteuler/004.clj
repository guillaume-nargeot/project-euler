(ns net.projecteuler.004
  (:use [net.projecteuler.utils :only [palindromic?]]))

(defn problem-004
  "Returns the largest palindrome made from the product of two 3-digit numbers"
  []
  (loop [a 100, b 100, max 0]
    (let [n (* a b)]
          (cond
            (= 1000 a) max
            (= 1000 b) (recur (inc a) (inc a) max)
            (and (palindromic? n) (> n max)) (recur a (inc b) n)
            :default (recur a (inc b) max)))))