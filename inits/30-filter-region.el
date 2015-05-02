;;
;; filter-region
;;
(autoload 'filter-region "filter-region" nil t)
(global-set-key [?\C-|] 'filter-region)
(global-set-key [?\M-|] 'shell-command-on-region)
