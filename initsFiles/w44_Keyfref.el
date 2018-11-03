;; それは、インストールした機能拡張をどれくらいの頻度で
;; 自分が使っているのか、定量的に知りたいということです。

;; パッケージ単位ではなくてコマンド単位になりますが、
;; keyfreqパッケージが役立つでしょう。

;; と設定し、M-x keyfreq-showで結果が見られます。

(require 'keyfreq)
(keyfreq-mode 1)
(keyfreq-autosave-mode 1)
