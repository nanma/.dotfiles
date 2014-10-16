;;; personal --- summary
;;; Commentary:

;;; Code:
;;;设置键盘cmd as meta, option as super,只对窗口模式有效
(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'super)

;;;设置字体，字号，只设置窗口模式下字体，否则terminal下找不到字体
;;;分别设置中英文字体
;;;(set-face-attribute 'default nil :font "Monaco 16")
;;;(set-face-attribute 'default nil :font "Hiragino Sans GB 16")

(cond (window-system
       (set-face-attribute 'default nil :font "Manaco 18")
       (dolist (character '(han kana symbol cjk-misc bopomofo))
         (set-fontset-font (frame-parameter nil 'font)
                           character
                           (font-spec :family "Hiragino Sans GB" :size 18)))
       ))

(provide 'personal)
;;; personal ends here

;;启动窗口最大化
;;字体超过16，启动后窗口不正常
;; Next code works with Emacs 21.4, 22.3, 23.1, 24.3.
;(when window-system
;  (let (
;        (px (display-pixel-width))
;        (py (display-pixel-height))
;        (fx (frame-char-width))
;        (fy (frame-char-height))
;        tx ty
;        )
;    ;; Next formulas discovered empiric on Windows host with default font.
;    (setq tx (- (/ px fx) 7))
;    (setq ty (- (/ py fy) 4))
;    (setq initial-frame-alist '((top . 2) (left . 2)))
;    (add-to-list 'initial-frame-alist (cons 'width tx))
;    (add-to-list 'initial-frame-alist (cons 'height ty))
;    ) )

;;取消启动文字
;; Don't use messages that you don't read
(setq initial-scratch-message "")
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message "manan")
;; 取消滚动栏，菜单栏
(scroll-bar-mode 0)
(menu-bar-mode 0)
