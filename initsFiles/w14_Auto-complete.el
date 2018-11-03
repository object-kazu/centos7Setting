;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; auto-complete
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'auto-complete)
(global-auto-complete-mode t)
(require 'auto-complete-config)
(ac-config-default)
(setq ac-use-menu-map t)
(setq ac-auto-show-menu 0.3)
(setq ac-menu-height 20)

(add-hook 'ruby-mode-hook  'auto-complete-mode)
(add-hook 'shell-mode-hook  'auto-complete-mode)
(add-hook 'org-mode-hook 'auto-complete-mode)
(add-hook 'web-mode-hook 'auto-complete-mode)
(add-hook 'emacs-lisp-mode 'auto-complete-mode)

