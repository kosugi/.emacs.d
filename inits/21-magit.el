(setq magit-last-seen-setup-instructions "1.4.0")
(setq magit-auto-revert-mode nil)
(require 'magit)
(global-set-key (kbd "C-x x s") 'magit-status)
(set-face-foreground 'magit-diff-add "#b9ca4a") ; 追加した部分を緑に
(set-face-foreground 'magit-diff-del "#d54e53")  ; 削除した 部分を赤に
(set-face-background 'magit-item-highlight "#000050") ; 選択項目ハイライトがうっとうしいので背景色と同化
