;;emmet mode
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'html-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook  'emmet-mode)

(global-set-key (kbd "C-q e") 'emmet-expand-line)
(global-set-key (kbd "C-q C-e") 'emmet-expand-yas)
