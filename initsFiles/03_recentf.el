;;https://masutaka.net/chalow/2014-05-11-1.html
;; xxx.file~ をゴミ箱に保存する
(add-to-list 'backup-directory-alist
             (cons (expand-file-name "~/") (expand-file-name "~/.Trash/")))

(use-package recentf)
(setq recentf-save-file "~/.recentf")
(setq recentf-exclude '("~/.recentf"))
(setq recentf-max-saved-items 1000)
(setq recentf-auto-cleanup '10)
(recentf-mode 1)

(load "recentf-colored")
(use-package recentf-ext)
