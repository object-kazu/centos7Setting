;; 改行の入力方法を統合してキーバインドを自由にする

;; エディタでコードを書くときに、改行文字の入力はほぼ必須だけど、その際にインデントや改行の入力後のカーソル位置の違いなど気になることがある。特にEmacsの場合、newline(C-m/RET)や、newline-and-indent(C-j) 、open-line(C-o)や、reindent-then-newline-and-indent などデフォルトでも様々な改行の入力方法があって、デフォルトではそれぞれ違うキーバインドが割り当てられてる。

;; これが仮に、C-mだけで済ませられれば、C-jやC-oが要らなくなり、押しやすいキーバインドが2つとも自由になる。

;; コードを楽に書きたい

;; コードを書く時は、完全に新規ファイルにプログラムを書くときよりも既存のコードを変更する事のほうが多いかと思う。例えば以下の様なfooメソッドとbarメソッドの間に新たらしいメソッドを書きたいと思ったら、自分は、現在1つしか空行が入ってない状態から、2つ空行を挟んでから書き始めたい。この操作をするためには単に改行を入力するためだけでなく、カーソル位置の変更も伴わなければならない。そのために普通だったRET C-o、とかRET RET C-pとか使って無意識で操作はできるものの毎回この操作をするのが馬鹿らしくなったりする。

;;どのモードでもSmart-newLine
(define-key global-map (kbd "RET") 'smart-newline) ;; or any key as you like


;;ruby-modeの時だけ
(add-hook 'ruby-mode-hook
 (lambda ()
 (smart-newline-mode t)))

