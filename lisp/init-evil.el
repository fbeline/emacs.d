;;;;
;; Install and configure evil.
;;;;

(use-package evil
  :ensure t
  :init
  (setq evil-ex-complete-emacs-commands nil)
  (setq evil-shift-round nil)
  (setq evil-want-C-u-scroll t)
  :config
  (evil-mode 1))

(use-package evil-leader
  :after evil
  :ensure t
  :config
  (global-evil-leader-mode))

(use-package evil-indent-textobject
  :after evil
  :ensure t)

(use-package evil-commentary
  :after evil
  :ensure t
  :bind (:map evil-normal-state-map
              ("gc" . evil-commentary)))

(use-package evil-goggles
  :after evil
  :ensure t
  :config
  (evil-goggles-mode))

(use-package evil-magit
  :after evil
  :ensure t
  :config
  (progn
    (evil-leader/set-key "gs" 'magit-status)))

(provide 'init-evil)
