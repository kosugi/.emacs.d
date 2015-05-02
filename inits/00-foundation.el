;;
;; foundation definition
;;

(setq next-line-add-newlines nil)
(setq inhibit-startup-message t)
(line-number-mode t)
(column-number-mode t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(setq scroll-conservatively 1)
(setq kill-whole-line nil)
(setq require-final-newline t)
(setq ring-bell-function 'ignore)
(setq echo-keystrokes 0.1)
(setq-default truncate-lines t)
(setq default-major-mode 'text-mode)
(setq-default indent-tabs-mode nil)

;;
;; 現在行をハイライトする
;;
(global-hl-line-mode 1)
(set-face-background 'hl-line "#000060")

;;
;; リージョンをハイライトする
;;
(transient-mark-mode t)

;;
;; yes/no y/n
;;
(defalias 'yes-or-no-p 'y-or-n-p)

;;
;; バックアップ設定
;;
(setq make-backup-files nil)
(setq auto-save-list-file-prefix "~/.emacs.d/var/auto-save-list/")
