(tool-bar-mode -1)
(tooltip-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(blink-cursor-mode -1)
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
(setq-default mode-line-format nil)
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq inhibit-startup-message t)
(setq custom-file (concat user-emacs-directory "/custom.el"))

;; Transperancy
(set-frame-parameter (selected-frame) 'alpha '(93 . 50))
 (add-to-list 'default-frame-alist '(alpha . (93 . 50)))

;; Maximized
(add-to-list 'initial-frame-alist '(fullscreen . maximized))
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Horizontal padding
(set-fringe-mode 30)

(set-face-attribute 'default nil :font "Liga SFMono Nerd Font" :height 200 :weight 'light)

(provide 'settings)
