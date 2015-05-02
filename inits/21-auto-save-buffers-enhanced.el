;;
;; “Wrote” メッセージを抑制
;;
(setq auto-save-buffers-enhanced-quiet-save-p t)

;; *scratch*も ~/.emacs.d/scratch に自動保存
;; (setq auto-save-buffers-enhanced-save-scratch-buffer-to-file-p t)
;; (setq auto-save-buffers-enhanced-file-related-with-scratch-buffer
;;     (locate-user-emacs-file "scratch"))
(auto-save-buffers-enhanced t)

;;; C-x a sでauto-save-buffers-enhancedの有効・無効をトグル
(global-set-key "\C-xas" 'auto-save-buffers-enhanced-toggle-activity)
