;; 最近のEmacsはファイルアクセスを通知する関数
;; (inotifyなどのnotification機能)を使うので
;; ファイルが裏で更新されたら即座にEmacsに通知されるようになっています。
(global-auto-revert-mode 1)

;; 　ffapは、C-x C-fを強化する標準パッケージです。ffapとはFind File At Pointの略で、現在位置のファイル名を認識して、ファイルを開くときのデフォルトにしてくれます。もし現在位置がファイル名ならばC-x C-f RETでそのファイルが開けます。
;; 　また、URLにも対応していて、同じ方法で現在位置のURLもをブラウザで開けます。開きたいURLを直接入力することも可能です。
;; 　また、ffapはファイルの存在確認にも使えます。もし現在位置のファイルが存在するときはffapのデフォルトになりますが、存在しないときはデフォルトにはなりません。存在を確認したらC-gで中断してください。
(ffap-bindings)


(require 'generic-x)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;大文字と小文字をくべつしない
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq completion-ignore-case t)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;yes --> y
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defalias 'yes-or-no-p 'y-or-n-p)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;極力UTF-8とする
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(prefer-coding-system 'utf-8)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;()をハイライトにする
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'paren)
(show-paren-mode t)
(setq show-paren-style 'mixed)
(set-face-background 'show-paren-match (face-background 'default))
(set-face-background 'show-paren-match "#dc7d26")
(set-face-foreground 'show-paren-match "#def")
(set-face-attribute 'show-paren-match nil :weight 'extra-bold)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; junk file
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'open-junk-file)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  カッコの自動挿入
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; smartparens
(require 'smartparens-config)
(smartparens-global-mode t)

;;括弧の自動挿入の挙動をオレオレ設定できるflex-autopair.elで夢を叶える
;; ;;http://d.hatena.ne.jp/uk-ar/20120401/1333282805
;; (require 'flex-autopair)
;; (flex-autopair-mode 1)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; mark-multiple（sublime textみたいに複数選択できる）
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'mark-more-like-this)
(global-set-key (kbd "C-,") 'mark-previous-like-this)
(global-set-key (kbd "C-.") 'mark-next-like-this)


(global-set-key (kbd "C-:") 'mark-all-like-this)
(require 'inline-string-rectangle)
(global-set-key (kbd "C-x r t") 'inline-string-rectangle)



;; mc/mark-all-dwimの挙動

;; このコマンドの挙動は次のようになっています。
;; 1行のregionが指定してある場合はそのregionの内容が対象になる
;; regionが指定されていない場合はそのsymbolが対象になる
;; 複数行のregionを指定してC-uを押せばその間の行が対象になる
;; ありがたいことに、こんな感じで空気読んでくれます。
(global-set-key (kbd "M-,") 'mc/mark-all-dwim)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;括弧の対応を保持して編集する設定
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'paredit) 
(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode) 
(add-hook 'lisp-interaction-mode-hook 'enable-paredit-mode) 
(add-hook 'lisp-mode-hook 'enable-paredit-mode) 


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;cua-modeの設定
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(cua-mode t)
;; そのままだと C-x が切り取りになってしまったりするので無効化
;;(setq cua-enable-cua-keys nil)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; smart scroll
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'smooth-scroll)
(smooth-scroll-mode t)
(setq smooth-scroll/vscroll-step-size 4)

(defun smooth-scroll-off-hook ()
  (smooth-scroll-mode -1)
)
(add-hook 'minibuffer-setup-hook 'smooth-scroll-off-hook)
(add-hook 'minibuffer-exit-hook 'smooth-scroll-mode)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Occur
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; occur modeで編集可能とする
(define-key occur-mode-map (kbd "r") 'occur-edit-mode)					





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; highlight-defined
;;http://rubikitch.com/tag/emacs-lisp-highlight-defined/
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'emacs-lisp-mode-hook 'highlight-defined-mode)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Rainbow mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; css を書いてると #f92732 とか出てくるけど、
;; どんな色なのかパッとわからないと不便だと思ったのでEmacsで色を付けてみた。
;; コメント欄で yasuyk@github さんが教えてくれた rainbow-mode の方が便利そうなので書き変え。

(use-package rainbow-mode)
(add-hook 'css-mode-hook 'rainbow-mode)
(add-hook 'scss-mode-hook 'rainbow-mode)
(add-hook 'php-mode-hook 'rainbow-mode)
(add-hook 'html-mode-hook 'rainbow-mode)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; key word high light
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; キーワードの色を設定する
;;; ただし、hl-todo.elを読み込む前あるいはcustomizeで設定すること
(setq hl-todo-keyword-faces
  '(("HOLD" . "#d0bf8f")
    ("TODO" . "#ff0000")
    ("NEXT" . "#dca3a3")
    ("THEM" . "#dc8cc3")
    ("PROG" . "#7cb8bb")
    ("OKAY" . "#00ff7f")
    ("DONT" . "#cdcd00")
    ("FAIL" . "#8c5353")
    ("DONE" . "#afd8af")
    ("FIXME" . "#b22222")
    ("XXX"   . "#cc9393")
    ("XXXX"  . "#cc9393")
    ("???"   . "#ff34b3")))

;;; global-hl-todo-modeで有効にするメジャーモード(derived-mode)

(setq hl-todo-activate-in-modes
      '(prog-mode ruby-mode
		   css-mode
		   shell-script-mode
		   org-mode
		   html-mode
		  ))
(global-hl-todo-mode 1)




;;;;;;; hungry-delete-20170411 ;;;;
;; (require 'hungry-delete)
;; (global-hungry-delete-mode)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; goto-cha
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; C-/ は直前の編集をキャンセルするM-x undoですが、
;; undoした位置にカーソルが戻ります。
;; goto-chg.elによるM-x goto-last-changeはundoする代わりに
;; 過去に編集した場所をどんどん遡ります。
;; とはいっても単にbuffer-undo-listを辿るのではなくて、
;; 複雑なアルゴリズムにより最小回数で編集箇所にたどりつけるようになっています。
;; あちこち編集して戻りたいとよく思っているならば、
;; ぜひとも導入してみてください。
;; 本設定ではF8で過去に編集した箇所に戻りますが、
;; 行き過ぎてしまった場合はM-F8で逆方向になります。
(require 'goto-chg)

;; 下の設定はコンフリクトするのでsmartrepで設定する
(global-set-key (kbd "<f8>") 'goto-last-change)
(global-set-key (kbd "<M-f8>") 'goto-last-change-reverse)
