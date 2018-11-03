;; org-mode でメモをとる
(require 'org)
(require 'org-capture)


;; スピードコマンドは org-mode に実装されている標準機能ですが，デフォルトでは OFF の状態です．次のようにして，有効化します．
;; (setq org-use-speed-commands t)
;; 無事に使えるようになったら，heading の先頭の*にカーソルを置いて，nやpを押下してみましょう．カーソルが heading 間をサクサクと移動するのを確認できます．
;; どんなコマンドが準備されているのかは，heading の先頭の*にカーソルを置いて，?を押下すればコマンドの一覧が表示されます(M-x org-speed-command-helpに相当)．
;; 以下に一覧化するのは，org-mode 8.3.2 にある機能です．
(setq org-use-speed-commands t)


;;でDONEの行全体を org-done フェイスにできますよ。
(setq org-fontify-done-headline t)

;;るびきち日記
;;==== org-nikki.el

;; (require 'org)
;; (add-to-list 'org-capture-templates
;;             '("d" "Diary" entry (file "my-diary.org")
;;               "* %U%?\n%i\n"))
;; (global-set-key (kbd "C-c c") 'org-capture)
;;====


;; この設定しておくと、どんな作業中でもC-c oでorg-capture起動した後にtでTODO、iでアイデアとかをメモできます。
;; org-directoryで設定したフォルダのorg-default-notes-fileのファイルに全部保存されていきます。
;; これが今TODOを追加しようとしている画面で、下のバッファがorg-captureの作業バッファになります。 この状態でC-c C-c押すと保存され、C-c C-kでキャンセルになります。
;; 今まで書いたTODOとかアイデアとかをまとめて見たいときはC-c aです。
;; ここまでの設定は以下の参考サイトほぼパクりです。
;;http://ochiailab.blogspot.jp/2014/04/emacs-org-mode.html
(require 'org-install)
(setq org-startup-truncated nil)
(setq org-return-follows-link t)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(setq org-directory "~/Dropbox/CommonSetting/memo/")
(setq org-default-notes-file (concat org-directory "agenda.org"))
(setq org-capture-templates
      '(("t" "Todo" entry
         (file+headline nil "Inbox")
         "** TODO %?\n   %i\n   %a\n   %t")
	 ("b" "Bug" entry
         (file+headline nil "Inbox")
         "** TODO %?   :bug:\n   %i\n   %a\n   %t")
        ("i" "Idea" entry
         (file+headline nil "New Ideas")
         "** %?\n   %i\n   %a\n   %t")))
(add-to-list 'org-capture-templates
             '("d" "Diary" entry (file "my-diary.org")
               "* %U\n x:%?\n o:\n n:\n k:\n"))
(add-to-list 'org-capture-templates
             '("e" "100CharaIdea" entry (file "100CharaIdea.org")
               "***  %U\n ## 100 字 １日 ##\n"))
(setq org-agenda-files (list org-directory)) ;agendaを使うため

;; (setq org-capture-templates
;;      '(("c" "メモ" entry (file "~/memo/memo1.org")
;;         "** %U%?")))



;; ショートカットキー
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-c\C-a" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
 
(add-hook 'org-mode-hook 'turn-on-font-lock)
(add-hook 'org-capture-mode-hook 'word-count-mode)

;;todo list
(setq org-use-fast-todo-selection t)
(setq org-todo-keywords
      '((sequence "Task(t)" "Started(s)" "Wainting(w)" "|" "DONE(x)" "CANCEL(c)")
        (sequence "NextTask(n)" "|" "DONE(x)" "CANCEL(c)")
        (sequence "Appo(a)" "|" "DONE(x)" "CANCEL(c)")))


;;; orglink-modeを有効にするメジャーモード
(setq orglink-activate-in-modes
      '(emacs-lisp-mode ruby-mode))
;; (with-eval-after-load "orglink"
;;   ;; C-c C-oでもリンクを辿れるようにする
;;   (define-key orglink-mouse-map (kbd "C-c C-o") 'org-open-at-point-global)
;;   ;; M-TABで前のリンクに行けるようにする
;;   (define-key orglink-mouse-map (kbd "M-TAB") 'org-previous-link))
(global-orglink-mode 1)


;; ================================================================
;;『Emacsの鬼るびきちのココだけの話』247号 世界一易しいEmacsメモ講座(1)
;; ================================================================

;; それでは先週導入したばかりにの秘密兵器
;; demo-it-startを使いましょう。

;; 先程のorg-captureの設定をdemo-it-startにすると
;; このようになります。

;; M-x open-junk-fileで
;; 試行錯誤用のファイルを用意してから、
;; 以下のコードをコピーしましょう。


;; もちろん、open-junk-fileとdemo-it-startは
;; Emacs標準関数ではないので、それぞれ
;; open-junk-fileとdemo-itパッケージを
;; インストールしてください。

;; ================================================================
;; (demo-it-start
;; '((lambda ()
;;     (demo-it-setq org-capture-templates
;;                   '(("c" "メモ" entry (file "~/memo/memo1.org")
;;                      "* %U%?")))
;;     (find-file "~/memo/memo1.org"))
;;   "C-c c c"
;;   (lambda ()
;;     (find-file "~/memo/memo1.org")))
;; t)
;; ================================================================


;; コードをコピーしたら、
;; C-M-xでやC-x C-eでdemo-it-startを評価してください。

(defun duplicate-defun ()
 "コピー先で関数内の位置を保ちつつ現在の関数をコピーする"
 (interactive)
 (let* ((bounds (bounds-of-thing-at-point 'defun))
        (s (car bounds))
        (e (cdr bounds))
        (pt (point))
        (d (- pt s)))
   (goto-char e)
   (newline)
   (save-excursion
     (insert (buffer-substring s e)))
   (forward-char d)))
(define-key emacs-lisp-mode-map (kbd "C-c M-d") 'duplicate-defun)


(defun org-capture-fill-template--stringify-annotation (&rest ignore)
 (unless (stringp (org-capture-get :annotation))
   (plist-put org-capture-plist :annotation (format "%s" (org-capture-get :annotation)))))
(advice-add 'org-capture-fill-template :before
           'org-capture-fill-template--stringify-annotation)


;; org-seek

;; org-seek:【必携】すぐ使える高速メモ検索コマンド3選

;; 2017年1月8日

;; 検索
   
;; org-seek　20161216.2102(in MELPA)
;; Searching Org-mode files with search tools.

;; 概要

;; org-mode専用の
;; 高速全文検索・見出し検索が
;; 欲しいですか？
;; それならば
;; org-seek.el を使ってみてください。
;; org-seek.elは
;; 以下の高速検索プログラムを使って
;; ディレクトリ内のorgファイルから
;; 検索してくれます。
;; ag(the_silver_searcher)
;; ripgrep(rg)
;; pt(the_platinum_searcher)
;; デフォルトはagです。
;; 実際は
;; 対応するEmacsインターフェース
;; ag.el
;; ripgrep.el
;; pt.el
;; をorg-mode専用に
;; ラップしているだけなので
;; org-seek.elのコード自体は短いです。
;; org-seek.elは3つのコマンドを用意しています。
;; M-x org-seek-string
;; 全文検索
;; M-x org-seek-regexp
;; 全文正規表現検索
;; M-x org-seek-headlines
;; 見出しのみ検索
;; どのコマンドも
;; 検索クエリ
;; 検索対象ディレクトリ
;; を順番に尋ね、
;; 対応する検査ツールで
;; 結果を表示してくれます。
;; あとはM-x grep同様に
;; M-g M-n ( next-error )
;; M-g M-p ( previous-error )
;; などでマッチした行に
;; ジャンプしてください。

;; (require 'mag2emacs-transform)
;; (setq mag2emacs-dir "~/ActiveProject/rubikichiMagMag")
