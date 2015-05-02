;;
;; dmacro
;;
(defconst *dmacro-key* [?\C-\"] "repeat trigger")
(global-set-key *dmacro-key* 'dmacro-exec)
(autoload 'dmacro-exec "dmacro" nil t)
