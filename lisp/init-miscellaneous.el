;;; init-miscellaneous.el --- summary -*- lexical-binding: t -*-

;; This file is not part of GNU Emacs

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; For a full copy of the GNU General Public License
;; see <http://www.gnu.org/licenses/>.


;;; Commentary:

;; commentary

;;; Code:

(use-package google-translate
  :ensure t
  :config
  (require 'google-translate-smooth-ui)
  (setq google-translate-translation-directions-alist '(("en" . "pt")))
  (evil-leader/set-key
    "t" 'google-translate-smooth-translate))

(use-package moe-theme
  :ensure t
  :config
  (load-theme 'moe-dark t))

(defun fontify-frame (frame)
  (interactive)
  (if window-system
      (progn
        (if (> (x-display-pixel-width) 2000)
            (set-frame-parameter frame 'font "Source Code Pro 17")
          (set-frame-parameter frame 'font "Source Code Pro 12")))))

(fontify-frame nil)
(push 'fontify-frame after-make-frame-functions)

(provide 'init-miscellaneous)
