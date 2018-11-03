(autoload 'dash-at-point "dash-at-point"
          "Search the word at point with Dash." t nil)
(global-set-key "\C-cd" 'dash-at-point)

;; web-modeのときのDocsetはhtmlとする
(add-to-list 'dash-at-point-mode-alist '(web-mode . "html"))
