;; (require 'one-key)
;; (require 'one-key-config)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; which-key
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; which-key.elはguide-key.elの改良から始まったので、
;; 使っている人は乗り換えてみてはいかがでしょうか？
;; helm-descbinds.el と組み合わせると
;; キーバインドに悩むことはなくなるでしょう。

;; guide-keyとの違い

;; popwin.elを使っていない
;; C-hで次のページを見せてくれる
;; より軽快な動作
;; M-x customize-group which-keyによる豊富なカスタマイズオプション
;; 多くのカラーテーマに合うようデフォルトの設定

;;; 3つの表示方法どれか1つ選ぶ
;; (which-key-setup-side-window-bottom)    ;ミニバッファ
;; ;; (which-key-setup-side-window-right)     ;右端
;; ;; (which-key-setup-side-window-right-bottom) ;両方使う

;; (which-key-mode 1)
