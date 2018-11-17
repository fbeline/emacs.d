;;;;
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
(require 'init-evil)
(require 'init-clojure)
(require 'init-company)
(require 'init-dired)
(require 'init-editing)
(require 'init-flycheck)
(require 'init-magit)
(require 'init-miscellaneous)
(require 'init-smartparens)
(require 'init-general-preferences)
(require 'init-yasnippet)
(require 'init-web-developer-tools)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (adwaita)))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (robe inf-ruby seeing-is-believing yasnippet-snippets yaml-mode web-mode use-package smartparens slack restclient projectile markdown-mode magit json-mode flycheck flx-ido company clj-refactor aggressive-indent)))
 '(safe-local-variable-values (quote ((folded-file . t)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
