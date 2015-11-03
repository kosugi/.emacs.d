(set-face-attribute 'default nil :family "Migu 1M" :height 140)
(set-fontset-font (frame-parameter nil 'font)
                  'japanese-jisx0208
                  (font-spec :family "Migu 1M" :size 16))

(set-face-attribute 'default nil :family "Migu 1M" :height 140)
(set-fontset-font (frame-parameter nil 'font)
                  'japanese-jisx0208
                  (font-spec :family "Migu 1M"))
(add-to-list 'face-font-rescale-alist
             '(".*Migu 1M.*" . 1.2))
