;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; yasnippet
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'yasnippet)
;; 自分用・追加用テンプレート -> mysnippetに作成したテンプレートが格納される
(setq yas-snippet-dirs
     '("~/.emacs.d/ks_snippets"
	"~/.emacs.d/snippets"
	 ))

(require 'yasnippet-config)
(require 'dropdown-list)
(yas-global-mode 1)
(call-interactively 'yas/reload-all)    ;workaround
;; anything-complete.elを使っているなら yas/completing-prompt のみでもよい
(setq yas-prompt-functions
     '(yas/dropdown-prompt yas/completing-prompt yas/ido-prompt yas/no-prompt))
