(setq el-get-dir "~/.emacs.d/elisp/el-get/")
(require 'el-get)
(el-get
 'sync
 '(
   magit
   auto-save-buffers-enhanced
   exec-path-from-shell
   ))

;; (el-get-elpa-build-local-recipes)
;; (el-get-emacswiki-build-local-recipes)
