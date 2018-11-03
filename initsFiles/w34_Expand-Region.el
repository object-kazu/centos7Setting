(require 'expand-region)
;; 真っ先に入れておかないとすぐに括弧に対応してくれない…
(push 'er/mark-outside-pairs er/try-expand-list)

(global-set-key (kbd "C-@") 'er/expand-region)
(global-set-key (kbd "C-`") 'er/contract-region)

;; transient-mark-modeが nilでは動作しませんので注意
(transient-mark-mode t)
