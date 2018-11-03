;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  js common
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-hook 'after-init-hook #'global-flycheck-mode)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;;http://cortyuming.hateblo.jp/entry/2016/02/02/095426
;;http://blog.10rane.com/2015/08/06/how-to-install-and-setup-tern/

(autoload 'js2-mode "js2-mode" nil t)

;;http://cortyuming.hateblo.jp/entry/2016/02/02/095426
(add-hook 'js2-mode-hook
          '(lambda ()
             (when (locate-library "tern")
               (setq tern-command '("tern" "--no-port-file")) ;; .term-port を作らない
               (tern-mode t)
               (eval-after-load 'tern
                 '(progn
                    (require 'tern-auto-complete)
                    (tern-ac-setup)))
               )
             ))

(eval-after-load 'tern
   '(progn
      (require 'tern-auto-complete)
      (tern-ac-setup)))
(global-set-key (kbd "<backtab>") 'tern-ac-complete) 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; node.js
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq nodejs-repl-command "/usr/local/bin/node")
(autoload 'nodejs-repl "nodejs-repl" "Run Node.js REPL" t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; json reformate
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'json-reformat)

(defun js-json-reformat (beg end)
  (interactive "r")
  (shell-command-on-region beg end "python -m json.tool" nil t))

;; お使いの JavaScriptのモードに合わせてください
;;; (define-key js-mode-map (kbd "C-c j") 'js-json-reformat)
