;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex34) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Strings represent a sequence of charaters
; String -> String
; extracts the first character from a string
; given: "Hi" expect "H"
; given: "world" expect "world"

;(define (string-first string)
;  (... string ...))

(define (string-first string)
  (string-ith string 0))