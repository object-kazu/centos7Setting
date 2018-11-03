;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; helm
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; 参考にしたサイト
;; http://d.hatena.ne.jp/tomoya/20130519/1368942603
;; helm
;; helm-ag
;; helm-c-moccur
;; helm-descbinds
;; helm-gtags
;; helm-migemo
;; wgrep-helm



;;helm
(require 'helm-config)
(require 'wgrep-helm)
(require 'helm-ag)
(helm-descbinds-install)

;(require 'helm-migemo)
;(setq helm-use-migemo t)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ripgrep
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq helm-ag-base-command "rg --vimgrep --no-heading")
(setq helm-ag-insert-at-point 'symbol)
(global-set-key (kbd "C-q a") 'helm-ag)



;; ;; C-x b で helm-M-x
;(define-key global-map (kbd "M-x") 'helm-M-x)
;; Command+f で helm-for-files
(define-key global-map (kbd "M-f") 'helm-for-files)
;; Command+y で anything-show-kill-ring
(define-key global-map (kbd "M-y") 'helm-show-kill-ring)
;; Command+r で anything-resume
(define-key global-map (kbd "M-r") 'helm-resume)
;;
;;(define-key global-map (kbd "C-c i")   'helm-imenu)
;;

;; C-x C-bの挙動変更
(global-set-key "\C-x\C-b"'helm-mini)


;;http://futurismo.biz/archives/2262
;; さらに改善。ctagsよりも高速なripper-tagsというものを見つけた。Emacsにも対応しているよう。
;; ripper-tagsは ctagsデータをより高速に生成するツール。

;; gem install ripper-tags

;; ルートディレクトリで以下を実行。

;; ripper-tags -e -R -f TAGS

;; helm-etags-selectで見やすさアップ
;; さらにさらに改善するには、helm-etags-selectがいいかも。 helmインターフェースで飛び先を絞り込み。C-x c e で発動。

;;; 注意！exuberant-ctagsを指定する必要がある
;;; Emacs標準のctagsでは動作しない！！
;;(setq ctags-update-command "/Users/shimizukazuyuki/.rbenv/shims//ripper-tags -e -R -f TAGS")
;;; 使う言語で有効にしよう
;; (add-hook 'c-mode-common-hook  'turn-on-ctags-auto-update-mode)
;; ;; (add-hook 'emacs-lisp-mode-hook  'turn-on-ctags-auto-update-mode)
;; (add-hook 'ruby-mode-hook 'turn-on-ctags-auto-update-mode)

(define-key global-map (kbd "C-j")   'helm-etags-plus-select)
(define-key global-map (kbd "C-c j")   'helm-etags-plus-history-go-back)



;; update TAGS
;; (defun update-ripper-tags ()
;;  (interactive)
;;  (set-process-sentinel
;;   (start-process "ripper-tags" nil "ripper-tags" "-e -R -f TAGS")
;;   (lambda (proc change)
;;     ;; 正常終了のときにメッセージを表示する
;;     (when (string-match "finished" change)
;;       (message "ripper-tags is updated")))))
;; (add-hook 'ruby-mode-hook
;;           '(lambda ()
;;             (add-hook 'after-save-hook 'update-ripper-tags)))


;; (defun update-gtags-if-available ()
;;  "GTAGSファイルがカレントディレクトリ・上位ディレクトリに存在するときのみ自動更新させる"
;;  (when (gtags-find-tag-file-directory default-directory)
;;    (update-gtags)))

;; (add-hook 'after-save-hook 'update-ripper-tags)

;; (defun gtags-find-tag-file-directory (current-dir)
;;  "Try to find the directory containing tag file.
;; If not found in CURRENT-DIR search in upper directory."
;;  (let ((file-exists? (lambda (dir)
;;                          (let ((tag-path (expand-file-name
;;                                           "GTAGS" dir)))
;;                            (and (stringp tag-path)
;;                                 (file-regular-p tag-path)
;;                                 (file-readable-p tag-path))))))
;;    (cl-loop with count = 0
;;          until (funcall file-exists? current-dir)
;;          if (= count 5)
;;          do (cl-return nil)
;;          ;; Or search upper directories.
;;          else
;;          do (cl-incf count)
;;          (setq current-dir (expand-file-name (concat current-dir "../")))
;;          finally return current-dir)))









