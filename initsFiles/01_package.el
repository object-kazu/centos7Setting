;;package.elを有効にする
;; ***** 早めに呼び出すこと **********
(require 'package)
(package-initialize)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))

;; use-pachage
(require 'use-package)
