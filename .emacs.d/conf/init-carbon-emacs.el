;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-
;;-----------------------------------------------------------------
;; フルスクリーン
;; http://www.sooey.com/journal/2008/07/19/741/
;;-----------------------------------------------------------------
;;  (add-hook 'window-setup-hook
;;            (lambda (
;;              (set-frame-parameter nil 'fullscreen 'fullboth)))
;;-----------------------------------------------------------------
;; ファイル名の濁点・半濁点を化けないようにする
;;-----------------------------------------------------------------
;; (autoload 'utf-8m "utf-8m" t)
;; (set-file-name-coding-system 'utf-8m)
;;-----------------------------------------------------------------
;; ウィンドウのサイズ・位置設定
;;-----------------------------------------------------------------
;; (setq initial-frame-alist '((top . 0) (left . 0)))
;;-----------------------------------------------------------------
;; 半透明化パッチ適用
;;-----------------------------------------------------------------
;; http://homepage.mac.com/matsuan_tamachan/emacs/TransparencyPatch.html
(setq default-frame-alist
    (append (list '(alpha . (90 90))) default-frame-alist))
;;-----------------------------------------------------------------
;; fontsetの定義
;;-----------------------------------------------------------------
;;(require 'carbon-font)
;;(fixed-width-set-fontset "hiramaru" 14)
;;-----------------------------------------------------------------
;; Color Setting
;;-----------------------------------------------------------------
;;;; 基本色
;;(set-background-color "#222222")
;;(set-foreground-color "#AAAAAA")
;;;; カーソル色
;;(set-cursor-color "#FF0000")
;;;; モードラインの文字の色
;;(set-face-foreground 'modeline "yellow")
;;;; モードラインの背景色
;;(set-face-background 'modeline "darkslateblue")
;;;; ウィンドウを複数開いた時、アクティヴでない方のモードラインの色
;;(set-face-foreground 'mode-line-inactive "#CCCCCC")
;;(set-face-background 'mode-line-inactive "#333333")
;;;; カーソル
;;(add-to-list 'default-frame-alist '(cursor-type . '(bar . 5))) ;;幅5ポイントの縦棒カーソル
;;;; フォント色
;;(set-face-foreground 'font-lock-comment-face "#444444")
;;(set-face-foreground 'font-lock-string-face  "DarkGoldenrod2")
;;(set-face-foreground 'font-lock-keyword-face "LightSlateBlue")
;;(set-face-foreground 'font-lock-function-name-face "#ff0000")
;;(set-face-foreground 'font-lock-variable-name-face "DarkOrange")
;;(set-face-foreground 'font-lock-type-face "DarkOrchid")
;;(set-face-foreground 'font-lock-warning-face "DarkMagenta")
;;(set-face-foreground 'font-lock-builtin-face "DarkCyan")
;;(set-face-foreground 'font-lock-constant-face "yellow")
;;;; 太字にしたい部分
;;(set-face-bold-p 'font-lock-function-name-face t)
;;(set-face-background 'highlight "yellow")
;;(set-face-foreground 'highlight "black")
;;(set-face-background 'region "DarkViolet")
;;(set-face-foreground 'region "white")

;; color theme
;;; http://www.cs.cmu.edu/~maverick/GNUEmacsColorThemeTest/index-el.html
(require 'color-theme)
(color-theme-initialize)
(color-theme-arjen)

;;; window setting
(if (boundp 'window-system)
    (setq initial-frame-alist
          (append (list
                   '(vertical-scroll-bars . nil) ;;スクロールバーはいらない
                   '(width . 120) ;; ウィンドウ幅
                   '(height . 45) ;; ウィンドウの高さ
                   '(top .     0) ;;表示位置
                   '(left . 1100) ;;表示位置
                   )
                  initial-frame-alist)))
(setq default-frame-alist initial-frame-alist)


;;; optionをメタキーにする。
(setq mac-option-modifier 'meta)
