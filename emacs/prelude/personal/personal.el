;;; personal --- summary
;;; Commentary:

;;; Code:
;;;设置键盘cmd as meta, option as super,只对窗口模式有效
(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'super)

(cond (window-system
       (set-face-attribute 'default nil :font "Manaco 18")
       (dolist (character '(han kana symbol cjk-misc bopomofo))
         (set-fontset-font (frame-parameter nil 'font)
                           character
                           (font-spec :family "Hiragino Sans GB" :size 18)))
       ))

;;取消启动文字
;; Don't use messages that you don't read
(setq initial-scratch-message "")
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message "manan")
;; 取消滚动栏，菜单栏
(scroll-bar-mode 0)
(menu-bar-mode 0)

;开启自动显示断行
(global-visual-line-mode 1)

;(add-to-list 'load-path "~/.emacs.d/personal")

;; org-mode
;(add-to-list 'load-path "~/.emacs.d/personal/org-8.2.10/lisp")
;(add-to-list 'load-path "~/.emacs.d/personal/org-8.2.10/contrib/lisp")

(add-to-list 'load-path "~/.emacs.d/personal/org-publish-meta")
(add-hook 'org-mode-hook
        (lambda ()
          (load "grizzl-core.el")
          (load "grizzl-read.el")
          (require 'org-pm)))
(setq org-pm-project-data-file-path "~/.emacs.d/personal/savefile/org-pm-project-data.el")

(provide 'personal)
;;; personal ends here
