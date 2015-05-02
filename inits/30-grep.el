(if (eq window-system 'w32)
    (progn
      (global-set-key (kbd "M-s") 'grep)
      (setq grep-command "grep -nH -r -e "))
  (progn
    (global-set-key (kbd "M-s") 'grep-find)
    (setq grep-find-command "gg ")))
