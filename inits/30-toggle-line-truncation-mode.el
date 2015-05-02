;;
;; toggle line truncation mode
;;
(defun toggle-line-truncation-mode ()
  (interactive)
  (setq truncate-lines (not truncate-lines))
  (redraw-display))
(define-key ctl-x-map "t" 'toggle-line-truncation-mode)
