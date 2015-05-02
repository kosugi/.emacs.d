;;
;; for buffer moving convenient
;;
(defun matches-by-regexps (s xs)
  (cond ((not xs) nil)
        ((string-match (car xs) s) t)
        (t (matches-by-regexps s (cdr xs)))))
(defun my-sibling-buffer (f)
  (let ((cur (buffer-name)))
    (while (let ((next (buffer-name (funcall f))))
             (and
              (not (string= cur next))
              (matches-by-regexps next '("^\\*Messages\\*$"
                                         "^\\*Completions\\*$"
                                         "^\\*\[Aa\]nything.*\\*$"
                                         "^\\*Help\\*$"
                                         "^\\*Backtrace\\*$"
                                         "^\\*Buffer List\\*$"
                                         "^\\*Compile-Log\\*$"
                                         "^\\*auto-install ")))))))
(defun my-next-buffer () (interactive) (my-sibling-buffer 'next-buffer))
(defun my-prev-buffer () (interactive) (my-sibling-buffer 'previous-buffer))
(global-set-key [?\C-,] 'my-prev-buffer)
(global-set-key [?\C-.] 'my-next-buffer)
(define-key ctl-x-map "," 'previous-buffer)
(define-key ctl-x-map "." 'next-buffer)

;;
;; create scratch
;;
(defun new-working-scratch-buffer ()
  (interactive)
  (switch-to-buffer (generate-new-buffer "*scratch*")))
(defun new-working-file-buffer ()
  (interactive)
  (find-file
   (format "~/Dropbox/memos/%s.%s"
           (format-time-string "%Y-%m%d-%H%M%S")
           system-name)))
(global-set-key (kbd "C-x b") 'new-working-scratch-buffer)
(global-set-key (kbd "C-x B") 'new-working-file-buffer)

(global-set-key "\C-xp" (lambda () (interactive) (other-window -1)))
(global-set-key [C-tab] 'other-window)
