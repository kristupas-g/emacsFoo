(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :init
  (setq lsp-headerline-breadcrumb-enable nil)
  (setq lsp-keymap-prefix nil)
  (setq lsp-log-io nil)
  (setq lsp-auto-execute-action nil))

(use-package lsp-ui
  :init
  (setq lsp-ui-sideline-enable nil)
  :hook (lsp-mode . lsp-ui-mode))

(use-package typescript-mode
  :mode ("\\.ts" "\\.tsx" "\\.js" "\\.jsx")
  :init
  (setq typescript-indent-level 2))

(use-package flycheck     ;; Javasciprt or elisp so far
  :init
  (global-flycheck-mode t))

(use-package prettier)

(use-package company
  :after lsp-mode
  :hook (lsp-mode . company-mode) ;; Add completions for emacs lisp mode
  :bind (:map company-active-map
	 ("<right>" . company-complete-selection))
	(:map lsp-mode-map
	 ("<right>" . company-indent-or-complete-common))
  :custom
  (company-minimum-prefix-length 1)
  (company-idle-delay 0.0))

(use-package company-box
  :after company
  :hook (company-mode . company-box-mode))

(use-package yasnippet
  :disabled t)

(provide 'lsp)
