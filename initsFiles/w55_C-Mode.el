(require 'cc-mode)

;; c-mode-common-hook は C/C++ の設定
(add-hook 'c-mode-common-hook
          (lambda ()
            (setq c-default-style "k&r") ;; カーニハン・リッチースタイル
            (setq indent-tabs-mode nil)  ;; タブは利用しない
            (setq c-basic-offset 2)      ;; indent は 2 スペース
            ))

(add-hook 'c-mode-common-hook 'flycheck-mode)


;; (require 'auto-complete-c-headers)
;; (add-hook 'c++-mode-hook '(setq ac-sources (append ac-sources '(ac-source-c-headers))))
;; (add-hook 'c-mode-hook '(setq ac-sources (append ac-sources '(ac-source-c-headers))))
(require 'ac-c-headers)
(add-hook 'c-mode-hook
          (lambda ()
            (add-to-list 'ac-sources 'ac-source-c-headers)
            (add-to-list 'ac-sources 'ac-source-c-header-symbols t)))

(require 'irony)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

;; 連想リストの中身を文字列のリストに変更せず、変数そのままの構造を利用。
;; 複数のコンパイルオプションはスペースで区切る
(setq irony-lang-compile-option-alist
      (quote ((c++-mode . "c++ -std=c++11 -lstdc++")
              (c-mode . "c")
              (objc-mode . "objective-c"))))
;; アドバイスによって関数を再定義。
;; split-string によって文字列をスペース区切りでリストに変換
;; (24.4以降 新アドバイス使用)
(defun ad-irony--lang-compile-option ()
  (defvar irony-lang-compile-option-alist)
  (let ((it (cdr-safe (assq major-mode irony-lang-compile-option-alist))))
    (when it (append '("-x") (split-string it "\s")))))
(advice-add 'irony--lang-compile-option :override #'ad-irony--lang-compile-option)


(require 'function-args)
(fa-config-default)

(define-key function-args-mode-map (kbd "M-o") nil)
(define-key c-mode-map (kbd "C-M-:") 'moo-complete)
(define-key c++-mode-map (kbd "C-M-:") 'moo-complete)
  
(custom-set-faces
 '(fa-face-hint ((t (:background "#3f3f3f" :foreground "#ffffff"))))
 '(fa-face-hint-bold ((t (:background "#3f3f3f" :weight bold))))
 '(fa-face-semi ((t (:background "#3f3f3f" :foreground "#ffffff" :weight bold))))
 '(fa-face-type ((t (:inherit (quote font-lock-type-face) :background "#3f3f3f"))))
 '(fa-face-type-bold ((t (:inherit (quote font-lock-type-face) :background "#999999" :bold t)))))

(require 'clang-format)
(define-key c-mode-map (kbd "C-c tab") 'clang-format-buffer) 
