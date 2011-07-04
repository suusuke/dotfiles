;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; html-mode
(setq auto-mode-alist
      (append (list (cons "\\.\\(html\\|tt\\|tmpl\\|vm\\)$" 'html-mode))
             auto-mode-alist))
