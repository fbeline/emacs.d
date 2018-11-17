;;;;
;; Smartparens set-up and configurations.
;;;;
(use-package smartparens
  :ensure t

  :init
  (setq sp-hybrid-kill-excessive-whitespace t)

  :bind (
         ("C-k" . sp-kill-sexp)
         ("C-M-y" . sp-copy-sexp)

         ("C-M-'" . sp-forward-slurp-sexp)
         ("C-M-;" . sp-forward-barf-sexp)

         ("C-M-r" . sp-splice-sexp-killing-around)

         ("C-M-a" . sp-beginning-of-sexp)
         ("C-M-E" . sp-end-of-sexp)
         ("C-M-n" . sp-next-sexp)
         ("C-M-p" . sp-previous-sexp))

  :config
  (progn
    (show-smartparens-global-mode t)))

(require 'smartparens-config)

(add-hook 'prog-mode-hook 'turn-on-smartparens-strict-mode)
(add-hook 'cider-repl-mode-hook 'turn-on-smartparens-strict-mode)
(add-hook 'markdown-mode-hook 'turn-on-smartparens-strict-mode)
(add-hook 'yaml-mode-hook #'turn-on-smartparens-strict-mode)

(provide 'init-smartparens)
