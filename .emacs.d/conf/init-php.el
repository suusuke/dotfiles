;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; php-mode
(load-library "php-mode")
(require 'php-mode)
(setq auto-mode-alist
      (cons '("\\.php\\'" . php-mode) auto-mode-alist))
(setq php-mode-force-pear t)
(add-hook 'php-mode-hook
          '(lambda ()
;;          (setq c-basic-offset 4)
          (setq tab-width 2)
          (setq indent-tabs-mode nil)
          (setq php-manual-path "~/phpdev/phpdoc/html/")
          (setq tags-file-name "~/TAGS.d/php/TAGS")
;;          (setq php-manual-url "http://www.phppro.jp/phpmanual/")
          ))

;; Define shortcut
;; (define-key php-mode-map
;;   "C-\'"
;;   'Php-Complete-Function)
