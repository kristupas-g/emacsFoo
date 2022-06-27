(use-package doom-themes
  :config
  (load-theme 'doom-one t))

(use-package doom-modeline
  :init
  (setq doom-modeline-height 15)
  (setq doom-modeline-major-mode-icon nil)
  (setq doom-modeline-buffer-encoding nil)
  :config
  (doom-modeline-mode 1))

(use-package all-the-icons
 :if (display-graphic-p))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  :config
  (setq which-key-idle-delay 0.3))

(use-package dashboard
  :init
  (setq dashboard-center-content t)
  :config
  (dashboard-setup-startup-hook))

(provide 'user-interface)
