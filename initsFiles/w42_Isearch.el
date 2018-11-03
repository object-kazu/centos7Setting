;; isearch-dabbrev.el は、 インクリメンタルサーチ 中に
;; TABを押すことで dabbrev (動的略語展開)を行うものです。
;; つまり、検索語を完全に入力しなくても適宜補完してくれます。

(define-key isearch-mode-map (kbd "<tab>") 'isearch-dabbrev-expand)

