;;key-chord
(require 'key-chord)
(key-chord-mode 1)

;; original key-chord setting
(setq key-chord-two-keys-delay 0.05)


;; ;; http://qiita.com/zk_phi/items/e70bc4c69b5a4755edd6
;; しばらく key-chord.el を使っていて気づいたことは、「同時押しは想像よりは大変」ということです。

;; ２つのキーを同時に押すために、その２つのキーの位置に２本の指を移動して、いっぺんに押すので、単語を入力するときのように流れで１つづつキーを押すのに比べるとけっこう大変です。少なくとも、同じスピードではそうそう押せません。

;; そこで自分が考えたのは、今まで key-chord.el が「２つのキー入力の間が十分短いこと」だけで同時押しを判定していたのを、「ほかのキー入力からワンテンポ遅れていること」も条件に加えることで誤入力を減らすことです。

;; 従来の key-chord.el イメージ：

;;  \ カタカタ /      \ バン /     \ カタカタ /
;; h o g e h o g e      hj       h o g e h o g e . . .
;; ----------------------------------------------------
;;                   |< 0.1s|
;; 改良後 key-chord.el イメージ：

;;  \ カタカタ /      \ バン /     \ カタカタ /
;; h o g e h o g e      hj       h o g e h o g e . . .
;; ----------------------------------------------------
;;                  |< 0.15s|
;;               |> 0.1s||> 0.25s|
;; (経験的に、 key-chord の前の待ち時間と後の待ち時間は別々に設定できるようにしたほうがよさそうでした)

;; この方法なら、たとえば final と入力しても i と n の間が十分短ければ、一連の入力の一部とみなされて fi の key-chord は発火しません。

;; key-chord improved version setting
;; (setq key-chord-two-keys-delay           0.10
;;       key-chord-safety-interval-backward 0.05
;;       key-chord-safety-interval-forward  0.15)



;; key setting for function
(key-chord-define-global "[a" 'auto-complete-mode)
(key-chord-define-global "]a" 'auto-complete-mode)

(key-chord-define-global "[b" 'bookmark-set)
(key-chord-define-global "]b" 'bookmark-set)

(key-chord-define-global "[c" 'helm-flycheck)
;d
(key-chord-define-global "[e" 'emmet-expand-line)
(key-chord-define-global "]e" 'emmet-expand-line)

;(key-chord-define-global "[f" ')
;(key-chord-define-global "[g" ')
(key-chord-define-global "[h" 'anything-c-apropos)
(key-chord-define-global "]h" 'anything-c-apropos)
;i
(key-chord-define-global "[j" 'open-junk-file)
(key-chord-define-global "]j" 'open-junk-file)

;k
(key-chord-define-global "[l" 'anything-bookmarks)
(key-chord-define-global "]l" 'anything-bookmarks)
;m
;; Emacsでも他のアプリケーションのようにメニューバーがあります。
;; 主なコマンドをメニュー選択できるの便利です。
;; しかし、それを操作するにはマウスを使う必要があります。
;; Emacsユーザならば lacarte.el を使ってキーボードで操作しましょう。
;; M-x lacarte-execute-menu-command はメニューをEmacsの補完インターフェースで選択します。
;; 確かにキーボードで操作できますが、何度もTABを押す必要があって面倒です。

;(key-chord-define-global "[m" 'lacarte-execute-menu-command)
;n
(key-chord-define-global "[o" 'recentf-open-files)
(key-chord-define-global "]o" 'recentf-open-files)
;p
;(key-chord-define-global "[q" 'query-replace-regexp)
(key-chord-define-global "[q" 'vr/query-replace)
(key-chord-define-global "]q" 'vr/query-replace)

(key-chord-define-global "[r" 'helm-recentf)
(key-chord-define-global "]r" 'helm-recentf)
;s
(key-chord-define-global "[t" 'browse-kill-ring)
;u
(key-chord-define-global "[v" 'view-file)
;w
;x
(key-chord-define-global "[y" 'anything-yasnippet-2)
;z
(key-chord-define-global "[;" 'comment-or-uncomment-region)


;(key-chord-define-global "[1" 'one-key-open-associated-menu-set)

(key-chord-define-global "[;" 'other-window)
(key-chord-define-global ";]" 'other-window)
(key-chord-define-global "]'" 'delete-other-windows)
(key-chord-define-global "']" 'delete-other-windows)
;(key-chord-define-global "" 'kill-buffer)

;;key setting for mode
(key-chord-define-global ";a" 'ag)
;b
;c
;d
(key-chord-define-global ";e" 'emmet-expand-yas)
(key-chord-define-global ";f" 'follow-mode)
;g
;h
;i
(key-chord-define-global ";j"'eval-print-last-sexp)
					;k
(key-chord-define-global ";l" 'bookmark-bmenu-list) 

;m
(key-chord-define-global ";m" 'migemo-toggle-isearch-enable)
;n
;; (key-chord-define-global ";o" 'outline-mode)
;; (key-chord-define-global ";p" 'php-mode)
;q
;; (key-chord-define-global ";r" 'ruby-mode)
;s
;t
;u
(key-chord-define-global ";v" 'visible-mark-mode)
;w
;x
(key-chord-define-global ";y" 'helm-yas-complete)
(key-chord-define-global ";z" 'emmet-mode)

