;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;session
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(when (locate-library "session")
  (setq session-globals-max-size 512)
  (setq session-globals-regexp "-\\(ring\\|history\\|hist\\)\\'")
  (require 'session)
  (defadvice find-alternate-file
    (before session-store-buffer-places last activate)
    "Invoke session-kill-buffer-hook."
    (session-kill-buffer-hook))
  (add-to-list 'session-kill-buffer-commands 'find-alternate-file)
 
  (add-hook 'after-init-hook 'session-initialize))

(when (locate-library "minibuf-isearch")
  (setq minibuf-isearch-indicator-string nil)
  (setq minibuf-isearch-display-message-always t)
  (setq minibuf-isearch-match-format-string "[isearch with '%s']")
  (setq minibuf-isearch-no-match-format-string "[No further match with '%s']")
  (setq minibuf-isearch-message-on-right t)
  (setq history-length 128)
  (require 'minibuf-isearch))


;; session.elとanything-kill-ringがバッティングしている件
;; 参考サイト
;; http://elim.hatenablog.com/entry/2012/11/07/022233
(setq session-save-print-spec '(t nil 40000))



;; stash
;; Emacs Lispのデータをディスクに保存するのは比較的簡単ですが、
;; わざわざ記述するのは面倒です。
;; また、保存する処理を書くことなく、
;; 裏でこっそりやってほしいこともあります。
;; そんな場合に stash.el が役立ちます。
;; これを使えば保存してほしい変数を
;; アイドル時・Emacs終了時に保存し、
;; Emacs再起動時に復元させられます。
;; とくに kill-ring や minibuffer-history を
;; 復元するのに役立ちます。

;; 永続化したい変数を宣言する
;;; (or stashed 'nil)は読み込み時にデフォルトでnilにするおまじない
(defstash kill-ring "kill-ring.el" nil (or stashed 'nil))
(defstash minibuffer-history "minibuffer-history.el" nil (or stashed 'nil))
