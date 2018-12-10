(ns a3_1)

(defn make-accumulator [start_money]
  (def money start_money)
  (defn add [n]
    (def money (+ money n))
    (println money)
    )
  add
  )

(def a (make-accumulator 10))
(a 2)