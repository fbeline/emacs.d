(use-package haskell-mode
  :ensure t
  :config
  (add-hook 'haskell-mode-hook 'hindent-mode))

(use-package hindent
  :after haskell-mode
  :ensure t)

(use-package ghc
  :after haskell-mode
  :ensure t)

(provide 'init-haskell)
