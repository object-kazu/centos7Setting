;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  anything
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;(require 'migemo)
(require 'anything)
(require 'anything-config)
(require 'anything-startup)
(require 'anything-c-yasnippet-2)
(require 'anything-grep)
(global-set-key (kbd "C-x f") 'anything-filelist+) 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; smex and ido vertical mode
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;このときidoが使うwindowの高さは大きくした方がいい
(setq ido-max-window-height 0.75)
;;; あいまいマッチは入れておこう
(setq ido-enable-flex-matching t)
(ido-mode 1)
(ido-vertical-mode 1)
;;; [2015-07-07 Tue]new: C-n/C-pで選択
(setq ido-vertical-define-keys 'C-n-and-C-p-only)

;; ido専用のキーマップ変数がないので、
;; ido-write-fileそのものを潰してしまいましょう。
(defalias 'ido-write-file 'write-file)

(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c C-x") 'execute-extended-command)
;; anything M-x
(global-set-key (kbd "C-c C-x") 'anything-M-x)

;;;;;;;;;;;;; buffer ;;;;;;;;;;;
(global-set-key (kbd "C-x b") 'bs-show)
