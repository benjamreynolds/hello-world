;; SICP Exercise 1.33
;;
;; Instructions:
;;
;; You can obtain an even more general version of accumulate (Exercise 1.32) by
;; introducing the notion of a filter on the terms to be combined. That is,
;; combine only those terms derived from values in the range that satisfy a
;; specified condition. The resulting filtered-accumulate abstraction takes the
;; same arguments as accumulate, together with an additional predicate of one
;; argument that specifies the filter. Write filtered-accumulate as a procedure.

(define (filtered-accumulate filter combiner null-value term a next b)
  (cond ((> a b) null-value)
        ((filter a)
         (filtered-accumulate filter combiner null-value term (next a) next b))
        ((else (combiner
                (term a)
                (accumulate combiner null-value term (next a) next b))))))

;; Show how to express the following using filtered-accumulate:
;; the sum of the squares of the prime numbers in the interval a to b (assuming
;; that you have a prime? predicate already written)

(define (sum-of-squares-of-primes n)
  (define (inc n) (+ n 1))
  (define (square n) (* n n))
  (filtered-accumulate prime? + 0 square 0 inc n))

;; the product of all the positive integers less than n that are relatively prime
;; to n (i.e., all positive integers i<n such that GCD(i,n)=1).

;; PUNT
