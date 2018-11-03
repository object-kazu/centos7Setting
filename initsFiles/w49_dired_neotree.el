;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;dired
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'dired)
(ffap-bindings)
(put 'dired-find-alternate-file 'disabled nil)

(defun dired-hide-subdir-and-stay (arg) ; steal from dired-aux.el
 "Hide or unhide the current subdirectory and DO NOT move to next directory.
Optional prefix arg is a repeat factor.  Use \\[dired-hide-all]
to (un)hide all directories."
 (interactive "p")
 (dired-hide-check)
 (let ((modflag (buffer-modified-p)))
   (while (>=  (setq arg (1- arg)) 0)
     (let* ((cur-dir (dired-current-directory))
	     (hidden-p (dired-subdir-hidden-p cur-dir))
	     (elt (assoc cur-dir dired-subdir-alist))
	     (end-pos (1- (dired-get-subdir-max elt)))
	     buffer-read-only)
	;; keep header line visible, hide rest
	(goto-char (dired-get-subdir-min elt))
	(skip-chars-forward "^\n\r")
	(if hidden-p
	    (subst-char-in-region (point) end-pos ?\r ?\n)
	  (subst-char-in-region (point) end-pos ?\n ?\r)))
     ;; (dired-next-subdir 1 t)) ; comment out by TK January 13, 2014 (Mon)
     )
   (restore-buffer-modified-p modflag)))

(defun dired-fold-like-org (arg)
 (interactive "P")
 (if arg
     (dired-hide-all)
   (dired-hide-subdir-and-stay 1)))

(define-key dired-mode-map (kbd "<tab>") 'dired-fold-like-org)
(define-key dired-mode-map (kbd "S-<tab>") 'dired-hide-all)
(define-key dired-mode-map (kbd "<backtab>") 'dired-hide-all)

;;dired-datails
(require 'dired-details)
(dired-details-install)
;; (progn
;;  (delete-other-windows)
;;  (dired "~")
;;  (follow-mode)
;;  (split-window-horizontally)
;;  (balance-windows))


;;dired-master
;; (require 'dired-details)
;; (dired-details-install)
(setq dired-details-hidden-string " ")
(setq dired-details-hide-link-targets nil)
(require 'dired-master)
(setq dired-at-left-width 30)
(global-set-key (kbd "C-x C-d") 'dired-at-left)
(dired-dedicated-install)


;;dired-filter
;; diredバッファをフィルタリングする．
;; 以下のようにキーバインドが用意されている (dired-filter-map参照)．

;; キーバインド	説明
;; / n	名前でフィルタリング (dired-filter-by-name)
;; / r	正規表現でフィルタリング (dired-filter-by-regexp)
;; / .	拡張子でフィルタリング (dired-filter-by-extension)
;; / h	ドットで始まるファイルを隠す (dired-filter-by-dot-files)
;; / o	dired-omit-modeによるフィルタリング (dired-filter-by-omit)
;; / e	説明がめんどくさいので割愛 (dired-filter-by-predicate)
;; / f	ファイルだけ表示 (dired-filter-by-file)
;; / d	ディレクトリだけ表示 (dired-filter-by-directory)
;; / m	メジャーモードでフィルタリング (dired-filter-by-mode)
;; / /     

;; | / d  | ディレクトリのみ       |
;; | / f  | ファイルのみ           |
;; | / m  | メジャーモード         |
;; | / .  | 拡張子                 |
;; | / n  | ファイル名             |
;; | / r  | 正規表現               |
;; |------+------------------------|
;; | / !  | 否定                   |
;; | / ｜ | or検索(/ oではない!)   |
;; | / p  | 直前のフィルタを消す   |
;; | / /  | すべてのフィルタを消す | 

(require 'dired-filter)
(define-key dired-mode-map "M" dired-filter-mark-map)
(add-hook 'dired-mode-hook 'dired-filter-mode)

;;; wdired の設定
(require 'wdired)
(define-key dired-mode-map "W" 'wdired-change-to-wdired-mode)


;; openWith（外部プログラムでファイルをオープンする）

(require 'openwith)
(openwith-mode 1)
;;kazuyuki modified with rubikichi advice
(defun openwith-open-unix (command arglist)
 (apply 'start-process "openwith-process" nil command arglist))
(setq openwith-associations
    '(("\\.ods\\'" "open" (file))
      ("\\.odt\\'" "open" (file))
      ("\\.mm\\'" "open" (file))
      ("\\.pages\\'" "open" (file))
      ;("\\.md\\'" "open" (file))

      ("\\.\\(?:avi\\|mkv\\|mp4\\|pdf\\)\\'" "open" (file))
      ;("\\.\\(?:jp?g\\|png\\|gif\\)\\'" "qlmanage" ("-p" file))
      ))


(setq large-file-warning-threshold nil)

;;; [2014-06-18 Wed]emacs-w3mでinline imageが表示できないので対処
(defun pre-command-hook--openwith-associations ()
 (setq openwith-mode (not (eq major-mode 'w3m-mode))))
(add-hook 'pre-command-hook 'pre-command-hook--openwith-associations)
(defun w3m-mode-hook--openwith ()
 (openwith-mode -1))
(add-hook 'w3m-mode-hook 'w3m-mode-hook--openwith)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; dired toggle
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "C-q t") 'dired-toggle)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; neotree toggle
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;http://kiririmode.hatenablog.jp/entry/20150806/1438786800

(global-set-key [f9] 'neotree-toggle)


;; 隠しファイルをデフォルトで表示
(setq neo-show-hidden-files t)

;; neotree でファイルを新規作成した後、自動的にファイルを開く
(setq neo-create-file-auto-open t)

;; delete-other-window で neotree ウィンドウを消さない
(setq neo-persist-show t)

;; キーバインドをシンプルにする
(setq neo-keymap-style 'concise)

;; neotree ウィンドウを表示する毎に current file のあるディレクトリを表示する
(setq neo-smart-open t)


;; diredでマークをつけたファイルを開く
(eval-after-load "dired"
  '(progn
     (define-key dired-mode-map (kbd "F") 'my-dired-find-marked-files)
     (defun my-dired-find-marked-files (&optional arg)
       "Open each of the marked files, or the file under the point, or when prefix arg, the next N files "
       (interactive "P")
       (let* ((fn-list (dired-get-marked-files nil arg)))
         (mapc 'find-file fn-list)))))
