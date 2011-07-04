;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; C-hをBackSpaceに
(global-set-key "\C-h" 'delete-backward-char)

;; [2008-03-12]
;; C-lはanythingに

;; C-x ?でヘルプ
(global-set-key "\C-x?" 'help)

;; C-x uで全置引数
(global-set-key "\C-xu" 'universal-argument)

;; C-c C-iでインフォを引く
(global-set-key "\C-c\C-i" 'info-lookup-symbol)
