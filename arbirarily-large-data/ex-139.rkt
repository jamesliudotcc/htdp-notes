;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-139) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
; A List-of-amounts is one of:
; -- '()
; -- '(cons PositiveNumber List-of-amounts)

; E.g. (cons 1 '())
; E.g. (cons 1 cons (2 '()))

(check-expect (sum-of-loa (cons 1 '())) 1)
(check-expect (sum-of-loa '()) 0)
(check-expect (sum-of-loa (cons 2 (cons 1 '()))) 3)

(define (sum-of-loa loa)
  (cond
    [(empty? loa) 0]
    [else (+ (first loa) (sum-of-loa (rest loa)))]))