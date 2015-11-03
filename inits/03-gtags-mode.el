;;
;; gtags-mode
;;
(require 'gtags)
(autoload 'gtags-mode "gtags" nil t)
(defun my-gtags-mode-hook ()
  (local-set-key (kbd "C-<") 'gtags-find-rtag)
  (local-set-key (kbd "C->") 'gtags-find-tag-from-here)
  ;;(local-set-key (kbd "M-.") 'gtags-find-tag-from-here)
  (local-set-key (kbd "M-,") 'gtags-pop-stack))
(add-hook 'gtags-mode-hook #'my-gtags-mode-hook)
