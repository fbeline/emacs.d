                                        ;"repl :headless :host localhost";;;
;;
;;;;

;; Add the lisp directory to our load path.
(add-to-list 'load-path "~/.emacs.d/lisp")

;;;;
;; Packages.
;;

;; Define package repositories.
(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(add-to-list 'package-archives
             '("gnu" . "http://elpa.gnu.org/packages/"))

(setq package-archive-priorities
      `(("melpa-stable" . 20)
        ("gnu" . 10)
        ("melpa" . 0)))

(package-initialize)

;; Install use-package if necessary.
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)

;;;;
;; Customizations.
;;;;
(require 'init-clojure)
(require 'init-haskell)
(require 'init-company)
(require 'init-projectile)
(require 'init-dired)
(require 'init-editing)
(require 'init-flycheck)
(require 'init-magit)
(require 'init-miscellaneous)
(require 'init-smartparens)
(require 'init-general-preferences)
(require 'init-yasnippet)
(require 'init-neotree)
(require 'init-web-developer-tools)
(require 'init-evil)

(use-package ag
  :ensure t
  :commands (ag ag-regexp ag-project))

(use-package which-key
  :ensure t
  :config
  (which-key-mode +1))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-ghc-show-info t)
 '(haskell-ask-also-kill-buffers nil)
 '(haskell-interactive-popup-errors nil)
 '(haskell-process-type (quote stack-ghci))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (which-key moe-theme ag evil-magit evil-goggles evil-commentary evil-collection robe seeing-is-believing yasnippet-snippets yaml-mode web-mode use-package smartparens restclient projectile markdown-mode magit json-mode flycheck flx-ido company clj-refactor aggressive-indent)))
 '(safe-local-variable-values (quote ((folded-file . t)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
