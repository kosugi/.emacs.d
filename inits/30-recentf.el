;;
;; recent files menu
;;
(require 'recentf)
(setq recentf-save-file "~/.emacs.d/var/recentf")
(recentf-mode 1)
(global-set-key "\C-xf" 'recentf-open-files)
