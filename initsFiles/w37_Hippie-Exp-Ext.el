(use-package hippie-exp-ext)
;;(global-set-key (kbd "M-<return>") 'hippie-expand-dabbrev-limited-chars)
(global-set-key (kbd "M-<tab>") 'hippie-expand-dabbrev-limited-chars)
(global-set-key (kbd "C-<tab>") 'hippie-expand-dabbrev-limited-chars)

;;(global-set-key (kbd "s-<return>") 'hippie-expand-dabbrev-limited-chars)
(global-set-key (kbd "s-<tab>") 'hippie-expand-dabbrev-limited-chars)

;; http://d.hatena.ne.jp/itouhiro/20091122
(defadvice dabbrev-expand (around jword (arg) activate)
   (interactive "*P")
   (let* ((regexp dabbrev-abbrev-char-regexp)
          (dabbrev-abbrev-char-regexp regexp)
          char ch)
     (if (bobp)
         ()
       (setq char (char-before)
             ch (char-to-string char))
       (cond
        ;; ァ～ヶの文字にマッチしてる時はァ～ヶが単語構成文字とする
        ((string-match "[ァ-ヶー]" ch)
         (setq dabbrev-abbrev-char-regexp "[ァ-ヶー]"))
        ((string-match "[ぁ-んー]" ch)
         (setq dabbrev-abbrev-char-regexp "[ぁ-んー]"))
        ((string-match "[亜-瑤]" ch)
         (setq dabbrev-abbrev-char-regexp "[亜-瑤]"))
        ;; 英数字にマッチしたら英数字とハイフン(-)を単語構成文字とする
        ((string-match "[A-Za-z0-9]" ch)
;;         (setq dabbrev-abbrev-char-regexp "[A-Za-z0-9]"))
         (setq dabbrev-abbrev-char-regexp "[A-Za-z0-9-]")) ; modified by peccu
        ((eq (char-charset char) 'japanese-jisx0208)
         (setq dabbrev-abbrev-char-regexp
               (concat "["
                       (char-to-string (make-char 'japanese-jisx0208 48 33))
                       "-"
                       (char-to-string (make-char 'japanese-jisx0208 126 126))
                       "]")))))
     ad-do-it))
