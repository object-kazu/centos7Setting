;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;web-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(when (require 'web-mode nil t)
  (add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
;;  (add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode)) ;php-modeにしてみる
  (add-to-list 'auto-mode-alist '("\\.xhtml\\'" . web-mode))
)


;;web-mode  色の設定
(custom-set-faces
 '(web-mode-doctype-face
   ((t (:foreground "#caff70" ))))                          ; doctype
 '(web-mode-html-tag-face
   ((t (:foreground "#ffd700":))))              ; 要素名
 '(web-mode-html-attr-name-face
   ((t (:foreground "#ff00ff"))))                          ; 属性名など
 '(web-mode-html-attr-value-face
   ((t (:foreground "#7fff00"))))              ; 属性値
 '(web-mode-comment-face
   ((t (:foreground "#D9333F"))))                          ; コメント
 '(web-mode-server-comment-face
   ((t (:foreground "#D9333F"))))                          ; コメント
 '(web-mode-css-rule-face
   ((t (:foreground "#A0D8EF"))))                          ; cssのタグ
 '(web-mode-css-pseudo-class-face
   ((t (:foreground "#FF7F00"))))                          ; css 疑似クラス
 '(web-mode-css-at-rule-face
   ((t (:foreground "#FF7F00"))))                          ; cssのタグ
 )


(defun web-mode-hook ()
  "Hooks for Web mode."
  ;; web-modeの設定
  (setq web-mode-markup-indent-offset 2) ;; html indent
  (setq web-mode-css-indent-offset 2)    ;; css indent
  (setq web-mode-code-indent-offset 2)   ;; script indent(js,php,etc..)
  ;; htmlの内容をインデント
  ;; TEXTAREA等の中身をインデントすると副作用が起こったりするので
  ;; デフォルトではインデントしない
  ;;(setq web-mode-indent-style 2)
  ;; コメントのスタイル
  ;;   1:htmlのコメントスタイル(default)
  ;;   2:テンプレートエンジンのコメントスタイル
  ;;      (Ex. {# django comment #},{* smarty comment *},{{-- blade comment --}})
  (setq web-mode-comment-style 2)
  ;; 終了タグの自動補完をしない
  ;;(setq web-mode-disable-auto-pairing t)
  ;; color:#ff0000;等とした場合に指定した色をbgに表示しない
  ;;(setq web-mode-disable-css-colorization t)
  ;;css,js,php,etc..の範囲をbg色で表示
  ;; (setq web-mode-enable-block-faces t)
  ;; (custom-set-faces
  ;;  '(web-mode-server-face
  ;;    ((t (:background "grey"))))                  ; template Blockの背景色
  ;;  '(web-mode-css-face
  ;;    ((t (:background "grey18"))))                ; CSS Blockの背景色
  ;;  '(web-mode-javascript-face
  ;;    ((t (:background "grey36"))))                ; javascript Blockの背景色
  ;;  )
  ;;(setq web-mode-enable-heredoc-fontification t)
)
(add-hook 'web-mode-hook 'web-mode-hook)

;;web-modeのときはrainbow-modeを使う
(add-hook 'web-mode-hook 'rainbow-mode)



;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;Warp
;; ;;http://kotatu.org/blog/2012/04/07/realtime-html-preview-with-emacs/
;; ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (require 'warp)
;; (global-set-key (kbd "C-c C-w C-w") warp-mode) ;; Modify key bind as you want.

;; ;; Set markdown converter (if you want)
;; (add-to-list 'warp-format-converter-alist
;;              '("\\.md\\|\\.markdown" t (lambda ()
;;                                          ;; Set command you are using
;;                                          '("markdown"))))

;; ;; Below line is needed if you installed websocket npm module globally.
;; ;; (setenv "NODE_PATH" "/path/to/global/node_modules")
;; ;; or, if you have setup NODE_PATH in the shell
;; ;; (setenv "NODE_PATH"
;; ;;         (replace-regexp-in-string
;; ;;          "\n+$" "" (shell-command-to-string "echo $NODE_PATH")))


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; Emacs で開いているファイル中の単語を検索したいことはよくあります．
;; ;; そんなときに便利なのが search-web.el です．
;; ;; これは，カーソル位置の単語，もしくはリージョン内の文字列を，
;; ;; 任意の検索エンジンで検索を行うものです．使い方は以下を参考にしてください．
;; ;;
;; ;; 参考: http://d.hatena.ne.jp/tomoya/20090703/1246610432
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (require 'search-web)

;; (define-prefix-command 'search-web-map)
;; (global-set-key (kbd "M-i") 'search-web-map)
;; (global-set-key (kbd "M-i g") (lambda () (interactive) (search-web-dwim "google")))
;; (global-set-key (kbd "M-i e") (lambda () (interactive) (search-web-dwim "eijiro")))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; markdown mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;markdown-modeが必要なときは外部ソフトを使うように変更する
;; dired-mode.elのopenwith.elを参照
;; mac のopen でMacDownで開くように変更のこと

(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(custom-set-variables '(markdown-command "/usr/local/bin/markdown")) 
;; 以下中止
;; (autoload 'markdown-mode "markdown-mode"
;;    "Major mode for editing Markdown files" t)
