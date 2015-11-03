(if window-system
    (progn
      (global-set-key [?\C-\M-=] (lambda ()
                                   (interactive)
                                   (text-scale-increase 0.5)))
      (global-set-key [?\C-\M--] (lambda ()(interactive)
                                   (text-scale-increase -0.5)))))
