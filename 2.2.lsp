(define (line x1 y1 x2 y2)
    (define first (cons x1 y1))
    (define last (cons x2 y2))
    (cons first last))
(define (first l) (car l))
(define (last l) (cdr l))
(define (xpoint p) (car p))
(define (ypoint p) (cdr p))

(define (printpoint p)
    (newline)
    (display "(")
    (display (xpoint p))
    (display ",")
    (display (ypoint p))
    (display ")")
    0)
(define (mid l)
    (define (avrg a b) (/ (+ a b) 2))
    (cons (avrg (xpoint (first l)) (xpoint (last l)))
        (avrg (ypoint (first l)) (ypoint (last l)))))	
