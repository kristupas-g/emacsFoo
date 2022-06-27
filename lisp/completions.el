(use-package counsel
  :init
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "")
  :general
  (leader "ff" '(counsel-find-file :which-key "Find file"))
  (leader "tt" '(counsel-load-theme :which-key "Change theme"))
  :config
  (evil-define-key 'normal 'global (kbd ":") 'counsel-M-x)
  (ivy-mode 1))


(use-package all-the-icons-ivy
  :after '(all-the-icons counsel)
  :init (add-hook 'after-init-hook 'all-the-icons-ivy-setup))


(use-package helpful
  :general
  (leader
    "h"  '(:ignore t :which-key "Help")
    "hv" '(helpful-variable :which-key "Describe variable")
    "hf" '(helpful-function :which-key "Describe function")
    "hp" '(describe-package :which-key "Describe package")
    "ha" '(helpful-at-point :which-key "Describe point")))

(use-package projectile
  :config
  (projectile-mode 1))
(use-package counsel-projectile
 :after projectile
 :general
 (leader
   "p"  '(:ignore t :which-key "Project")
   "pf" '(counsel-projectile-find-file :which-key "Find file")
   "pr" '(projectile-run-project :which-key "Run project")
   "pp" '(counsel-projectile-switch-project :which-key "Run project")
   "." '(counsel-projectile-switch-to-buffer :which-key "Switch buffer")
   "pt" '(projectile-test-project :which-key "Run all tests"))
 :config
 (counsel-projectile-mode 1))

(provide 'completions)
