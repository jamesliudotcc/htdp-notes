;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-151) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
; N -> Number
; computes (* x y) without using *

(check-expect (multiply 4 3) (* 4 3))
(check-expect (multiply 0 0) 0)

(define (multiply x y)
  (cond
    [(zero? x) 0]
    [(zero? y) 0]
    [(zero? (sub1 x)) y]
    [else (+ (multiply (sub1 x) y) y)]))