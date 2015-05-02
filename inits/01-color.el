(global-font-lock-mode t)
(set-face-foreground font-lock-comment-face "#00D000")
(set-face-foreground font-lock-string-face "#D0D000")
;(set-face-foreground font-lock-doc-face "yellow")
(set-face-foreground font-lock-keyword-face "#00D0D0")
(set-face-foreground font-lock-builtin-face "#6666FF")
(set-face-foreground font-lock-function-name-face "#EEEEEE")
(set-face-foreground font-lock-variable-name-face "orange")
(set-face-foreground font-lock-type-face "white")
(set-face-foreground font-lock-constant-face "cyan")
;(set-face-foreground font-lock-warning-face "cyan")
(set-face-foreground 'fringe "#666699")
(set-face-background 'fringe "#000030")

;;
;; configure whitespace visibility
;;
(defface my-face-b-1 '((t (:background "medium aquamarine"))) nil)
(defface my-face-b-2 '((t (:background "#006"))) nil)
(defface my-face-u-1 '((t (:foreground "SteelBlue" :underline t))) nil)
(defvar my-face-b-1 'my-face-b-1)
(defvar my-face-b-2 'my-face-b-2)
(defvar my-face-u-1 'my-face-u-1)
(defadvice font-lock-mode (before my-font-lock-mode ())
  (font-lock-add-keywords
   major-mode
   '(
     ("　" 0 my-face-b-1 append)
     ("\t" 0 my-face-b-2 append)
     ("[ ]+$" 0 my-face-u-1 append)
     )))
(ad-enable-advice 'font-lock-mode 'before 'my-font-lock-mode)
(ad-activate 'font-lock-mode)
(add-hook 'find-file-hooks '(lambda ()
                              (if font-lock-mode
                                  nil
                                (font-lock-mode t))) t)

(if window-system
    (progn
      (setq initial-frame-alist
            (append '((top . 25)
                      (left . 25))
                    initial-frame-alist))
      (setq default-frame-alist
            (append '((width . 96)
                      (height . 35)
                      (background-color . "#000040")
                      (foreground-color . "#D0D0D0")
                      (cursor-color . "#FFFF33"))
                    default-frame-alist))
      (setq frame-title-format (format "emacs@%s : %%f" (system-name)))
      (set-frame-parameter nil 'alpha 90)))
