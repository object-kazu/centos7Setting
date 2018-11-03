;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; All
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'all-ext)

;;\C-c \C-qでall-modeから抜け出す
(define-key all-mode-map (kbd "C-c C-q") 'all-mode-quit)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ripgrep
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'ripgrep)
(setq ripgrep-executable "/usr/local/bin/rg")
(setq ripgrep-arguments '("-S"))
(global-set-key (kbd "C-c a") 'ripgrep-regexp)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Ag + Wgrep
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'ag)
(custom-set-variables
 '(ag-highlight-search t)  ; 検索結果の中の検索語をハイライトする
 '(ag-reuse-window 'nil)   ; 現在のウィンドウを検索結果表示に使う
 '(ag-reuse-buffers 'nil)) ; 現在のバッファを検索結果表示に使う
(require 'wgrep-ag)
(autoload 'wgrep-ag-setup "wgrep-ag")
(add-hook 'ag-mode-hook 'wgrep-ag-setup)
;; agの検索結果バッファで"r"で編集モードに。
;; C-x C-sで保存して終了、C-x C-kで保存せずに終了
(define-key ag-mode-map (kbd "r") 'wgrep-change-to-wgrep-mode)

;; キーバインドを適当につけておくと便利。"\C-xg"とか
;(global-set-key [(super m)] 'ag)

;; ag開いたらagのバッファに移動するには以下をつかう
(defun my/filter (condp lst)
  (delq nil
        (mapcar (lambda (x) (and (funcall condp x) x)) lst)))
(defun my/get-buffer-window-list-regexp (regexp)
  "Return list of windows whose buffer name matches regexp."
  (my/filter #'(lambda (window)
              (string-match regexp
               (buffer-name (window-buffer window))))
          (window-list)))
(global-set-key (kbd "C-c C-a a") ; C-c aをRipgrepに変更したのでありえないキーバインドに変更した
		'(lambda ()
		   (interactive)
		   (call-interactively 'ag)
		   (select-window ; select ag buffer
		    (car (my/get-buffer-window-list-regexp "^\\*ag ")))
))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Re Builderのキーバインドを変更する
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "C-c r b") 're-builder)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Foreign Regrep
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; たいてい一発でうまくいかなくて適当にバックスラッシュを足したり引いたりするはめになります（個人の感想です）．
;; ここでPerl互換の正規表現が使えたら便利なわけです（若い方は耳慣れないかもしれませんがPerl互換のというのは正規表現につく枕詞です）．
;; そんな流れで今日紹介するのがforeign-regexp.elです．

(require 'foreign-regexp)

(custom-set-variables
'(foreign-regexp/regexp-type 'perl) ;; Choose your taste of foreign regexp
                                   ;; from 'perl, 'ruby or 'javascript.
'(reb-re-syntax 'foreign-regexp))   ;; Tell re-builder to use foreign regex.

;; M-x rxt-mode でRegular eXpression Translationマイナーモードを
;; 有効にすると、以下のコマンドが使えます。
;; C-c / /
;; rxt-explain 正規表現を解説
;; C-c / c
;; rxt-convert-syntax Emacs/PCRE間の変換し、kill-ringへ
;; C-c / x
;; rxt-convert-to-rx rxへの変換
;; C-c / ′
;; rxt-convert-to-strings 文字列集合へ分解
;; これらのコマンドは空気を読んでくれます。
;; emacs-lisp-mode か lisp-interaction-mode では
;; Emacsの正規表現を前提にし、その他のモードではPCREを前提にします。
;; 正規表現は以下のようにして読み込まれます。
;; C-u付きで呼び出したらミニバッファから正規表現を入力
;; カーソル位置が正規表現の末尾・中身ならその正規表現
;; regionが有効ならばその部分の正規表現
;; どれでもなければミニバッファから正規表現を入力
;; それでは正規表現を解説してみましょう。
;; C-c / / を押すと別ウィンドウに正規表現をrx形式で
;; pretty-printされて表示されます。
;; しかもカーソルを移動すると該当部分をハイライトしてくれる優れ物！
;; elispを読んでいて理解不能な正規表現が現れたら
;; ぜひとも使ってみてください。
(require 'pcre2el)
(add-hook 'prog-mode-hook 'rxt-mode)
(setq reb-re-syntax 'pcre)
