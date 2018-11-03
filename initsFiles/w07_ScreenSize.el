;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;画面設定
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun syscase-internal (name plist)
 (or (plist-get plist (intern (format ":%s" name)))
     (plist-get plist t)))

(defun syscase (&rest plist)
  (syscase-internal (system-name) plist))

(setq default-frame-alist
     ;; サイズ・位置
     `((width . ,(syscase :kazuyuki-no-MacBook-Pro 140 :imac.local 200 :macbook 140)) 
       (height . ,(syscase :kazuyuki-no-MacBook-Pro 90 :imac.local 75 :macbook 90)) 
       (top . 20)            ; フレーム左上角 y 座標
       (left . 10)           ; フレーム左上角 x 座標
       ,@default-frame-alist))



