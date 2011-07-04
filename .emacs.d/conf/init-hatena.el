;;; simple-hatena-mode
;;; svn http://svn.coderepos.org/share/lang/elisp/simple-hatena-mode/trunk
;;; url http://coderepos.org/share/wiki/SimpleHatenaMode
(setq load-path
     (cons "~/.emacs.d/elisp/simple-hatena-mode" load-path))
(require 'simple-hatena-mode)
(setq simple-hatena-default-id "suusuke")
;;; はてダラスクリプトのパス(デフォルト値: hw.pl)
(setq simple-hatena-bin "~/.emacs.d/bin/hw.pl")
;;; はてダラデータを置くディレクトリ(デフォルト値: ~/.hatena)
(setq simple-hatena-root "~/.emacs.d/elisp/simple-hatena-mode/.hatena")

