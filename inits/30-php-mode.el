;;
;; PHP
;;
(autoload 'php-mode "php-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(defun my-php-mode-hook ()
    (local-set-key [?\C-.] nil)
    (c-set-offset 'defun-block-intro 4)
    (c-set-offset 'comment-intro 0)
    (c-set-offset 'topmost-intro-cont 0)
    (c-set-offset 'arglist-intro 4)
    (c-set-offset 'arglist-close 0)
    (c-set-offset 'statement-block-intro 4)
    (c-set-offset 'arglist-cont-nonempty 0)
    (c-set-offset 'defun-close 0))
(add-hook 'php-mode-hook 'my-php-mode-hook)
(add-to-list 'auto-mode-alist '("\\.ctp$" . html-mode))
