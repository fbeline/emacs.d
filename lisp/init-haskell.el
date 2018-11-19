(use-package haskell-mode
  :ensure t
  :defer t
  :init
  (dolist (hook '(eldoc-mode
                  haskell-decl-scan-mode
                  interactive-haskell-mode
                  ghc-comp-init))
    (add-hook 'haskell-mode-hook hook)))

(use-package ghc
  :ensure t
  :commands ghc-comp-init ghc-init ghc-debug
  :config
  (use-package company-ghc
    :ensure t
    :config
    (add-to-list 'company-backends 'company-ghc)))

(provide 'init-haskell)
