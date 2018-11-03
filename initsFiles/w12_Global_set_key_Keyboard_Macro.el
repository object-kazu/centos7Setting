;;keyhacsのための設定
;(global-set-key (kbd "C-SPC") 'set-mark-Command)

;;clipboard
;; (setq mac-command-modifier 'meta)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; scroll
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "M-s-<down>") ' scroll-other-window-down)
(global-set-key (kbd "M-s-<up>") 'scroll-other-window)

;; "C-v" scroll up > default setting
(global-set-key (kbd "M-<down>") 'scroll-up-command)
(global-set-key (kbd "M-<up>") 'scroll-down-command)

(global-set-key (kbd "s-<down>") 'scroll-up-command)
(global-set-key (kbd "s-<up>") 'scroll-down-command)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; kill buffer
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "C-c <return>") 'dired-master-kill-buffer)
(global-set-key (kbd "C-c C-k") 'dired-master-kill-buffer)
(global-set-key (kbd "C-c k") 'dired-master-kill-buffer)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; tabbar
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "M-]") 'tabbar-forward)	 ; 次のタブ
(global-set-key (kbd "M-[") 'tabbar-backward)		 ; 前のタブ


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; comment-toggle 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key (kbd "C-;") 'comment-or-uncomment-region)
(global-set-key (kbd "s-/") 'comment-or-uncomment-region)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; C-h delete
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key "\C-h" 'delete-backward-char)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; keyboad macr
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; evalispの定義はinit.elにあり
(global-set-key (kbd "C-c e") 'evalisp)
(global-set-key (kbd "C-c y") 'evalRuby)
(global-set-key (kbd "C-c g") 'deleteRubyMacro)

