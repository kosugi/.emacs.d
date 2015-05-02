;;
;; バッファ内の HTML コードを Google Chrome の新規タブにレンダリング
;;
(defun push-buffer-to-chrome ()
  (interactive)
  (shell-command
   (concat "osascript > /dev/null ~/Dropbox/bin/chrome.push-buffer.applescript "
           (shell-quote-argument (buffer-substring-no-properties (point-min) (point-max))))))
