(use-package magit
  :commands magit-status
  :general
  (leader
    "g"  '(:ignore t :which-key "Git")
    "gg" '(magit-status :which-key "Interface"))
  :custom
  (magit-display-buffer-function #'magit-display-buffer-same-window-except-diff-v1))

(use-package magit-todos
  :init (magit-todos-mode 1)
  :commands magit-status)


(provide 'git)
