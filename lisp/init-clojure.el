;;;;
;; Install and configure Clojure packages.
;;;;
(use-package cider
  :ensure t
  :init
  (setq cider-repl-display-help-banner nil)
  (setq cider-lein-parameters "repl :headless :host localhost"))

(use-package clojure-mode
  :ensure t)

(use-package clj-refactor
  :ensure t
  :init(setq cljr-warn-on-eval nil))

(defun my-clojure-hook ()
  (clj-refactor-mode 1))

(add-hook 'clojure-mode-hook #'my-clojure-hook)

(defun set-test-indent ()
  (define-clojure-indent
    (against-background 'defun)
    (alet 'defun)
    (as-customer 1)
    (as-of 1)
    (constraint-fn 'defun)
    (data-fn 'defun)
    (facts 'defun)
    (fact 'defun)
    (for-all 'defun)
    (flow 'defun)
    (future-fact 'defun)
    (let-entities 'defun)
    (log-messages 'defun)
    (mlet 'defun)
    (provided 'defun)
    (request-context 'defun)
    (tabular 'defun)
    (tabular-flow 'defun)
    (verify 'defun)))

(eval-after-load 'clojure-mode
  '(set-test-indent))

(provide 'init-clojure)
