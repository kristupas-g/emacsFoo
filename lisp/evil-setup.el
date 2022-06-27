(use-package evil
  :init
  (setq evil-want-C-u-scroll t)
  (setq evil-echo-state nil)
  (setq evil-default-cursor t)
  (setq evil-vsplit-window-right t)
  (setq evil-want-keybinding nil)
  (setq evil-vsplit-window-right t)
  :config
  (evil-mode 1)
  (evil-set-leader 'normal (kbd "SPC")))

(use-package general
  :config
  (general-create-definer leader
  :keymaps 'normal
  :prefix "<leader>"))

(leader
  "t" '(:ignore t :which-key "Toggle")
  "tn" '(display-line-numbers-mode :which-key "Line numbers"))

(leader
  "f"  '(:ignore t :which-key "File")
  "fs" '(save-buffer :which-key "Save file")
  "fe" '(eval-buffer :which-key "Eval buffer"))

(leader 
  "w" '(evil-window-map :which-key "Window")) ;; TODO remove C-w prefix



(leader "b" '(:ignore t :which-key "Buffer"))

(use-package evil-escape
  :after evil
  :init
  (setq-default evil-escape-key-sequence "jk")
  :config
  (evil-escape-mode 1))

(use-package evil-surround
  :after evil
  :config
  (global-evil-surround-mode 1))

(use-package evil-nerd-commenter
  :after evil
  :general
  (general-define-key
   :states '(normal visual)
   :prefix "gc"
   "c" '(evilnc-comment-or-uncomment-lines :which-key "Comment lines")
   "p" '(evilnc-comment-or-uncomment-paragraphs :which-key "Comment paragraphs")))

(use-package evil-snipe
  :init
  (setq evil-snipe-scope 'buffer)
  :config
  (evil-snipe-mode 1))

(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

(use-package smartparens
  :config
  (require 'smartparens-config)
  (smartparens-mode 1))


(provide 'evil-setup)
