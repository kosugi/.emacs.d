;;
;; auto-save-buffers-enhanced
;; 特定のファイルのみ有効にする
;;
(setq auto-save-buffers-enhanced-include-regexps '(".+"))

;;
;; auto-save-buffers-enhanced
;; 自動保存除外ファイル
;;
(setq auto-save-buffers-enhanced-exclude-regexps '("^not-save-file" "\\.ignore$"))

;;
;; auto-save-buffers-enhanced
;; 自動保存間隔 (秒)
;;
(setq auto-save-buffers-enhanced-interval 0.5)
