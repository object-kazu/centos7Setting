;; とりあえず基本は M-x quickrun 。
;; メジャーモードでプログラミング言語を自動判別し、
;; 適切なコマンドで実行してくれます。
;; 実行に使うコマンドは「#!」がついていればそれを使い、
;; 登録されているデフォルトのコマンドで実行します。
;; ruby-modeの場合、デフォルトでrubyコマンドが使われますが、
;; 「#!/usr/local/bin/ruby18」と書いてあればそれを使います。
;; quickrunでの実行結果はポップアップしますが、
;; qを押せば元のウィンドウ構成に戻してくれる親切設計です。
;; 実行に10秒(変数 quickrun-timeout-seconds で設定可能)以上かかったときは、
;; 時間がかかりすぎる場合とみなして自動的にプロセスを殺します。
;; C-u M-x quickrun: 別なインタプリタを選択

;; C-u M-x quickrun では、どれで実行するのか選べます。
;; Rubyの場合、デフォルトのruby/ruby以外にもruby/mrubyが用意されていて、
;; それを選択すれば mrbc や mruby で実行してくれます。

;; C-u C-u M-x quickrunでコンパイルのみ
;; C-u C-u M-x quickrun ではコンパイルのみを実行します。
;; インタプリタ言語の場合は文法チェックをします。
;; Rubyの場合は ruby -c を実行します。

;; M-x quickrun-with-argで引数をつける
;; プログラムで引数をつけたいときは M-x quickrun-with-arg を使います。
;; あるいはバッファローカルな quickrun-option-args 変数に設定します。
;; スクリーンショットのように1行目のS式を評価してからM-x quickrunを
;; 実行する方法もあります。
;; 20141106135812.png
;; Fig1: 引数を指定する
;; 入力の自動化

;; 入力を求めてくる対話的プログラムの自動実行もサポートしています。
;; ファイル名に「.qrinput」というサフィックスをつけたファイルを用意し、
;; そこに入力する内容を書けば、実行時にその内容を入力してくれます。
;; 入力のパターンが複数ある場合は、
;; quickrun-input-file-extension で他のサフィックスを指定します。
;; 20141106140319.png
;; Fig2: .qrinputファイルで入力を指定
;; もう一つの方法として M-x quickrun-shell で
;; eshell を使って実行させることもできます。
;; 20141106140545.png
;; Fig3: M-x quickrun-shell
;; helm/anythingインターフェース

;; 現時点でなにができるかを知りたければ、
;; helm をインストールして
;; M-x helm-quickrun を実行してください。

;; http://rubikitch.com/2014/11/06/quickrun/

;; exec-path-from-shell-initialize
;; for lua
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))
(executable-find "lua")

;; quickrun
(require 'quickrun)
;; (use-package quickrun
;;  :bind ("C-c r" . quickrun)
;;  :config
;;  (push '("*quickrun*") popwin:special-display-config)
;;  (setq quickrun-timeout-seconds 20))

(global-set-key (kbd "<f11>") 'quickrun) 
;; (global-set-key (kbd "<f11>") 'quickrun-with-arg)


;;rspec のための設定
(global-set-key (kbd "<f12>") 'rspec-verify)
