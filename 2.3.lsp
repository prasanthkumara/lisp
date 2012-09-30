(define (line x1 y1 x2 y2)
    (define first (cons x1 y1))
    (define last (cons x2 y2))
    (cons first last))
(define (first len) (car len))
(define (last len) (cdr len))
(define (xpoint p) (car p))
(define (ypoint p) (cdr p))

(define (printpnts p)
    (newline)
    (display "(")
    (display (xpoint p))
    (display ",")
    (display (ypoint p))
    (display ")")
    0)

(define (perimeter r) (* 2 (+ (length r) (breadth r))))
(define (area r) (* (length r) (breadth r)))

(define (points_rect xc len b)
    (let ((a xc)
        (b (cons (+ (xpoint xc) len) (ypoint xc)))
        (c (cons (+ (xpoint xc) len) (+ (ypoint xc) b)))
        (d (cons (xpoint xc) (+ (ypoint xc) b))))
    (cons a (cons b (cons c d))) ))

(define (parametric_rect a len b)
    (cons a (cons len b)))
(define (length r)
    (car (cdr r)))
(define (breadth r)
    (cdr (cdr r)