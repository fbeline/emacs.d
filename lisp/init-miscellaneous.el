(use-package moe-theme
  :ensure t
  :config
  (load-theme 'moe-dark t))

(use-package recentf
  :ensure t
  :config
  (setq recentf-max-saved-items 100
        recentf-max-menu-items 15
        recentf-auto-cleanup 'never)
  (recentf-mode +1))

(use-package ido
  :init (progn
          (ido-mode)
          (ido-everywhere))
  :config
  (setq ido-enable-flex-matching t
        ido-create-new-buffer 'always
        ido-use-filename-at-point 'guess
        ido-default-file-method 'selected-window
        ido-default-buffer-method 'selected-window
        ido-use-faces nil))

(defun er-recentf-ido-find-file ()
  (interactive)
  (let ((file (ido-completing-read "Choose recent file: " recentf-list nil t)))
    (when file
      (find-file file))))

(defun fontify-frame (frame)
  (interactive)
  (if window-system
      (progn
        (if (> (x-display-pixel-width) 2000)
            (set-frame-parameter frame 'font "Source Code Pro 17")
          (set-frame-parameter frame 'font "Source Code Pro 14")))))

(fontify-frame nil)
(push 'fontify-frame after-make-frame-functions)

(global-set-key (kbd "C-c e") #'er-recentf-ido-find-file)

(provide 'init-miscellaneous)
