;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; word-count-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; How to use:
;; 1). M-+ (word-count-mode) toggles word-count mode.
;; 2). M-[space] (word-count-set-area) sets area for counting words.
;; 3). M-x word-count-set-region sets region or paragraph for counting words.
;; 4). M-x word-count-set-marker sets marker for counting words.
(autoload 'word-count-mode "word-count"
  "Minor mode to count words" t nil)
(global-set-key "\C-cww" 'word-count-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 行と桁の表示
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-linum-mode t)
(line-number-mode t)
(column-number-mode t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 選択範囲の情報表示
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun count-lines-and-chars ()
  (if mark-active
      (format "[%3d:%4d]"
              (count-lines (region-beginning) (region-end))
              (- (region-end) (region-beginning)))
    ""))

;; (add-to-list 'default-mode-line-format
;;              '(:eval (count-lines-and-chars)))
(setq-default mode-line-format
	      '(:eval (count-lines-and-chars)))
	      
