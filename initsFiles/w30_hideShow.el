;;;;;;;;;;;;;; hideshow and hideshowvis ;;;;;;;;;;;;;;;;;;;;;
(when (require 'fold-dwim nil t)
(require 'hideshow nil t)
;; 機能を利用するメジャーモード一覧
(let ((hook))
  (dolist (hook
           '(emacs-lisp-mode-hook
             c-mode-common-hook
             python-mode-hook
             php-mode-hook
             ruby-mode-hook
             js2-mode-hook
             css-mode-hook
	     sh-mode-hook
	     rust-mode-hook
	       ))
    (add-hook hook 'hs-minor-mode))))

(global-set-key (kbd "C-c <up>") 'fold-dwim-toggle)
;; (global-set-key (kbd "s-<return>") 'fold-dwim-hide-all)
;; (global-set-key (kbd "M-<return>") 'fold-dwim-show-all)



;;;;;;;;;;;;;; ruby code folding ;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'ruby-mode-hook
  (lambda () (hs-minor-mode)))

(eval-after-load "hideshow"
 '(add-to-list 'hs-special-modes-alist
                `(ruby-mode
                  ,(rx (or "def" "class" "module" "{" "[" "if" "case" )) ; Block start
                  ,(rx (or "}" "]" "end"))                  ; Block end
                  ,(rx (or "#" "=begin"))                   ; Comment start
                  ruby-forward-sexp nil)))

(global-set-key (kbd "C-c h") 'hs-hide-block)
(global-set-key (kbd "C-c s") 'hs-show-block)
