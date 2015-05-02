;;
;; M-x insert-timestamp     -> 2015-05-01 02:45:07
;; C-u M-x insert-timestamp -> 2015-05-01T02:45:07+09:00
;;
(defun insert-timestamp (n)
  (interactive "p")
  (insert (format-time-string
           (if (= n 1)
               "%04Y-%02m-%02d %H:%M:%S"
             "%04Y-%02m-%02dT%H:%M:%S+09:00"))))
