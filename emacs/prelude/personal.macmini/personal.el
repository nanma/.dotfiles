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
;(setq org-src-fontify-natively t)
;
;;;for blog
;(add-to-list 'load-path "~/.emacs.d/personal/org-publish-meta")
;(add-hook 'org-mode-hook
;        (lambda ()
;          (load "grizzl-core.el")
;          (load "grizzl-read.el")
;          (require 'org-pm)))
;(setq org-pm-project-data-file-path "~/.emacs.d/personal/savefile/org-pm-project-data.el")
;
;;;picture export
;(setq org-ditaa-jar-path "~/.emacs.d/personal/ditaa0_9.jar")
;(setq org-plantuml-jar-path "~/.emacs.d/personal/plantuml.8015.jar")
;
;(add-hook 'org-babel-after-execute-hook 'bh/display-inline-images 'append)
;
;; Make babel results blocks lowercase
;(setq org-babel-results-keyword "results")
;
;(defun bh/display-inline-images ()
;  (condition-case nil
;      (org-display-inline-images)
;    (error nil)))
;
;(org-babel-do-load-languages
; (quote org-babel-load-languages)
; (quote ((emacs-lisp . t)
;         (dot . t)
;         (ditaa . t)
;         (R . t)
;         (python . t)
;         (ruby . t)
;         (gnuplot . t)
;         (clojure . t)
;         (sh . t)
;         (ledger . t)
;         (org . t)
;         (plantuml . t)
;         (latex . t))))
;
;; Do not prompt to confirm evaluation
;; This may be dangerous - make sure you understand the consequences
;; of setting this -- see the docstring for details
;(setq org-confirm-babel-evaluate nil)
;
;; Use fundamental mode when editing plantuml blocks with C-c '
;;;(add-to-list 'org-src-lang-modes (quote ("plantuml" . fundamental)))
;
;;;(load-file "~/.emacs.d/personal/graphviz-dot-mode.el")
;

(provide 'personal)
;;; personal ends here
