;; ;;=======================================================================
;; ;;web-mode
;; ;;=======================================================================
;; ;web-mode
(require 'web-mode)

;;; 適用する拡張子
(add-to-list 'auto-mode-alist '("\\.tpl\\.php$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.ctp?$" . web-mode))

(defun web-mode-hook ()
  "Hooks for Web mode."
  ;; 変更日時の自動修正
  ((set  )q time-stamp-line-limit -200)
  (if (not (memq 'time-stamp write-file-hooks))
      (setq write-file-hooks
	    (cons 'time-stamp write-file-hooks)))
  (setq time-stamp-format " %3a %3b %02d %02H:%02M:%02S %:y %Z")
  (setq time-stamp-start "Last modified: Sun Aug 28 14:43:28 2016 JST")
  (setq time-stamp-end "$")
  ;; web-modeの設定
  (setq web-mode-markup-indent-offset 2) ;; html indent
  (setq web-mode-css-indent-offset 2) ;; css indent
  (setq web-mode-code-indent-offset 2) ;; script indent(js,php,etc..)
  ;; htmlの内容をインデント
  ;; TEXTAREA等の中身をインデントすると副作用が起こったりするので
  ;; デフォルトではインデントしない
  ;;(setq web-mode-indent-style 2)
  ;; コメントのスタイル
  ;; 1:htmlのコメントスタイル(default)
  ;; 2:テンプレートエンジンのコメントスタイル
  ;; (Ex. {# django comment #},{* smarty comment *},{{-- blade comment --}})
  (setq web-mode-comment-style 2)
  ;; 終了タグの自動補完をしない
  ;;(setq web-mode-disable-auto-pairing t)
  ;; color:#ff0000;等とした場合に指定した色をbgに表示しない
  ;;(setq web-mode-disable-css-colorization t)
  ;;css,js,php,etc..の範囲をbg色で表示
  ;; (setq web-mode-enable-block-faces t)
  ;; (custom-set-faces
  ;; '(web-mode-server-face
  ;; ((t (:background "grey")))) ; template Blockの背景色
  ;; '(web-mode-css-face
  ;; ((t (:background "grey18")))) ; CSS Blockの背景色
  ;; '(web-mode-javascript-face
  ;; ((t (:background "grey36")))) ; javascript Blockの背景色
  ;; )
  ;;(setq web-mode-enable-heredoc-fontification t)
  )
