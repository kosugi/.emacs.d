;; cp 90-local.sample.el inits/90-local.el

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


(modify-coding-system-alist 'file "/foo/" 'utf-8-unix)
(modify-coding-system-alist 'file "/bar/" 'utf-8-dos)
(add-to-list 'file-coding-system-alist '("\\.strings$" utf-16be . utf-16be))
(add-to-list 'file-coding-system-alist '("/COMMIT_EDITMSG$" utf-8-unix . utf-8-unix))

(let ((path "some:paths"))
  (setenv "PATH" path)
  (setq exec-path (split-string path ":")))

(setq user-full-name "")
(setq user-mail-address "")

(defun my-find-file-hook ()
  (let ((n (buffer-file-name)))
    (cond ((string-match "/foo/.*\\.bar" n)
           (setq indent-tabs-mode t)
           (setq sgml-basic-offset 4)
           (setq tab-width 4))
          ((string-match "/baz/" n)
           (setq indent-tabs-mode nil)
           (setq tab-width 4)))))
(add-hook 'find-file-hook 'my-find-file-hook)
