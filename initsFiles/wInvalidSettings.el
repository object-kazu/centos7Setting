;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;     loadPath 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (setq load-path (cons "~/.emacs.d/lisp/" load-path))

;??
;(setq load-path (cons"/usr/local/bin/" load-path))
;(add-to-list 'load-path "~/.emacs.d/auto-install/")

;R
;(setq load-path (cons"~/Library/R/3.0/library/" load-path))

;kazu elisp
;(setq load-path (cons"/Users/shimizukazuyuki/Dropbox/lisp-study" load-path))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;     Package
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; hl-todo.el は、特定のキーワードに色をつけて目立つようにします。
;; プログラム開発中においてTODOやFIXMEなどの
;; 注目キーワードを書くことがよくあります。
;; これらを別な色にして目立たせることで、見逃しを防止します。
;; なお、このコードは実質50行くらいの短いコードなので、
;; font-lock関連のコードを書く際においての手頃な資料になります。

;;; キーワードの色を設定する
;;; ただし、hl-todo.elを読み込む前あるいはcustomizeで設定すること
;; (setq hl-todo-keyword-faces
;;   '(("HOLD" . "#d0bf8f")
;;     ("TODO" . "#cc9393")
;;     ("NEXT" . "#dca3a3")
;;     ("THEM" . "#dc8cc3")
;;     ("PROG" . "#7cb8bb")
;;     ("OKAY" . "#7cb8bb")
;;     ("DONT" . "#5f7f5f")
;;     ("FAIL" . "#8c5353")
;;     ("DONE" . "#afd8af")
;;     ("FIXME" . "#cc9393")
;;     ("XXX"   . "#cc9393")
;;     ("XXXX"  . "#cc9393")
;;     ("???"   . "#cc9393")))
;; ;;; global-hl-todo-modeで有効にするメジャーモード(derived-mode)
;; (setq hl-todo-activate-in-modes
;;       '(prog-mode ruby-mode enh-ruby-mode))
;; (global-hl-todo-mode 1)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; recentf     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;最近使ったファイルを記録する
;(require 'use-package)
;; (use-package recentf-ext
;;   init:
;;   (setq recentf-save-file "~/.recentf")
;;   (setq recentf-exclude '("~/.recentf"))
;;   (setq recentf-max-saved-items 5000)
;;   (setq recentf-auto-cleanup '10)
;;   (recentf-mode 1)

;;   (load "recentf-colored")
  
;;   )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; color theme     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;color general
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Color
;;______________________________________________________________________

;; (set-foreground-color                                  "#CCCCCC") ; 文字色
;; (set-background-color                                  "#333333") ; 背景色
;; (set-cursor-color                                      "#FF0000") ; カーソル色
;; (set-face-background 'region                           "#222244") ; リージョン
;; (set-face-foreground 'mode-line                         "#CCCCCC") ; モードライン文字<?>
;; (set-face-background 'mode-line                         "#333333") ; モードライン背景<?>
;; (set-face-foreground 'mode-line-inactive               "#333333") ; モードライン文字(非アクティブ)
;; (set-face-background 'mode-line-inactive               "#CCCCCC") ; モードライン背景(非アクティブ)
;; (set-face-foreground 'font-lock-comment-delimiter-face "#888888") ; コメントデリミタ
;; (set-face-foreground 'font-lock-comment-face           "#888888") ; コメント
;; (set-face-foreground 'font-lock-string-face            "#7FFF7F") ; 文字列
;; (set-face-foreground 'font-lock-function-name-face     "#BF7FFF") ; 関数名
;; (set-face-foreground 'font-lock-keyword-face           "#FF7F7F") ; キーワード
;; (set-face-foreground 'font-lock-constant-face          "#FFBF7F") ; 定数(this, selfなども)
;; (set-face-foreground 'font-lock-variable-name-face     "#7F7FFF") ; 変数
;; (set-face-foreground 'font-lock-type-face              "#FFFF7F") ; クラス
;; (set-face-foreground 'fringe                           "#666666") ; fringe(折り返し記号なでが出る部分)
;; (set-face-background 'fringe                           "#282828") ; fringe



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  font setting    
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;; ;; (defun syscase (&rest plist)
  ;; ;;   (syscase-internal (system-name) plist))  


  ;; ;; test
  ;; (system-name) 			; => "kazuyuki-no-MacBook-Pro.local"
  ;; (syscase-name)			; => "macbooklocal"
  ;; (syscase :macbook 120 :imac 180 :macbooklocal 110) ; => 110
  
  ;; ;; 
  ;; ;; (let ((size (syscase :kazuyuki-no-MBP.home 20 :imac.local 24 )))
  ;; ;;  (create-fontset-from-ascii-font
  ;; ;;   (format "Ricty-%d:weight=normal:slant=normal" size)
  ;; ;;   nil "menlokakugo")
  ;; ;;  (set-fontset-font "fontset-menlokakugo"
  ;; ;; 		      'unicode (font-spec :family "Ricty" :size size) nil 'append
  ;; ;;  )
  ;; ;;  (add-to-list 'default-frame-alist '(font . "fontset-menlokakugo")))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; screen size     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;imac
;; (setq default-frame-alist
;;       (append (list
;;                ;; サイズ・位置
;;                '(width . 180)  ; 横幅(文字数)
;;                '(height . 65) ; 高さ(行数)
;;                '(top . 20)    ; フレーム左上角 y 座標
;;                '(left . 10)   ; フレーム左上角 x 座標
;;                )
;;               default-frame-alist))

;; mac book pro
;; (setq default-frame-alist
;;       (append (list
;;                ;; サイズ・位置
;;                '(width . 120)  ; 横幅(文字数)
;;                '(height . 60) ; 高さ(行数)
;;                '(top . 20)    ; フレーム左上角 y 座標
;;                '(left . 10)   ; フレーム左上角 x 座標
;;                )
;;               default-frame-alist))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; split window    
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 画面分割（imac 専用）
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;************************************
;; functions for splite window 
;************************************
;; (defun split-window-vertically-n (num_wins)
;;   (interactive "p")
;;   (if (= num_wins 2)
;;       (split-window-vertically)
;;     (progn
;;       (split-window-vertically
;;        (- (window-height) (/ (window-height) num_wins)))
;;       (split-window-vertically-n (- num_wins 1)))))


;; (defun split-window-horizontally-n (num_wins)
;;   (interactive "p")
;;   (if (= num_wins 2)
;;       (split-window-horizontally)
;;     (progn
;;       (split-window-horizontally
;;        (- (window-width) (/ (window-width) num_wins)))
;;       (split-window-horizontally-n (- num_wins 1)))))


;;(split-window-horizontally-n 2)
;;(follow-mode t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; でらうま倶楽部設定
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (defun vz-scroll-up()
;;   "カーソルを画面下端に移動してから scroll-up"
;;   (interactive)
;;   (if (< (current-line) (/ (window-height) 2))
;;       (move-to-window-line (/ (window-height) 2))
;;     (if (< (current-line) (- (window-height) 3))
;;         (move-to-window-line -2)
;;       (next-line 1)
;;       (scroll-up-line))))

;; (defun vz-scroll-down()
;;   "カーソルを画面上部に移動してから scroll-down"
;;   (interactive)
;;   (if (> (current-line) (/ (window-height) 2))
;;       (move-to-window-line (/ (window-height) 2))
;;     (if (> (current-line) 1)
;;         (move-to-window-line 1)
;;       (next-line -1)
;;       (scroll-down-line))))


;; (defun half-page-up()
;;   "カーソルは画面内固定で半画面 scroll-up。"
;;   (interactive)
;;   (if(= (window-end) (point-max))
;;       (next-line (/ (window-height) 2))
;;     (let ((a (current-line)))
;;       (if(< a 1) (setq a 1))
;;       (scroll-up-command (/ (window-height) 2))
;;       (move-to-window-line a))))

;; (defun half-page-down()
;;   "カーソルは画面内固定で半画面 scroll-down。"
;;   (interactive)
;;   (if(= (window-start) 1)
;;       (next-line (/ (window-height) -2))
;;     (let ((a (current-line)))
;;       (scroll-down-command (/ (window-height) 2))
;;       (move-to-window-line a))))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Eww     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;emacs 24.4以上の時は以下の設定は有効

;; (require 'eww) 

;; ;;; [2014-11-17 Mon]背景・文字色を無効化する
;; (defvar eww-disable-colorize t)
;; (defun shr-colorize-region--disable (orig start end fg &optional bg &rest _)
;;   (unless eww-disable-colorize
;;     (funcall orig start end fg)))
;; (advice-add 'shr-colorize-region :around 'shr-colorize-region--disable)
;; (advice-add 'eww-colorize-region :around 'shr-colorize-region--disable)
;; (defun eww-disable-color ()
;;   "ewwで文字色を反映させない"
;;   (interactive)
;;   (setq-local eww-disable-colorize t)
;;   (eww-reload))
;; (defun eww-enable-color ()
;;   "ewwで文字色を反映させる"
;;   (interactive)
;;   (setq-local eww-disable-colorize nil)
;;   (eww-reload))

;; ;; helmで履歴を閲覧する
;; (defvar eww-data)
;; (defun eww-current-url ()
;;   (if (boundp 'eww-current-url)
;;       eww-current-url                   ;emacs24.4
;;     (plist-get eww-data :url)))         ;emacs25
;; (defun eww-current-title ()
;;   (if (boundp 'eww-current-title)
;;       eww-current-title                   ;emacs24.4
;;     (plist-get eww-data :title)))

;; (require 'helm)
;; (require 'cl-lib)

;; (defun helm-eww-history-candidates ()
;;   (cl-loop with hash = (make-hash-table :test 'equal)
;;            for b in (buffer-list)
;;            when (eq (buffer-local-value 'major-mode b) 'eww-mode)
;;            append (with-current-buffer b
;;                     (clrhash hash)
;;                     (puthash (eww-current-url) t hash)
;;                     (cons
;;                      (cons (format "%s (%s) <%s>" (eww-current-title) (eww-current-url) b) b)
;;                      (cl-loop for pl in eww-history
;;                               unless (gethash (plist-get pl :url) hash)
;;                               collect
;;                               (prog1 (cons (format "%s (%s) <%s>" (plist-get pl :title) (plist-get pl :url) b)
;;                                            (cons b pl))
;;                                 (puthash (plist-get pl :url) t hash)))))))
;; (defun helm-eww-history-browse (buf-hist)
;;   (if (bufferp buf-hist)
;;       (switch-to-buffer buf-hist)
;;     (switch-to-buffer (car buf-hist))
;;     (eww-save-history)
;;     (eww-restore-history (cdr buf-hist))))
;; (defvar helm-source-eww-history
;;   '((name . "eww history")
;;     (candidates . helm-eww-history-candidates)
;;     (migemo)
;;     (action . helm-eww-history-browse)))
;; (defvaralias 'anything-c-source-eww-history 'helm-source-eww-history)
;; (defun helm-eww-history ()
;;   (interactive)
;;   (helm :sources 'helm-source-eww-history
;;         :buffer "*helm eww*"))

;; (define-key eww-mode-map (kbd "H") 'helm-eww-history)
;; (define-key eww-mode-map (kbd "s") 'helm-eww-history)


;; ;; | 機能                          | キーバインド | コマンド名                       |
;; ;; |-------------------------------+--------------+----------------------------------|
;; ;; | 戻る                          | l            | eww-back-url                     |
;; ;; | 進む                          | r            | eww-forward-url                  |
;; ;; | 再読み込み                    | g            | eww-reload                       |
;; ;; | ソースを見る                  | v            | eww-view-source                  |
;; ;; | ブックマークに追加            | b            | eww-add-bookmark                 |
;; ;; | ブックマークを表示            | B            | eww-list-bookmarks               |
;; ;; | 履歴                          | H            | eww-list-histories               |
;; ;; | リンク先をダウンロード        | d            | eww-download                     |
;; ;; | 現在の URL をコピー           | w            | eww-copy-page-url                |
;; ;; | 現在の URL を別ブラウザで開く | &            | eww-browse-with-external-browser |
;; ;; | ファイルを開く                | N/A          | eww-open-file                    |
;; ;; | Cookie の一覧                 | C            | url-cookie-list                  |
;; ;; | eww を終了                    | q            | quit-window                      |

;; ;; googleをデフォルトにする
;; (setq eww-search-prefix "https://www.google.co.jp/search?q=")


;; ;; ace-jump-mode(レビュー) は、画面内の任意の場所に
;; ;; 2〜3ストロークで到達する強力なカーソル移動ツールです。
;; ;; ブラウザでいう Hit-a-Hint のようなものです。
;; ;; これをリンクを辿るのに使うのがこの ace-link.el です。
;; ;; たいていの場合、画面内のリンクの数は多くないので、
;; ;; キーボード2ストロークでそのリンクを辿れるようになります。
;; ;;; デフォルトの設定(参考)
;; ;; (defun ace-link-setup-default ()
;; ;;   "Setup the defualt shortcuts."
;; ;;   (require 'info)
;; ;;   (define-key Info-mode-map "o" 'ace-link-info)
;; ;;   (require 'help-mode)
;; ;;   (define-key help-mode-map "o" 'ace-link-help)
;; ;;   (require 'eww)
;; ;;   (define-key eww-link-keymap "o" 'ace-link-eww)
;; ;;   (define-key eww-mode-map "o" 'ace-link-eww))
;; (ace-link-setup-default)
;; (require 'org)
;; (define-key org-mode-map (kbd "C-c M-o") 'ace-link-org)

;; ;;; text-property-any -> next-single-property-change
;; ;;; にしないと一部のリンクが辿れないので再定義
;; (defun ali--eww-collect-references ()
;;   "Collect the positions of visible links in the current `eww' buffer."
;;   (save-excursion
;;     (save-restriction
;;       (narrow-to-region
;;        (window-start)
;;        (window-end))
;;       (goto-char (point-min))
;;       (let ((skip (next-single-property-change (point) 'help-echo))
;;             candidates)
;;         (while (setq skip (text-property-not-all
;;                            skip (point-max) 'help-echo nil))
;;           (goto-char skip)
;;           (push skip candidates)
;;           (setq skip (next-single-property-change (point) 'help-echo)))
;;         (nreverse candidates)))))


;; ;検索結果にハイライトをつける.
;; ;; (defun eww-search (term)
;; ;;   (interactive "sSearch terms: ")
;; ;;   (setq eww-hl-search-word term)
;; ;;   (eww-browse-url (concat eww-search-prefix term)))
 
;; ;; (add-hook 'eww-after-render-hook (lambda ()
;; ;;            (highlight-regexp eww-hl-search-word)
;; ;;            (setq eww-hl-search-word nil)))


;; ;; keybind add
;;  ;; (require 'helm-eww-bookmark)
;;  ;; (define-key eww-mode-map "B" 'helm-eww-bookmark)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; R mode     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; R
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (setq auto-mode-alist
;;      (cons (cons "\\.r$" 'R-mode) auto-mode-alist))
;; (autoload 'R-mode "ess-site" "Emacs Speaks Statistics mode" t)

;; ;;iESS mode >>> R console at emcas
;; (add-hook 'ess-R-post-run-hook 'smartparens-mode)

;; (require 'r-autoyas)
;; (add-hook 'ess-mode-hook 'r-autoyas-ess-activate)
;; (require 'ess-R-object-popup)
;; (define-key ess-mode-map (kbd "C-c C-r") 'ess-R-object-popup)
;; ;; 補完機能を有効にする
;; ;;(setq ess-use-auto-complete t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CSharp -mode     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; C++ mode

;;; Semantic Refactor is a refactoring tool for C/C++.
;; Features
;; C/C++:
;; Context-sensitive menu offers appropriate refactoring actions
;; Generate class implementation (also handles nested class and class template)
;; Generate class getters and setters
;; Generate function implementation (also handles function template)
;; Generate function prototype
;; Convert function to function pointer
;; Convert function to function parameter
;; Move semantic units (class, function, variable)
;; Extract function with proper type information
;; Precise local variable rename
;; More info and demos
;;    (require 'srefactor)
;;    (require 'srefactor-lisp)

;;    ;; OPTIONAL: ADD IT ONLY IF YOU USE C/C++. 
;;    (semantic-mode 1) ;; -> this is optional for Lisp

;;    (define-key c-mode-map (kbd "M-RET") 'srefactor-refactor-at-point)
;;    (define-key c++-mode-map (kbd "M-RET") 'srefactor-refactor-at-point)
;;    (global-set-key (kbd "M-RET o") 'srefactor-lisp-one-line)
;;    (global-set-key (kbd "M-RET m") 'srefactor-lisp-format-sexp)
;;    (global-set-key (kbd "M-RET d") 'srefactor-lisp-format-defun)
;;    (global-set-key (kbd "M-RET b") 'srefactor-lisp-format-buffer)



;; (defun my:ac-c-headers-init ()
;;  (require 'auto-complete-c-headers)
;;  (add-to-list 'ac-sources 'ac-source-c-headers))

;; (add-hook 'c++-mode-hook 'my:ac-c-headers-init)
;; (add-hook 'c-mode-hook 'my:ac-c-headers-init)
    




;; ;; C# mode
;; (require 'csharp-mode)
;; (require 'omnisharp)

;; (add-hook 'csharp-mode-hook
;;           '(lambda()
;;              (setq c-basic-offset 4)
;;              (c-set-offset 'substatement-open 0)
;;              (c-set-offset 'case-label '+)
;;              (c-set-offset 'arglist-intro '+)
;;              (c-set-offset 'arglist-close 0)))
;; (add-hook 'csharp-mode-hook 'omnisharp-mode)
;; (add-hook 'csharp-mode-hook 'turn-on-eldoc-mode)
;; (add-to-list 'auto-mode-alist '("\\.cs$" . csharp-mode))

;; (setq omnisharp--curl-executable-path (expand-file-name "/usr/bin/curl"))
;; (setq omnisharp-server-executable-path (expand-file-name "/Users/shimizukazuyuki/OmniSharpServer/OmniSharp/bin/Debug/OmniSharp.exe"))


;; (autoload 'csharp-mode "csharp-mode" "Major mode for editing C# code." t)

;; (defun my-csharp-mode-fn ()
;;   "function that runs when csharp-mode is initialized for a buffer."
;;   (turn-on-auto-revert-mode)
;;   )

;; (add-hook 'csharp-mode-hook 'my-csharp-mode-fn t)
;; (add-hook 'csharp-mode-hook 'omnisharp-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; lua mode     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 ;; ;; This snippet enables lua-mode
 ;; ;;    This line is not necessary, if lua-mode.el is already on your load-path
 ;; ;;   (add-to-list 'load-path "/path/to/directory/where/lua-mode-el/resides")

 ;;    (autoload 'lua-mode "lua-mode" "Lua editing mode." t)
 ;;    (add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
 ;;    (add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; scss     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;scss-mode
;; (require 'scss-mode)
;; (add-to-list 'auto-mode-alist '("\\.scss$" . scss-mode))

;; ;; インデント幅を2にする
;; ;; コンパイルは compass watchで行うので自動コンパイルをオフ
;; (defun scss-custom ()
;;   "scss-mode-hook"
;;   (and
;;    (set (make-local-variable 'css-indent-offset) 2)
;;    (set (make-local-variable 'scss-compile-at-save) nil)
;;    )
;;   )
;; (add-hook 'scss-mode-hook
;;   '(lambda() (scss-custom)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;     google
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (require 'google-translate)

;; (defvar google-translate-english-chars "[:ascii:]"
;;  "これらの文字が含まれているときは英語とみなす")
;; (defun google-translate-enja-or-jaen (&optional string)
;;  "regionか、現在のセンテンスを言語自動判別でGoogle翻訳する。"
;;  (interactive)
;;  (setq string
;;        (cond ((stringp string) string)
;;              (current-prefix-arg
;;               (read-string "Google Translate: "))
;;              ((use-region-p)
;;               (buffer-substring (region-beginning) (region-end)))
;;              (t
;;               (save-excursion
;;                 (let (s)
;;                   (forward-char 1)
;;                   (backward-sentence)
;;                   (setq s (point))
;;                   (forward-sentence)
;;                   (buffer-substring s (point)))))))
;;  (let* ((asciip (string-match
;;                  (format "\\`[%s]+\\'" google-translate-english-chars)
;;                  string)))
;;    (run-at-time 0.1 nil 'deactivate-mark)
;;    (google-translate-translate
;;     (if asciip "en" "ja")
;;     (if asciip "ja" "en")
;;     string)))
;; (global-set-key (kbd "C-c t") 'google-translate-enja-or-jaen)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Go lang     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; Goのパスを通す
;; (add-to-list 'exec-path (expand-file-name "/usr/local/go/bin/"))

;; ;; go get で入れたツールのパスを通す
;; (add-to-list 'exec-path (expand-file-name "~/go/bin"))

;; ;; 必要なパッケージのロード
;; (require 'go-mode)
;; (require 'go-autocomplete)

;; ;; 諸々の有効化、設定
;; (add-hook 'go-mode-hook 'auto-complete-mode)
;; (add-hook 'go-mode-hook 'flycheck-mode)
;; (add-hook 'go-mode-hook (lambda()
;;            (add-hook 'before-save-hook' 'gofmt-before-save)
;;            (local-set-key (kbd "M-.") 'godef-jump)
;;            (setq indent-tabs-mode nil)    ; タブを利用
;;            (setq c-basic-offset 4)        ; tabサイズを4にする
;;            (setq tab-width 4)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; perl     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (use-package cperl-mode
;;   :mode
;;   (("\.pl$" . cperl-mode))
;;   :interpreter
;;   (("perl" . cperl-mode)
;;    ("perl5" . cperl-mode)
;;    ("miniperl" . cperl-mode))
;;   :config
;;   (setq cperl-indent-level 4
;;    cperl-continued-statement-offset 4
;;    cperl-close-paren-offset -4
;;    cperl-label-offset -4
;;    cperl-comment-column 40
;;    cperl-highlight-variables-indiscriminately t
;;    cperl-indent-parens-as-block t
;;    cperl-tab-always-indent nil
;;    cperl-font-lock t)
;;   )

;; ; perl-completion
;; (require 'perl-completion)
;; (add-to-list 'ac-sources 'ac-source-perl-completion)
;; (perl-completion-mode t)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; auto-install     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;; auto-install.el
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (require 'auto-install)
;; (setq auto-install-directory "~/.emacs.d/auto-install/")
;; (auto-install-update-emacswiki-package-name t)
;; (auto-install-compatibility-setup)  

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; eshell     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; eshell
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (require 'esh-myparser)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; shell     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;zsh
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; ;+++++++ home brewを入れ替えたらデフォルトシェルを変えるかも ++++++++++++++
;; (setq shell-file-name "/bin/zsh")

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; shell pathを使う
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (exec-path-from-shell-initialize)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; input general     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; 20150108 http://www.muskmelon.jp/?page_id=410キー（Mac標準に準拠）
;; (setq mac-command-key-is-meta nil)
;; (setq mac-option-modifier 'meta)
;; (setq mac-command-modifier 'super)
;; (global-set-key [?\s-c] 'kill-ring-save)
;; (global-set-key [?\s-v] 'yank)
;; (global-set-key [?\s-x] 'kill-region)
;; (global-set-key [?\s-z] 'undo)
;; (global-set-key [?\s-s] 'save-buffer)
;; (global-set-key [?\s-q] 'save-buffers-kill-terminal)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 2015.9.25 ace-isearchでエラーがでるので使用中止
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ace-isearch は、isearch(インクリメンタルサーチ)を
;; 超強化するEmacs Lispです。
;; isearchのクエリ文字数によって、以下の挙動を行います。
;; 1文字→ace-jump-mode
;; 2〜5文字→isearch
;; 6文字以上→helm-swoop
;; 0.4秒アイドルになると自動でace-jump-mode, helm-swoopへ移行します。
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (global-ace-isearch-mode t)
;; (setq ace-isearch-input-idle-delay 0.6)
;; (global-ace-isearch-mode 1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; lcomp 不要なComplete＊を自動で削除
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;(require 'lcomp)   
;(lcomp-mode 1)	   
;(lcomp-keys-mode 1)

;;anything-multi-occur
;(require 'anything-multi-occur)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; repeat
;;『Emacsの鬼るびきちのココだけの話』163号 偉人の力をあなたに…
;;(global-set-key (kbd "C-,") 'repeat)
;;は前回のコマンドを繰り返し実行するおすすめ設定です。
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ;
;; (global-set-key (kbd "C-,") 'repeat)



;; ;; checkbox.el は、org-modeのチェックボックス機能を
;; ;; 任意のメジャーモードで使えるように取り出したものです。
;; ;; org-modeは確かに多機能ですが、ひとつのメジャーモードであるため、
;; ;; 他のモードから単体でその機能が使えるわけではありません。
;; ;; 用意されているコマンドは M-x checkbox-toggle のみです。
;; ;; [ ] がないときはコメント文字を飛ばして [ ] を入力する
;; ;; [ ] があるときは [x] でチェックする
;; ;; [x] があるときは [ ] にする
;; (global-set-key (kbd "C-c C-v") 'checkbox-toggle)

;; ;; zop-to-char.el は、 ace-jump-zap.el(レビュー) と同様M-zの置き換えです。
;; ;; 両者に共通するメリットは、標準のM-z (zap-to-char)や
;; ;; M-x zap-up-to-char でより遠くの同じ文字まで削除できるようにする点です。
;; ;; (global-set-key (kbd "M-z") 'zop-to-char)
;; (global-set-key (kbd "C-z") 'zop-up-to-char)



;; (require 'point-undo)
;; (global-set-key (kbd "<f5>") 'point-undo)
;; (global-set-key (kbd "s-<f5>") 'point-redo)
;; (global-set-key (kbd "<S-M-up>") 'point-undo)
;; (global-set-key (kbd "<S-M-down>") 'point-redo)
;; ;; (define-key global-map [f5] 'point-undo)
;; ;; (define-key global-map [S-f5] 'point-redo)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Global set key     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; prefix key
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (defvar ctl-q-map (make-keymap))
;; (define-key global-map "\C-q" ctl-q-map) 

;; (defvar ctl-t-map (make-keymap))
;; (define-key global-map "\C-t" ctl-t-map) 




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; anything    
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 他の選択肢: ↑と↓でも選択できるようにする
;; (setq ido-vertical-define-keys 'C-n-C-p-up-and-down)
;;; ←と→で履歴も辿れるようにする
;;(setq ido-vertical-define-keys 'C-n-C-p-up-down-left-right)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; auto-complete     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ; perl-completion
;; ;;(require 'perl-completion)
;; ;;(add-to-list 'ac-sources 'ac-source-perl-completion)
;; ;;(add-hook 'cperl-mode-hook 'auto-complete-mode)
;; ;; perl-completion
;; (add-hook 'cperl-mode-hook
;;           (lambda()
;;             (require 'perl-completion)
;;             (perl-completion-mode t)))

;; (add-hook  'cperl-mode-hook
;;            (lambda ()
;;              (when (require 'auto-complete nil t) ; no error whatever auto-complete.el is not installed.
;;                (auto-complete-mode t)
;;                (make-variable-buffer-local 'ac-sources)
;;                (setq ac-sources
;;                      '(ac-source-perl-completion)))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;     Stach_session
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;session
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (when (locate-library "session")
;;   (setq session-globals-max-size 512)
;;   (setq session-globals-regexp "-\\(ring\\|history\\|hist\\)\\'")
;;   (require 'session)
;;   (defadvice find-alternate-file
;;     (before session-store-buffer-places last activate)
;;     "Invoke session-kill-buffer-hook."
;;     (session-kill-buffer-hook))
;;   (add-to-list 'session-kill-buffer-commands 'find-alternate-file)
 
;;   (add-hook 'after-init-hook 'session-initialize))

;; (when (locate-library "minibuf-isearch")
;;   (setq minibuf-isearch-indicator-string nil)
;;   (setq minibuf-isearch-display-message-always t)
;;   (setq minibuf-isearch-match-format-string "[isearch with '%s']")
;;   (setq minibuf-isearch-no-match-format-string "[No further match with '%s']")
;;   (setq minibuf-isearch-message-on-right t)
;;   (setq history-length 128)
;;   (require 'minibuf-isearch))


;; ;; session.elとanything-kill-ringがバッティングしている件
;; ;; 参考サイト
;; ;; http://elim.hatenablog.com/entry/2012/11/07/022233
;; (setq session-save-print-spec '(t nil 40000))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; browser , kill-ring     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;(require 'browse-kill-ring)

;; ;;(global-set-key "\C-t" 'browse-kill-ring) 

;;; kill ring に関する設定
;(setq kill-ring-max 1000)


;; ;;; browse-kill-ring に関する設定


;; ;; 各種動作
;; (setq browse-kill-ring-quit-action 'kill-and-delete-window)
;; ;; 見た目の調整
;; (if (not window-system)
;;       (setq browse-kill-ring-display-style 'one-line
;;             browse-kill-ring-resize-window nil)
;;     (defface separator '((t (:foreground "slate gray" :bold t))) nil)
;;     (setq browse-kill-ring-separator "\n--separator------------------------------"
;;           browse-kill-ring-separator-face 'separator
;;           browse-kill-ring-highlight-current-entry t
;;           browse-kill-ring-highlight-inserted-item t
;;           browse-kill-ring-resize-window
;;           (cons (- (frame-height) (window-height) 1) window-min-height)))


;; ;; RET		browse-kill-ring-insert-and-quit
;; ;; ?		describe-mode
;; ;; U		browse-kill-ring-undo-other-window
;; ;; a		browse-kill-ring-append-insert
;; ;; b		browse-kill-ring-prepend-insert
;; ;; d		browse-kill-ring-delete
;; ;; e		browse-kill-ring-edit
;; ;; g		browse-kill-ring-update
;; ;; h		describe-mode
;; ;; i		browse-kill-ring-insert
;; ;; l		browse-kill-ring-occur
;; ;; n		browse-kill-ring-forward
;; ;; o		browse-kill-ring-insert-and-move
;; ;; p		browse-kill-ring-previous
;; ;; q		browse-kill-ring-quit
;; ;; r		browse-kill-ring-search-backward
;; ;; s		browse-kill-ring-search-forward
;; ;; u		browse-kill-ring-insert-move-and-quit
;; ;; x		browse-kill-ring-insert-and-delete
;; ;; y		browse-kill-ring-insert
;; ;; <M-return>	browse-kill-ring-insert-move-and-quit
;; ;; <mouse-2>	browse-kill-ring-mouse-insert


;; This package helps Emacs run Safari, Google Chrome, and Firefox on OS X. It is similar to the built-in browse-url, but is somewhat more friendly and configurable.

;; The foreground/background behavior of the external browser can be controlled via customizable variables and prefix arguments. A positive prefix argument forces foreground; a negative prefix argument forces background. With no prefix argument, the customizable variable setting is respected.

;; Default values for URLs or search text are deduced from the region or from context around the point, according to the heuristics in browse-url-dwim.el.

;; (require 'osx-browse)

;; (osx-browse-mode 1)

;; ;; ⌘-b      ; browse to URL in foreground
;; ;; C-- ⌘-b  ; browse to URL in background

;; ;; ⌘-i      ; search Google in foreground
;; ;; C-- ⌘-i  ; search Google in background

;; ;; position cursor on a URL
;; ;; ⌘-b

;; ;; select a region
;; ;; ⌘-i

;; ;; to turn off confirmations
;; (setq browse-url-dwim-always-confirm-extraction nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; yassnipet     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; ;;helm-c-yasnippet
;; (require 'helm-c-yasnippet)
;; (setq helm-yas-space-match-any-greedy t)
;; (global-set-key (kbd "C-c y") 'helm-yas-complete)
;; (push '("emacs.+/snippets/" . snippet-mode) auto-mode-alist)

;;  (require 'helm-c-yasnippet)
;;  (setq helm-yas-display-key-on-candidate t)
;;  (setq helm-yas-space-match-any-greedy t) ;[default: nil]
;;  (global-set-key (kbd "C-c <tab>") 'helm-yas-complete)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; bookmark     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 ;;bookmark
;(global-set-key (kbd "C-c bs") 'bookmark-set)
;(global-set-key (kbd "C-c bl") 'bookmark-bmenu-list)
;; (when window-system  
;;   (defun syscase-internal (name plist)
;;     (or (plist-get plist (intern (format ":%s" name)))
;; 	(plist-get plist t)))

;;   (defun (setq  )yscase (&rest plist)
;; 	 (syscase-internal (system-name) plist))


;;   (let ((ksBM (syscase :kazuyuki-no-MBP.home "/Users/shimizukazuyuki/Dropbox/CommonSetting/Bookmark/iMac-bookmark" :imac.local " /Users/shimizukazuyuki/Dropbox/CommonSetting/Bookmark/MacBook-bookmark")))
;;     (setq bookmark-default-file ksBM))    
;;     )
;; )



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; eldoc     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (require 'eldoc-extension)
;; (setq eldoc-idle-delay 0.2)
;;  (setq eldoc-echo-area-use-multiline-p t)
;;  (add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
;;  (add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)
;;  (add-hook 'ielm-mode-hook 'turn-on-eldoc-mode)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; racc     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; racc
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; racc-mode
;;  (autoload 'racc-mode "racc-mode" "alternate mode for editing racc files" t)
;;  (setq auto-mode-alist (append '(("\\.y$" . racc-mode)) auto-mode-alist))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; mark     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; back-button

;; ●るびきちEmacs 045●コーディング音速化計画(後編)
;; back-button.elは041号に少し出てきましたが、
;; smartrep.elと併用することで、左右の矢印キーや
;; スペースを連続して叩くことでマークをたどれます

;(require 'back-button)
;; モードラインにBackと表示しないようにする
;(setq back-button-mode-lighter nil)
;(back-button-mode 1)

;; |-----------------------+------------------------|
;; | C-x SPC (SPC ...)     | マークを戻る           |
;; | C-x ← (← ...)       | 同上                   |
;; | C-x → (→ ...)       | マークを進む           |
;; |-----------------------+------------------------|
;; | C-x C-SPC (C-SPC ...) | グローバルマークを戻る |
;; | C-x C-← (C-← ...)   | 同上                   |
;; | C-x C-→ (C-→ ...)   | グローバルマークを進む |
;; |-----------------------+------------------------|



;;; (fset 'push-mark 'back-button-push-mark-local-and-global)

;; これでC-x C-SPC (C-←・C-→)
;; のみを覚えれば済むようになります。

;; 戻りたいときは、「戻れ」と叫び
;; つつC-x C-SPCを押すだけです！




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Tempbuffer     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (require 'popwin)
;; (setq display-buffer-function 'popwin:display-buffer)

;; (setq popwin:popup-window-position 'right)


;; ;; Apropos
;; (push '("*slime-apropos*") popwin:special-display-config)
;; ;; Macroexpand
;; (push '("*slime-macroexpansion*") popwin:special-display-config)
;; ;; Help
;; (push '("*slime-description*") popwin:special-display-config)
;; ;; Compilation
;; (push '("*slime-compilation*" :noselect t) popwin:special-display-config)
;; ;; Cross-reference
;; (push '("*slime-xref*") popwin:special-display-config)
;; ;; Debugger
;; (push '(sldb-mode :stick t) popwin:special-display-config)
;; ;; REPL
;; (push '(slime-repl-mode) popwin:special-display-config)
;; ;; Connections
;; (push '(slime-connection-list-mode) popwin:special-display-config)
;; ;; Browse-Kill-RIng
;; (push '("*Kill Ring*") popwin:special-display-config)
;; ;; anything
;; (push '("*anything*") popwin:special-display-config)
;; ;; Completions
;; (push '("*Completions*") popwin:special-display-config)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ctag     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ctags
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;   (require 'anything-yaetags)
;;   (add-to-list 'anything-sources 'anything-c-source-yaetags-select)

;; ;; If you want to use this package for replacement of `find-tag', put
;; ;; followings:

;;   (global-set-key (kbd "C-c C-j") 'anything-yaetags-find-tag)

;;; 注意！exuberant-ctagsを指定する必要がある
;;; Emacs標準のctagsでは動作しない！！
;; (setq ctags-update-command "/usr/local/bin/ctags")
;; ;;; 使う言語で有効にしよう
;; (add-hook 'emacs-lisp-mode-hook  'turn-on-ctags-auto-update-mode)
;; (add-hook 'ruby-mode-hook  'turn-on-ctags-auto-update-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;; fold-dwin = code folding ;;;;;;;;;;;;
;; (use-package fold-dwin
;;   :bind
;;   (("C-c v [" . fold-dwim-toggle)
;;    ("C-c v s" . fold-dwim-show-all)
;;    ("C-c v h" . fold-dwim-hide-all)   
;;    )
;;   :config
;;   (progn
;;     (use-package hideshow)
;;     (let ((hook))
;;     (dolist (hook
;;              '(emacs-lisp-mode-hook
;;                c-mode-common-hook
;;                python-mode-hook
;;                php-mode-hook
;;                ruby-mode-hook
;;                js2-mode-hook
;;                css-mode-hook
;;                apples-mode-hook
;; 	       sh-mode-hook
;; 	       ))
;;       (add-hook hook 'hs-minor-mode)))
;;     )
;;   )

;; (when (require 'fold-dwim nil t)
;;   (require 'hideshow nil t)
;;   ;; 機能を利用するメジャーモード一覧
;;   (let ((hook))
;;     (dolist (hook
;;              '(emacs-lisp-mode-hook
;;                c-mode-common-hook
;;                python-mode-hook
;;                php-mode-hook
;;                ruby-mode-hook
;;                js2-mode-hook
;;                css-mode-hook
;;                apples-mode-hook
;; 	       sh-mode-hook
;; 	       ))
;;       (add-hook hook 'hs-minor-mode))))

;; (global-set-key (kbd "C-c [") 'fold-dwim-toggle)
;; (global-set-key (kbd "s-<return>") 'fold-dwim-hide-all)
;; (global-set-key (kbd "M-<return>") 'fold-dwim-show-all)

;; (use-package fold-dwin)
;; (dolist (hook (list 'emacs-lisp-mode-hook
;;                     'c++-mode-hook
;; 		    'c-mode-common-hook
;; 		    'sh-mode-hook))
;;   (add-hook hook 'hs-minor-mode))

;;;;;;;;;;;;;; hideshow and hideshowvis ;;;;;;;;;;;;;;;;;;;;;
;; (autoload 'hideshowvis-enable "hideshowvis""Highlight foldable regions")
;; (autoload 'hideshowvis-minor-mode
;;   "hideshowvis""Will indicate regions foldable with hideshow in the fringe."'interactive)

;; (global-set-key (kbd "C-c v [") 'hs-hide-block)
;; (global-set-key (kbd "C-c v ]") 'hs-show-block)


;; (dolist (hook (list 'emacs-lisp-mode-hook
;;                     'c++-mode-hook
;; 		    'sh-mode-hook))
;;   (add-hook hook 'hideshowvis-enable))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; google     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; なんか今更感があるけど、EmacsからGoogle検索をする方法です。
;; ;; Emacsを使っている多くの人が自前で「Emacsからググるコマンド」を
;; ;; 作っているかもしれません。
;; ;; 非公開のものも入れればきっと星の数ほど実装がありそうですが、
;; ;; google-this.el はMELPAに置いてある最新の実装です。
;; ;; その中にはたくさんのコマンドが定義されていて、
;; ;; マイナーモード化もされているのですが
;; ;; 実用上、たった一つのコマンドを知っていれば問題ありません。
;; ;; M-x google-this は空気を読んでググってくれます。
;; ;; regionが指定してあるときはその内容
;; ;; 現在のシンボル
;; ;; 現在の単語

;; ;;; マイナーモードとして使いたいならば以下の設定
;; (setq google-this-keybind (kbd "C-x g"))
;; (google-this-mode 1)
;; (require 'google-this)
;; (setq google-this-location-suffix "co.jp")
;; (defun google-this-url () "URL for google searches."
;;   ;; 100件/日本語ページ/5年以内ならこのように設定する
;;   (concat google-this-base-url google-this-location-suffix
;;           "/search?q=%s&hl=ja&num=100&as_qdr=y1&lr=lang_ja"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; php mode     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; php
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (require 'php-mode)
;; (add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
;; ;; php-mode-hook

;; (add-hook 'php-mode-hook
;;          (lambda ()
;;            (require 'php-completion)
;;            (php-completion-mode t)
;;            (define-key php-mode-map (kbd "C-j") 'php-)
;; 	    (define-key php-mode-map (kbd "M-<tab>") 'hippie-expand-dabbrev-limited-chars)
;; 	    (flycheck-mode t)
;;            (make-local-variable 'ac-sources)
;;            (setq ac-sources '(
;;                               ac-source-words-in-same-mode-buffers
;;                               ac-source-php-completion
;;                               ac-source-filename
;;                               ))))

;; (setq php-mode-force-pear t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; dired    
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (progn
;;  (delete-other-windows)
;;  (dired "~")
;;  (follow-mode)
;;  (split-window-horizontally)
;;  (balance-windows))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ruby     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;; ruby setting の後ろにしておく（前だと挙動がおかしい）;;;;;;;;;;;;;;;;
;; ruby-electric
;; (require 'ruby-electric)
;; (add-hook 'ruby-mode-hook '(lambda () (ruby-electric-mode t)))
;; (setq ruby-electric-expand-delimiters-list nil)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; rails     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Ruby unit test
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Recognize test_*.rb as a test file
;; (require 'ruby-test-mode)
;; (defun my-advice:ruby-prefixed-test-p (filename)
;;   (and (string-match "^test_" (file-name-base filename))
;;        (string-match "^rb$" (file-name-extension filename))))
;; (advice-add 'ruby-test-p :after-until 'my-advice:ruby-prefixed-test-p)
;(advice-remove 'ruby-test-p 'my-advice:ruby-prefixed-test-p)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; projectile
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; refere
  ;; http://kotatu.org/blog/2014/02/28/starts-using-projectile-rails/

;; (require 'projectile)
;; (projectile-global-mode)

;; (require 'projectile-rails)
;; (add-hook 'projectile-mode-hook 'projectile-rails-on)


;; ;; rirariと同様のキーバインドを使う
;; (define-key projectile-rails-mode-map (kbd "C-c ; f m") 'projectile-rails-find-current-model)
;; (define-key projectile-rails-mode-map (kbd "C-c ; f c") 'projectile-rails-find-current-controller)
;; (define-key projectile-rails-mode-map (kbd "C-c ; f v") 'projectile-rails-find-current-view)
;; (define-key projectile-rails-mode-map (kbd "C-c ; f s") 'projectile-rails-find-current-spec)
;; (define-key projectile-rails-mode-map (kbd "C-c ; c") 'projectile-rails-console)

;; (defun projectile-rails-goto-template-at-point ()
;;   (interactive)
;;   (let* ((template (projectile-rails-filename-at-point))
;;          (dir (projectile-rails-template-dir template))
;;          (name (projectile-rails-template-name template))
;;          (format (projectile-rails-template-format template)))
;;     (if format
;;         (loop for processor in '("erb" "haml" "slim")
;;               for template = (s-lex-format "${dir}${name}.${format}.${processor}")
;;               for partial = (s-lex-format "${dir}_${name}.${format}.${processor}")
;;               for partial-2 = (expand-file-name
;;                                (s-lex-format "_${name}.${format}.${processor}")
;;                                (projectile-expand-root "app/views/application"))
;;               for partial-3 = (expand-file-name
;;                                (s-lex-format "_${name}.${format}.${processor}")
;;                                (projectile-expand-root "app/views/shared"))
;;               until (or
;;                      (projectile-rails-ff template)
;;                      (projectile-rails-ff partial)
;;                      (projectile-rails-ff partial-2)
;;                      (projectile-rails-ff partial-3)))
;;       (message "Could not recognize the template's format")
;;       (dired dir))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; web     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; EmacsからWebSocket通信でブラウザを更新します。
;; https://utage.headwaters.co.jp/blog/?p=2193
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; WebSocketサーバとコネクションを
;; 確立した全てのブラウザを更新することで
;; クロスブラウザチェックを爆速にします。


;;(load "websocket_auto_reload")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; helm     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (add-hook 'ruby-mode-hook 'helm-gtags-mode)
;; (add-hook 'c++-mode-hook 'helm-gtags-mode)
;; (add-hook 'c-mode-hook 'helm-gtags-mode)

;; update GTAGS
;; (defun update-gtags ()
;;  (interactive)
;;  (set-process-sentinel
;;   ;; 裏でglobal -uを実行させて
;;   (start-process "gtags-update" nil "gtags" "--gtagslabel=pygments")
;;   (lambda (proc change)
;;     ;; 正常終了のときにメッセージを表示する
;;     (when (string-match "finished" change)
;;       (message "GTAGS is updated")))))

;; ;; 保存時に自動でgtag -u 
;; ;;(add-hook 'after-save-hook 'update-gtags)
;; (add-hook 'ruby-mode-hook
;;          '(lambda ()
;;            (add-hook 'after-save-hook 'update-gtags)))
;; (add-hook 'c++-mode-hook
;;          '(lambda ()
;;            (add-hook 'after-save-hook 'update-gtags)))
;; (add-hook 'c-mode-hook
;;          '(lambda ()
;;            (add-hook 'after-save-hook 'update-gtags)))


;;helm-gtag
;; (require 'helm-gtags)
;; (add-hook 'helm-gtags-mode-hook
;; '(lambda ()
;; ;;入力されたタグの定義元へジャンプ
;;   (local-set-key (kbd "C-c C-g C-f") 'helm-gtags-find-tag)
;;   (local-set-key (kbd "C-c C-j") 'helm-gtags-find-tag)
;; ;;入力タグを参照する場所へジャンプ
;;   (local-set-key (kbd "C-c C-g C-r") 'helm-gtags-find-rtag)
;;   (local-set-key (kbd "C-c C-r") 'helm-gtags-find-rtag) 
;; ;;入力したシンボルを参照する場所へジャンプ
;;   (local-set-key (kbd "C-c C-g C-s") 'helm-gtags-find-symbol)

;; ;;タグ一覧からタグを選択し, その定義元にジャンプする
;;   (local-set-key (kbd "C-c C-g C-l") 'helm-gtags-select)

;; ;;ジャンプ前の場所に戻る
;;   (local-set-key (kbd "C-c C-g C-t") 'helm-gtags-pop-stack)))

;(define-key global-map (kbd "C-x b")   'helm-buffers-list)


;;
;; Helm はタブに helm-select-action が割り当てられているので、
;;基本的にファイル名を補完する目的でタブを押しても意味がありません。
;; タブでファイル名を補完したい場合はタブに 
;;helm-execute-persistent-action（C-z を押した時に実行されるコマンド）を割り当てておきます。

;(define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)
;(define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)


;; (require 'ido-occasional)
;; (require 'ido-vertical-mode)
;; (require 'helm-swoop)
;; (require 'imenus)
;; (setq ido-enable-flex-matching t)



;; ;;; エラー対策
;; (defun imenu-find-default--or-current-symbol (&rest them)
;;   (condition-case nil
;;       (apply them)
;;     (error (thing-at-point 'symbol))))
;; (advice-add 'imenu-find-default :around 'imenu-find-default--or-current-symbol)

;; ;;; なぜか現在のシンボルを取ってくれないから
;; (defun imenus-exit-minibuffer ()
;;   (exit-minibuffer))

;; ;;; ido化: imenus/with-ido imenus-mode-buffers/with-idoを定義
;; (with-ido-completion imenus)
;; ;; M-p M-pで現在のシンボルをhelm-multi-swoopできるよ！
;; (global-set-key (kbd "M-p") (with-ido-completion imenus-mode-buffers))


;; ;;; M-oでのmulti-occurをシンボル正規表現にするよう改良
;; (push '(occur . imenus-ido-multi-occur) imenus-actions)
;; (defun imenus-ido-multi-occur (buffers input)
;;   (multi-occur buffers
;;                (format "\\_<%s\\_>"
;;                        (regexp-quote (replace-regexp-in-string "^.*|" "" input)))))

;; ;;; M-pで関数呼び出しをhelm-multi-swoopできるようにした
;; (push '(helm-multi-swoop . imenus-helm-multi-swoop) imenus-actions)
;; (defun imenus-helm-multi-swoop (buffers input)
;;   (helm-multi-swoop (replace-regexp-in-string "^.*|" "" input)
;;                     (mapcar 'buffer-name buffers)))
;; (define-key imenus-minibuffer-map (kbd "M-p") 'imenus-exit-to-helm-multi-swoop)
;; (defun imenus-exit-to-helm-multi-swoop ()
;;   "Exit from imenu prompt; start `helm-multi-swoop' with the current input."
;;   (interactive)
;;   (setq imenus-exit-status 'helm-multi-swoop)
;;   (imenus-exit-minibuffer))
;; (global-set-key (kbd "C-i") nil) 

;; (require 'hydra)

;; (global-set-key
;;  (kbd "C-i")
;;  (defhydra hydra-move ()
;;    "move"
;;    ("f" forward-word "right")
;;    ("b" backward-word "left")
;;    ("n" forward-paragraph "down")
;;    ("p" backward-paragraph "up")
;;    ("SPC" hydra-repeat "repeat")))

;; (cua--ena-cua-keys-keymap (kbd "C-z") nil)

;;;;;;;;;;; prespective ;;;;;;;;;;;;;;;;;
;; persp-modeを有効にした時点で、mainというワークスペースが作成されます。
;; 新しいワークスペースを作ったり切り替えるには
;; C-x x s (persp-switch) を使います。
;; 現在のワークスペースを削除するには C-x x c (persp-kill) を使います。
;; この2つさえ知っていればとりあえず使えます。
;; タスクを始めるために新しいワークスペースを作ると、
;; そのワークスペース専用の*scratch*バッファが作成され、
;; 他のバッファがすべてリストから見えなくなります。
;; そこで、新しいワークスペースを作成するときに、
;; ワークスペースに取り込みたいバッファをhelm選択できるようにしました。
;; C-SPCで複数個選択できます。
;; もし、ワークスペース作成時にバッファを取り込んでいない場合は、
;; C-x C-fや recentf (M-x helm-mini 、 M-x helm-for-files 等)から
;; 選択します。




;; (require 'perspective)
;; (persp-mode 1)

;; ;;; モードラインに現在のみのperspective名を表示させるように再定義
;; (defun persp-update-modestring ()
;;   (when persp-show-modestring
;;     (setq persp-modestring
;;           (list (nth 0 persp-modestring-dividers)
;;                 (persp-name persp-curr)
;;                 (nth 1 persp-modestring-dividers)))))

;; (defun persp-register-buffers-on-create ()
;;   (interactive)
;;   (dolist (bufname (condition-case _
;;                        (helm-comp-read
;;                         "Buffers: "
;;                         (mapcar 'buffer-name (buffer-list))
;;                         :must-match t
;;                         :marked-candidates t)
;;                      (quit nil)))
;;     (persp-add-buffer (get-buffer bufname))))
;; (add-hook 'persp-created-hook 'persp-register-buffers-on-create)


;;;;;;;;;;; elscreen ;;;;;;;;;;;;;;;;;
;; (global-set-key (kbd "C-z") nil) 
;; (setq elscreen-prefix-key (kbd "C-z"))
;; (elscreen-start)
;; ;; (elscreen-persist-mode 1)
;; (elscreen-separate-buffer-list-mode 1)


;; (setq perspeen-use-tab t)
;; (perspeen-mode)
;; (global-set-key (kbd C-c p c) 'perspeen-tab-next)

;;プレフィクスキー
;; (setq perspeen-keymap-prefix (kbd "C-c f"))
;; (define-key perspeen-command-map (kbd "[") 'perspeen-tab-prev)
;; (define-key perspeen-command-map (kbd "]") 'perspeen-tab-next)
;; (define-key perspeen-command-map (kbd "C-d") 'perspeen-tab-del)

;; (setq persp-keymap-prefix (kbd "C-c p")) ;prefix
;; (setq persp-add-on-switch-or-display t) ;バッファを切り替えたら見えるようにする
;; (persp-mode 1)
;; (defun persp-register-buffers-on-create ()
;;   (interactive)
;;    (dolist (bufname (condition-case _
;;                        (helm-comp-read
;;                         "Buffers: "
;;                         (mapcar 'buffer-name (buffer-list))
;;                         :must-match t
;;                         :marked-candidates t)
;;                      (quit nil)))
;;     (persp-add-buffer (get-buffer bufname))))
;; (add-hook 'persp-activated-hook 'persp-register-buffers-on-create)
