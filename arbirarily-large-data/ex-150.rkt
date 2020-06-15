;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-150) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
; N -> Number
; computes (+ n pi) without using +

(check-within (add 4 3) (+ 4 3) 0.001)
(check-within (add 0 0) 0 0.001)

(define (add x n)
  (cond
    [(zero? n) x]
    [else (add1 (add x (sub1 n)))]))
