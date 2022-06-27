(use-package tree-sitter
  :hook (prog-mode . tree-sitter-hl-mode))


(use-package tree-sitter-langs
  :after tree-sitter)

(use-package evil-textobj-tree-sitter)

;; bind `function.outer`(entire function block) to `f` for use in things like `vfaf`, `yaf`
(define-key evil-outer-text-objects-map "f" (evil-textobj-tree-sitter-get-textobj "function.outer"))
;; bind `function.inner`(function block without name and args) to `f` for use in things like `vif`, `yif`
(define-key evil-inner-text-objects-map "f" (evil-textobj-tree-sitter-get-textobj "function.inner"))
;; You can also bind multiple items and we will match the first one we can find
(define-key evil-outer-text-objects-map "a" (evil-textobj-tree-sitter-get-textobj ("conditional.outer" "loop.outer")))


(provide 'syntax)
