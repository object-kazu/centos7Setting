

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; auto-insert // template file control
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'autoinsert)
(add-hook 'find-file-hooks 'auto-insert)
(setq auto-insert-alist nil) ;; デフォルトのひな形を一度全部オフにする。
(setq auto-insert-alist
      (append '(
                (("\\.py$" . "python template")
                 nil
                 "#!/usr/bin/env python\n"
                 "\n"
                 "import sys, os, math\n"
                 "# import numpy as np\n"
                 "# import scipy as sp\n"
                 "# import ROOT\n"
                 "# import pyfits as pf\n"
                 "\n"
                 _
                 )) auto-insert-alist))
(setq auto-insert-alist
      (append '(
                (("\\.sh$" . "shell script template")
                 nil
                 "#!/bin/bash\n"
                 "\n"
                 _
                 )) auto-insert-alist))
(setq auto-insert-alist
      (append '(
                (("\\.memo$" . "pharmaceutics memo template")
                 nil
                 "* 研修会題名 :"
		 "\n""\n"
		 "\n""\n"
		 "* 学習時間 :"
		 "\n""\n"
		 "\n""\n"
		 "* 受講年月日 :"
		 "\n""\n"
		 "\n""\n"
		 "* 場所 :"
		 "\n""\n"
		 "\n""\n"
		 "* 研修主催者 :""\n""\n"
		 "* 演題、演者 :""\n""\n"
		 "* 研修まとめ :""\n""\n"
		 "\n""\n"
		 "* 実践できそうなこと :""\n"
                 "\n""\n"
		 "* 今後の学習課題 :""\n""\n"
                 _
                 )) auto-insert-alist))
(setq auto-insert-alist
      (append '(
                (("\\.radio$" . "radio mail memo template")
                 nil
		 "テーマ「 」" 
		 "\n""\n"
		 "〒３８３−００１５"
		 "\n"
		 "長野県中野市１１７９−３１"
		 "\n"
		 "電話番号"
		 "\n"
		 "０９０−１７５８−１０２５"
		 "\n"
		 "清水一征（シミズカズユキ）"
		 "\n"
		 "ラジオネーム：過去からの紅葉マック"
		 "\n"
		 "---- koko kara ----"
		 "\n""\n"
		 "PS."
                 "\n""\n"
		 "\n""\n"
		 _
		 )) auto-insert-alist))

(setq auto-insert-alist
      (append '(
                (("\\.org$" . "org mode template")
                 nil
                 "#+STARTUP: indent content"
                 "\n"
                 _
                 )) auto-insert-alist))
