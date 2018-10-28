;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'init-loader-x "~/.emacs.d/auto-install/init-loader-x")
(setq init-loader-show-log-after-init t)
(init-loader-load "~/.emacs.d/inits/")


;; (require 'init-loader "~/.emacs.d/init-loader")
;; ;(setq init-loader-show-log-after-init nil)
;; (init-loader-load "~/.emacs.d/inits/")

;;; 起動直後のfind-fileのパスを~/にする
(cd "~/")

;; current directを〜に変更する
(dired "~")

;; 警告音もフラッシュも全て無効(警告音が完全に鳴らなくなるので注意)
(setq ring-bell-function 'ignore)
