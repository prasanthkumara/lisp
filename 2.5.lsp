(define (cons x y)
    (lambda (f) (f x y)))
(define (car df) (df (lambda (x y) (p 2 x))))
(define (cdr df) (df (lambda (x y) (p 3 x))))

(define (p x y)
    (define (iter res x y)
        (if (= y 0)
            res
            (iter (* res x) x (- y 1))))
    (iter 1 x y))
