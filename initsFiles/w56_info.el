;;; ~/info/以下をinfoファイル検索ディレクトリに加える
(add-to-list 'Info-directory-list "~/Dropbox/info_emcs25/")
;;; emacs→emacs251-jaにリダイレクトする
(defun Info-find-node--info-ja (orig-fn filename &rest args)
 (apply orig-fn
        (pcase filename
          ("emacs" "emacs251-ja")
          (t filename))
        args))
(advice-add 'Info-find-node :around 'Info-find-node--info-ja)
