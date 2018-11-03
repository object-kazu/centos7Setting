;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; anzu
;;

;; anzu-query-replace
;; Same as query-replace except anzu information in mode-line

;; anzu-query-replace-regexp
;; Same as query-replace-regexp except anzu information in mode-line
;; Add following S-exp in your configuration if you want to use anzu's replace commands by default.

;; (global-set-key (kbd "M-%") 'anzu-query-replace)
;; (global-set-key (kbd "C-M-%") 'anzu-query-replace-regexp)

;; anzu-query-replace-at-cursor
;; Same as anzu-query-replace except from-string is symbol at cursor

;; anzu-query-replace-at-cursor-thing
;; Same as anzu-query-replace-at-cursor except replaced region is specified by anzu-replace-at-cursor-thing.

;; anzu-replace-at-cursor-thing
;; Same as anzu-query-replace-at-cursor-thing except not query.
;; This command is useful in refactoring such as changing variable name in the function.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'anzu)
(global-anzu-mode +1)

(global-set-key (kbd "C-c r a") 'anzu-query-replace)
(global-set-key (kbd "C-c r g") 'anzu-query-replace-regexp)
(global-set-key (kbd "C-c r r") 'anzu-query-replace-at-cursor)
(global-set-key (kbd "C-c r t") 'anzu-query-replace-at-cursor-thing)

(set-face-attribute 'anzu-mode-line nil
                   :foreground "yellow" :weight 'bold)

(custom-set-variables
'(anzu-mode-lighter "")
'(anzu-deactivate-region t)
'(anzu-search-threshold 1000)
'(anzu-replace-to-string-separator " => "))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; replace
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "C-c q") 'vr/query-replace)

