;;;;; bm ;;;;;;;;;;;;

;; ■ 5. ファイルの特定の位置に目印をつけよう

;; bm.elはマークとは別に行に目印をつけるものです。

;; マークじゃなくて「目印」と表現しているのは、
;; 現在位置保存に特化した目に見える存在だからです。

(require 'bm)
(global-set-key (kbd "M-n") 'bm-previous)
(global-set-key (kbd "M-m") 'bm-next)

(defun bm-start-position ()
 (point))
(defun bm-end-position ()
 (min (point-max) (1+ (point))))


(defun bm-find-files-in-repository ()
  (interactive)
  (cl-loop for (key . _) in bm-repository
           when (file-exists-p key)
           do (find-file-noselect key)
	   )
  )

(defun bm-repository-load-and-open ()
  (bm-repository-load)
  (bm-find-files-in-repository)
  )

(setq bm-repository-file "~/.bm-repo"):
(setq-default bm-buffer-persistence t)
(setq bm-restore-repository-on-load t)
(add-hook 'after-init-hook 'bm-repository-load-and-open)
(defun bm-buffer-restore-safe ()
  (ignore-errors (bm-buffer-restore)))
(add-hook 'find-file-hooks 'bm-buffer-restore-safe)
(add-hook 'kill-buffer-hook 'bm-buffer-save)
(defun bm-save-to-repository ()
  (interactive)
  (unless noninteractive
    (bm-buffer-save-all)
    (bm-repository-save)))
(add-hook 'kill-emacs-hook 'bm-save-to-repository)
(run-with-idle-timer 600 600 'bm-save-to-repository)
(add-hook 'after-revert-hook 'bm-buffer-restore)
(add-hook 'vc-before-checkin-hook 'bm-buffer-save)
(add-hook 'before-save-hook 'bm-buffer-save)

;;; 関数定義開始などで目印をつけた場合は画面最上部にもっていく
;; 正規表現とメジャーモードを指定する
(setq bm-goto-top-alist
     '(("^\\$" eshell-mode shell-mode sxmp-mode)
       ("^\\*" org-mode)
       ("^(" emacs-lisp-mode)
       ("^ *\\(def\\|class\\|module\\)" ruby-mode)))

(defun bm-goto-top-p ()
       (loop for (re . modes) in bm-goto-top-alist
             thereis (and (memq major-mode modes)
                          (save-excursion
                            (beginning-of-line)
                            (looking-at re)))))
(defadvice bm-goto (after bm-goto-top activate)
 (when (bm-goto-top-p)
   (recenter 0)))


;; 昨日は「目に見えるブックマーク」としてbm.elを紹介しました が、
;; 今日はその helmインターフェース です。
;; M-x bm-toggle 、 M-x bm-previous, M-x bm-next があれば
;; カレントバッファ内の移動は不自由しません。
;; 実は M-x bm-show-all という全bmを一覧するコマンドがありますが、
;; 今ならやっぱりhelmだよねー！
;; ということで helm-bm.el を紹介します。
;; 実はanything.el時代に M-x anything-bm-list があったのですが、
;; helmでは削除されていたので、MELPAで探して見付けたのでした。
;; しかも大幅にパワーアップして帰ってきました。
;; かつて自分が作ったものがより優れたものに
;; 置き換わるのは嬉しい限りです。
;; とにかくhelm化されることで快適に検索できるようになります。
;; なので、bmの用途が広がり、
;; 現在位置を記憶する以外にも
;; その行の『内容』を記憶させる
;; という目的にも使えるようになります。
;; 快適設定も紹介します。
;;; helm-bm.el設定
(require 'helm-bm)
;; migemoくらいつけようね
(push '(migemo) helm-source-bm)
;; annotationはあまり使わないので仕切り線で表示件数減るの嫌
(setq helm-source-bm (delete '(multiline) helm-source-bm))

(defun bm-toggle-or-helm ()
  "2回連続で起動したらhelm-bmを実行させる"
  (interactive)
  (bm-toggle)
  (when (eq last-command 'bm-toggle-or-helm)
    (helm-bm)))
(global-set-key (kbd "M-SPC") 'bm-toggle-or-helm)

;;; これがないとemacs -Qでエラーになる。おそらくバグ。
(require 'compile)
