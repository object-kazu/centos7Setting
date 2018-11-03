
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;color-theme
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-ryerson_ks))) ; ryeson themeファイルを直接モディファイしている

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; view-mode 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

 (setq viewer-modeline-color-unwritable "tomato"
       viewer-modeline-color-view "orange")



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Dired-mode 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defface buffer-face-dired-mode '((t 
	(:foreground  "#CCCCCC" 
	 :background "#333333")))
 "face for `dired-mode'.")
(defun dired-mode-hook--buffer-face-set ()
 (buffer-face-set 'buffer-face-dired-mode))
(add-hook 'dired-mode-hook 'dired-mode-hook--buffer-face-set)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; org-mode face
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun org-mode-hook--mode-line-color ()
  (face-remap-add-relative
   'mode-line '((:foreground "white" :background "#ff1493")mode-line)
   )
)
(add-hook 'org-mode-hook 'org-mode-hook--mode-line-color)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ruby-mode face
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun ruby-mode-hook--mode-line-color ()
;;when flycheck do not detect error
 (face-remap-add-relative
  'mode-line '((:foreground "#ffffff" :background "#8b2252") mode-line))

;;when flycheck detect error
 (face-remap-add-relative
  'flycheck-color-mode-line-error-face
  '((:foreground "#ffd700") flycheck-color-mode-line-error-face))
 (face-remap-add-relative
  'flycheck-color-mode-line-warning-face
  '((:foreground "#2f2") flycheck-color-mode-line-warning-face))
 (face-remap-add-relative
  'flycheck-color-mode-line-info-face
  '((:foreground "#2f2") flycheck-color-mode-line-info-face))
 (flycheck-mode 1)
 (flycheck-color-mode-line-mode 1)

)

(add-hook 'ruby-mode-hook 'ruby-mode-hook--mode-line-color)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; javascript-mode face
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun javascript-mode-hook--mode-line-color ()
 (face-remap-add-relative
  'mode-line '((:foreground "#ffe1ff" :background "black") mode-line))


;;when flycheck detect error
 (face-remap-add-relative
  'flycheck-color-mode-line-error-face
  '((:foreground "#ffd700") flycheck-color-mode-line-error-face))
 (face-remap-add-relative
  'flycheck-color-mode-line-warning-face
  '((:foreground "#2f2") flycheck-color-mode-line-warning-face))
 (face-remap-add-relative
  'flycheck-color-mode-line-info-face
  '((:foreground "#2f2") flycheck-color-mode-line-info-face))
 (flycheck-mode 1)
 (flycheck-color-mode-line-mode 1)


)


(add-hook 'js2-mode-hook 'javascript-mode-hook--mode-line-color)

