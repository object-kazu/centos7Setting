;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; mode-line
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar mode-line-cleaner-alist
  '( ;; For minor-mode, first char is 'space'
    (yas-minor-mode . " YS")
    (paredit-mode . " PE")
    (eldoc-mode . "")
    (abbrev-mode . "")   
    (undo-tree-mode . "")
    (helm-gtags-mode . "")
    (orglink-mode . "")
    (projectile-mode . " ProJ")
    (guide-key-mode   . "")
    (ruby-block-mode . "")
    (tempbuf-mode . "")
    (ace-isearch-mode . "")
    (robe-mode . " Rob")
    (smooth-scroll-mode . "")
    (buffer-face-mode . "")
    (test-case-mode . " TEST")
    (ctags-auto-update-mode . "")
    (rubocop-mode . " RCop")
    (google-this-mode   . "Ggl");
    ;; Major modes
    (lisp-interaction-mode . "Li")
    (python-mode . "Py")
    (ruby-mode   . "Ry")
    (emacs-lisp-mode . "ELi")
    (markdown-mode . "Md")))

(defun clean-mode-line ()
  (interactive)
  (loop for (mode . mode-str) in mode-line-cleaner-alist
        do
        (let ((old-mode-str (cdr (assq mode minor-mode-alist))))
          (when old-mode-str
            (setcar old-mode-str mode-str))
          ;; major mode
          (when (eq mode major-mode)
            (setq mode-name mode-str)))))

(add-hook 'after-change-major-mode-hook 'clean-mode-line)


;;; バッファの位置をmode-lineにアナログで表示
;; http://d.hatena.ne.jp/tomoya/20100805/1281036545
;; (install-elisp-from-emacswiki "sml-modeline.el")
;; [2013-02-18 月] use package
(require 'sml-modeline)
(sml-modeline-mode t)
;; フェイスの設定
(set-face-background 'sml-modeline-end-face "Green3") ; 全体の背景色
(set-face-background 'sml-modeline-vis-face "Pink") ; 表示領域の背景色
;;; sml-modelineを行番号桁番号の後に表示させる
(setq mode-line-position
     (append (cdr mode-line-position)
             (list (car mode-line-position))))


;; smart-mode-lineを使い始めた
;; - $shibayu36->blog;でsmart-mode-lineを導入したんだけど、
;; 出したい情報のカスタマイズがしやすくないよなーと思って、
;; 今度はpowerline.elを導入した。
(require 'powerline)
(set-face-attribute 'mode-line nil
                    :foreground "#fff"
                    :background "#FF0066"
                    :box nil)

(set-face-attribute 'powerline-active1 nil
                    :foreground "#fff"
                    :background "#FF6699"
                    :inherit 'mode-line)

(set-face-attribute 'powerline-active2 nil
                    :foreground "#000"
                    :background "#ffaeb9"
                    :inherit 'mode-line)
(powerline-default-theme)
