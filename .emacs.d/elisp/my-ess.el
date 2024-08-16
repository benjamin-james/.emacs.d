
					;https://github.com/MilesMcBain/esscss

(use-package ess)

(use-package polymode
  :straight t
  :mode (("\\.Rmd\\'" . poly-markdown+r-mode))
  :config
  (use-package poly-R
    :straight t)
  (use-package poly-markdown
    :straight t))
(use-package ess-view
  :after ess)
