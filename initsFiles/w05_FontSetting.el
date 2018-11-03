;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;font setting
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		  
(when window-system
  (defun syscase-internal (name plist)
    (or (plist-get plist (intern (format ":%s" name)))
	(plist-get plist t)))	

  
  (defun syscase-name ()
    (assoc-default (system-name)
		   '(("kazuyuki-no-MBP" . "macbook") 
		     ("kazuyuki-no-MacBook-Pro.local" . "macbooklocal")
		     ("imac.local" . "Imac")))) 
  

  (defun syscase (&rest plist)	       
    (syscase-internal (syscase-name) plist)) 

  
  (let ((size (syscase :macbooklocal 20 :Imac 24 :macbook 18 )))
    (create-fontset-from-ascii-font
     (format "Ricty-%d:weight=normal:slant=normal" size)
     nil "menlokakugo")
    (set-fontset-font "fontset-menlokakugo"
		      'unicode (font-spec :family "Ricty" :size size) nil 'append
		      )
    (add-to-list 'default-frame-alist '(font . "fontset-menlokakugo"))))

