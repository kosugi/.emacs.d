(add-to-list 'load-path (expand-file-name "~/.emacs.d/site-lisp"))

(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

;;
;; package.el
;;
(require 'package)
(setq package-user-dir "~/.emacs.d/elisp/elpa/")
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;;
;; init-loader
;;
(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")
(put 'narrow-to-region 'disabled nil)
