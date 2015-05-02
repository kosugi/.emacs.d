(add-to-list 'load-path "/usr/local/Cellar/emacs/current/share/emacs/site-lisp/skk")

(require 'skk-setup)
(require 'skk-study)
;;(require 'skk-autoloads)
(setq default-input-method "japanese-skk")
;(global-set-key "\C-x\C-j" 'skk-mode)
;(global-set-key "\C-xj" 'skk-mode)

;; 日本語表示しない
;; (setq skk-japanese-message-and-error nil)
;; メニューを日本語にしない -> toolbar 非表示だし.
;; (setq skk-show-japanese-menu nil)
;; 注釈の表示
;; (setq skk-show-annotation nil)
;; インジケータを左端に.
(setq skk-status-indicator 'left)

(setq skk-server-host "localhost")
(setq skk-server-portnum 1178)
(setq skk-jisyo-code 'utf-8-unix)
(setq skk-large-jisyo nil)

(setq skk-use-jisx0201-input-method t)

;; skk モードの表示のカスタマイズ
(setq skk-latin-mode-string "[A]")
(setq skk-hiragana-mode-string "[あ]")
(setq skk-katakana-mode-string "[ア]")
(setq skk-jisx0208-latin-mode-string "[Ａ]")
(setq skk-jisx0201-mode-string "[ｱ]")
(setq skk-indicator-use-cursor-color nil)
(setq skk-show-inline 'vertical)
(setq skk-use-color-cursor "orange")
(setq skk-inline-show-face nil)
(setq skk-inline-show-background-color "blue")

(custom-set-variables '(skk-rom-kana-rule-list
                        '(("\\" nil "\\")
                          ("@" nil "@")
                          (":" nil ":")
                          (";" nil ";")
                          ("?" nil "?")
                          ("," nil ", ")
                          ("." nil ". ")
                          ("z<" nil "、")
                          ("z>" nil "。")
                          ("hh" "h" ("ッ" . "っ"))
                          ("mm" "m" ("ン" . "ん")))))
(setq skk-jisx0201-rule-list
      '(("hh" "h" "ｯ")
        ("mm" "m" "ﾝ")))


;;((skk-comp-by-history) (skk-comp-from-jisyo skk-jisyo) (skk-look-completion))
;; (custom-set-variables '(skk-completion-prog-list
;; 			'((skk-comp-from-jisyo "~/Dropbox/config/skk-jisyo"))))

;Associate nfo file suffix with 'IBM codepage 437' encoding
(add-to-list 'auto-coding-alist '("/\\.skk-jisyo$" . utf-8))
