
;; Install and configure tree-sitter for syntax highlighting
(use-package tree-sitter
  :ensure t
  :hook (after-init . global-tree-sitter-mode) 
  :config
  (use-package tree-sitter-langs
    :ensure t)
  (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode))

(provide 'my-tree-sitter)
