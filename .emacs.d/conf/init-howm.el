;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;;
;; howm
;;
(add-to-list 'load-path "~/.emacs.d/elisp/howm/")
(setq howm-menu-lang 'ja)
(global-set-key "\C-c,," 'howm-menu)
(autoload 'howm-menu "howm-mode" "Hitori Otegaru Wiki Modoki" t)
;; howm directoryの場所
(when
    (and run-w32 run-meadow
         (setq howm-directory "~/Dropbox/My Dropbox/howm/")
    )
)

(when
    (and run-darwin
         (setq howm-directory "~/Dropbox/howm/")
    )
)


