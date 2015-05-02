;;
;; misc keybinds
;;
(global-set-key "\C-cc" 'comment-region)
(global-set-key "\C-cu" 'uncomment-region)
(global-set-key "\M-g" 'goto-line)


;;
;; assign real role for C-h
;;
(global-set-key "\C-h" 'delete-backward-char)
(global-set-key [delete] 'delete-char)
(global-set-key "\C-x\C-h" 'help)


;;
;; assign real role for C-m, C-j
;;
(global-set-key "\C-m" 'newline-and-indent)
(global-set-key "\C-j" 'newline)


;;
;; the habit from xyzzy
;;
(global-set-key "\M-$" 'replace-regexp)
(global-set-key "\M-%" 'replace-string)


;;
;; enabled windmove
;;
(windmove-default-keybindings)

;;
;; 昔こっちにバインドしてた手癖が抜けない
;;
(global-set-key (kbd "C-x '") 'next-error)


(global-set-key (kbd "C-x C-j") 'eval-print-last-sexp)
