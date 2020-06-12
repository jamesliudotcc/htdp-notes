;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-143) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
(define (checked-average alot)
  (cond
    [(empty? alot) "Empty lists of numbers have no average"]
    [else
     (/ (sum alot) (how-many alot))]))
  

(define (sum alot)
  (cond
    [(empty? alot) 0]
    [else (+ (first alot) (sum (rest alot)))]))

(define (how-many alot)
  (cond
    [(empty? alot) 0]
    [else (+ 1 (how-many (rest alot)))]))