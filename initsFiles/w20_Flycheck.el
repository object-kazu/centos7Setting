;;flycheck
(require 'flycheck)

(add-hook 'after-init-hook 'global-flycheck-mode)

;;flycheckをカラフルに
;;flychek-color-mode-line 
(require 'flycheck-color-mode-line)
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode))



(setq flycheck-idle-change-delay 2) ; in seconds


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Ruby lint with flycheck with rubocop
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'rubocop)
(add-hook 'ruby-mode-hook 'rubocop-mode)
;(add-hook 'ruby-mode-hook 'neotree-show)
;; flycheck
(add-hook 'ruby-mode-hook
          '(lambda ()
             (setq flycheck-checker 'ruby-rubocop)
             (flycheck-mode 1)))

(global-set-key (kbd "C-c C-f n") 'flycheck-next-error)
(global-set-key (kbd "C-c C-f p") 'flycheck-previous-error)


