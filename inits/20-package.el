(require 'cl)

(defvar installing-package-list
  '(
    init-loader
    el-get
    php-mode
    markdown-mode
;;    scss-mode
    haskell-mode
;;    google-c-style
    yaml-mode
    ))

(let ((not-installed (loop for x in installing-package-list
			   when (not (package-installed-p x))
			   collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
      (package-install pkg))))
