;; backward-forward:マークを統一して圧倒的に使いやすく！eclipse的に

;; 概要

;; Emacsにはふたつのマークリング、
;; mark-ring
;; global-mark-ring
;; があるのですが、
;; あなたは使いこなせていますか？
;; バッファ内の移動において、
;; C-u C-SPC で過去のマーク位置に
;; 戻れる前者は便利ですよね。
;; けれど、僕は後者の
;; global-mark-ring は
;; いまだに使いこなせません。
;; そこで、
;; backward-forward.el は
;; マークを統一して
;; 使いやすくしてくれます。
;; 両者を併合する
;; backward-forward-mark-ring という
;; 第3のマークを用意してくれます。
;; マイナーモード
;; M-x backward-forward-mode 
;; を有効にすれば、
;; 以下の効果が得られます。
;; C-left で過去方向のマークへ移動(backward-forward-previous-location)
;; C-right で未来方向のマークへ移動(backward-forward-next-location)
;; push-mark 時に backward-forward-mark-ring にも登録
;; ggtags-find-tag-dwim 時に push-mark する
;; switch-to-buffer 時に push-mark する;; 2017 1 6 

;;    


;; よって、
;; とりあえず前のマークに行きたいと思ったら C-left
;; 行きすぎたと思ったら C-right
;; でバッファ内でもバッファ間でも
;; 過去にマークした場所に
;; 移動してくれるようになります。
;; この機能が気に入って
;; 頻繁に使用するようになれば、
;; 矢印キーにまで手をのばすのは億劫でしょう。
;; そのときは
;; backward-forward-mode-map に
;; キーを割り当てましょう。

(backward-forward-mode 1)
;; keybindはsmartrepに定義してある。こちらのほうが使いやすい！

;; lisp file を直接編集した
;; (define-key map (kbd "C-c <C-left>") #'backward-forward-previous-location)
;; (define-key map (kbd "C-c <C-right>") #'backward-forward-next-location)


