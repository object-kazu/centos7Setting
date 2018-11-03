;;;式の評価結果を注釈するための設定
(require 'lispxmp) 

(defun lisp-mode-hook--tools ()
  (define-key emacs-lisp-mode-map (kbd "M-:") 'lispxmp))
(add-hook 'emacs-lisp-mode-hook 'lisp-mode-hook--tools)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; lisp mode keymap
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; see smartrep.el

;; clisp, slime
(setq inferior-lisp-program "/usr/local/bin/clisp")
(require 'slime)
(slime-setup)

(require 'ac-slime)
(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)
