;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex35) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Strings are a sequence of characters
; Striing -> String
; extracts the last character from a string
; given "Hi" expect "i"
; given "world" expect "world"

(define (string-last string)
  (string-ith string (- (string-length string) 1)))