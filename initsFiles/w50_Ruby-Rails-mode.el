;; magic comment 削除
(custom-set-variables
 '(ruby-insert-encoding-magic-comment nil))

;; rbenv
(require 'rbenv)
(global-rbenv-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ruby and  rails関係
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(autoload 'ruby-mode "ruby-mode""Mode for editing ruby source files" t)
(add-to-list 'auto-mode-alist '("\\.rb$ " . ruby-mode)) 
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile$" . ruby-mode))

;; ;;ruby debug
 (autoload 'rubydb "rubydb3x" "run rubydb on program file in buffer" t)


;; seeing_is_believing
;; たった今 seeing_is_believing というxmpfilterの後継を見付けました。
;; $ sudo gem install seeing_is_believing

;; そして、
;; M-x package-install seeing-is-believing
;; でemacs interfaceもインストールします。

(require 'seeing-is-believing)	
(require 'ruby-mode)		
(define-key ruby-mode-map (kbd "C-c C-s") 'seeing-is-believing-run-as-xmpfilter) 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;rcodetool
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'rcodetools)		
(setq rct-find-tag-if-available nil)
(defun ruby-mode-hook-rcodetools ()
  (define-key ruby-mode-map (kbd "<C-tab>") 'rct-complete-symbol)
  (define-key ruby-mode-map (kbd "<C-return>") 'xmp))

;(global-set-key (kbd "<C-return>") 'xmp)

(add-hook 'ruby-mode-hook 'ruby-mode-hook-rcodetools)
(defun make-ruby-scratch-buffer ()
  (with-current-buffer (get-buffer-create "*ruby scratch*")
    (ruby-mode)
    (current-buffer)))
(defun ruby-scratch ()
  (interactive)
  (pop-to-buffer (make-ruby-scratch-buffer)))
 
;; (setq rct-find-tag-if-available nil)
;; (defun ruby-mode-hook-rcodetools ()
;;   (define-key ruby-mode-map (kbd "C-c C-r") 'rct-complete-symbol)  
;;   (define-key ruby-mode-map (kbd "C-c C-d") 'xmp)  
;;   (define-key ruby-mode-map (kbd "C-c C-t") 'ruby-toggle-buffer)  
;;   (define-key ruby-mode-map (kbd "C-c C-c C-r") 'rct-ri)  
;;   )
;; (add-hook 'ruby-mode-hook 'ruby-mode-hook-rcodetools)

;; (defun make-ruby-scratch-buffer ()
;;   (with-current-buffer (get-buffer-create "*ruby scratch*")
;;     (ruby-mode)
;;     (current-buffer)))
;; (defun ruby-scratch ()
;;   (interactive)
;;   (pop-to-buffer (make-ruby-scratch-buffer)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;robe
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;
;;＜使い方＞
;; ruby-modeで
;; M-x inf-ruby
;; M-x robe-start
;;;;;;;;;;;;;;;;;

(setq inf-ruby-default-implementation "pry")
(require 'inf-ruby)
(require 'auto-complete)

(defun ruby-mode-hook--robe ()
 (save-window-excursion (run-ruby))
 (robe-mode)
 (ac-robe-setup)
 (run-at-time 1 nil 'robe-start)
)
(add-hook 'ruby-mode-hook 'ruby-mode-hook--robe)
(add-hook 'inf-ruby-mode-hook 'ansi-color-for-comint-mode-on)



;; ruby-block
(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; http://qiita.com/arakaji/items/0cdfa843a0e0233df153
;; タグジャンプ出来るようにTAGSファイルを作成する。
;; EmacsでIDEのような定義元へのタグジャンプを行うにはTAGSファイルを作成しないといけません。
;; この場合ctagsというツールを使うのですが、僕はrubyistということでripper-tagsというgemを使います。

;; これはRailsアプリのためのgemでないのでbundlerではなく直接インストールしています。

;; $ gem install ripper-tags
;; ripper-tagsをインストールしたら自分のrailsアプリのトップディレクトリで以下のコマンドを実行してTAGSファイルを作成します。

;; $ ripper-tags -e -R -f TAGS
;; これでTAGSファイルを作ってRailsアプリ内でgemのコードへのタグジャンプが使えます。

;; 調べたい関数やクラスにカーソルを合わせて、以下のコマンドを実行して下さい。

;; M-. find-tags タグジャンプ
;; M-* ジャンプ元に戻る。

;; (global-set-key (kbd "C-j") 'xref-find-definitions)
;; (global-set-key (kbd "C-c C-j") 'xref-pop-marker-stack)



;; rspec-mode
;; C-c , v でファイル全体、 C-c , s でカーソル下のテストを実行できます。
;; 新しいバッファにテストの結果が出力されるので、すぐに確認できて良いですね。
;; (ログなどの出力が多いとバッファが固まってしまうことがあったので、要注意です。)

;; また、テスト中に binding.pry などのブレークポイントを設定していた場合、
;; テスト結果のバッファ内で C-x C-q すると、そのままpryに入れてしまいます。
;; デバッグをするときなど、全てEmacsの中で完結するので、とても便利ですね。

(autoload 'rspec-mode "rspec-mode")
(add-hook 'ruby-mode-hook 'rspec-mode)
(global-set-key (kbd "<f11>") 'rspec-verify)
