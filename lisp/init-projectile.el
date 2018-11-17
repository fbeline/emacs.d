(use-package projectile
  :ensure t
  :config
  (projectile-global-mode)
  (setq projectile-enable-caching t)
  (evil-leader/set-key
    "ps" 'projectile-ag))

(provide 'init-projectile)
