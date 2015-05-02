(defun set-tab-width (n)
  (interactive "p")
  (setq tab-width
        (if (= n 1)
            (if (= tab-width 8) 4 8)
          n))
  (redraw-frame (selected-frame))
  (message "current tab-width: %s" tab-width))
(global-set-key (kbd "C-x C-i") 'set-tab-width)
