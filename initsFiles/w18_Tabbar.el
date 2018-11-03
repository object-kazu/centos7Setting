;;;tabbar
(require 'tabbar)
(tabbar-mode)
(global-set-key (kbd "M-}") 'tabbar-forward)	 ; 次のタブ
(global-set-key (kbd "M-{") 'tabbar-backward)	 ; 前のタブ
(global-set-key (kbd "s-}") 'tabbar-forward)	 ; 次のタブ
(global-set-key (kbd "s-{") 'tabbar-backward)	 ; 前のタブ

;; タブ上でマウスホイールを使わない
(tabbar-mwheel-mode nil)
;; グループを使わない
(setq tabbar-buffer-groups-function nil)
;; 左に表示されるボタンを無効化
(dolist (btn '(tabbar-buffer-home-button
               tabbar-scroll-left-button
               tabbar-scroll-right-button))
  (set btn (cons (cons "" nil)
                 (cons "" nil))))
 
;; ウインドウからはみ出たタブを省略して表示
(setq tabbar-auto-scroll-flag nil)
 
;; タブとタブの間の長さ
(setq tabbar-separator '(1.5))
 
;; 色設定
(set-face-attribute ; バー自体の色
 'tabbar-default nil
 :background "gold1"
 :height 1.0)
(set-face-attribute ; アクティブなタブ
 'tabbar-selected nil
 :background "navy"
 :foreground "yellow1"
 :weight 'light
 :box nil)
(set-face-attribute ; 非アクティブなタブ
 'tabbar-unselected nil
 :background "gold1"
 :foreground "navy"
 :box nil)

(set-face-attribute ; 変更あり, 非アクティブなタブ
 'tabbar-modified nil
 :background "gold1"
 :foreground "tomato"
 :box nil
 )

(set-face-attribute ;　変更あり、アクティブなタブ
 'tabbar-selected-modified nil
 :background "navy"
 :foreground "tomato"
 :box nil
 )


(defvar my-tabbar-displayed-buffers-regexp
 (regexp-opt '("*scratch*" "*Messages*" "*Colors*" "*Faces*" "*vc-" "*ruby" "*ielm" "*shell*"))
 "Regexp matches buffer names always included tabs.")
(defvar my-tabbar-hide-buffers-regexp
 "^tags$\\|^[ *]"
 "Regexp matches buffer names always excluded tabs.")

(defun my-tabbar-buffer-list ()
 "Return the list of buffers to show in tabs.
Exclude buffers whose name starts with a space or an asterisk.
The current buffer and buffers matches `my-tabbar-displayed-buffers'
are always included."
 (let* ((hides my-tabbar-hide-buffers-regexp) ;*
        (shows my-tabbar-displayed-buffers-regexp) ;*
        (cur-buf (current-buffer))
        (tabs (delq nil
                    (mapcar (lambda (buf)
                              (let ((name (buffer-name buf)))
                                (when (or (string-match shows name)
                                          (not (string-match hides name))) ;*

                                  buf)))
                            (buffer-list)))))
   ;; Always include the current buffer.
   (if (memq cur-buf tabs)
       tabs
     (cons cur-buf tabs))))
(setq tabbar-buffer-list-function 'my-tabbar-buffer-list)




;;  (defvar my-tabbar-displayed-buffers
;;    '("*scratch*" "*Messages*" "*Colors*" "*Faces*" "*vc-" "*ruby" "*ielm" "*shell*")
;;    "*Regexps matches buffer names always included tabs.")

;; (defun my-tabbar-buffer-list ()
;;   "Return the list of buffers to show in tabs.
;; Exclude buffers whose name starts with a space or an asterisk.
;; The current buffer and buffers matches `my-tabbar-displayed-buffers'
;; are always included."
;;   (let* ((hides (list "tags" ?\  ?\*))
;;          (re (regexp-opt my-tabbar-displayed-buffers))
;;          (cur-buf (current-buffer))
;;          (tabs (delq nil
;;                      (mapcar (lambda (buf)
;;                                (let ((name (buffer-name buf)))
;;                                  (when (or (string-match re name)
;;                                            (not (memq (aref name 0) hides)))
;;                                    buf)))
;;                              (buffer-list)))))
;;     ;; Always include the current buffer.
;;     (if (memq cur-buf tabs)
;;         tabs
;;       (cons cur-buf tabs))))

;; (setq tabbar-buffer-list-function 'my-tabbar-buffer-list)


