;;; init.el -*- lexical-binding: t; -*-

; packages

(setq package-archives '(("melpa"  . "https://melpa.org/packages/")
                         ("gnu"    . "https://elpa.gnu.org/packages/")
                         ("nongnu" . "https://elpa.nongnu.org/nongnu/")))

(use-package evil
  :ensure t
  :init
  (setq evil-want-integration t
        evil-want-keybinding nil)
  :config
  (evil-mode 1))

(use-package evil-collection
  :ensure t
  :after evil
  :config
  (evil-collection-init))

(use-package magit
  :ensure t)

(use-package org
  :ensure t)

(use-package doom-themes
  :ensure t
  :custom
  (doom-themes-enable-bold t)
  (doom-themes-enable-italic t)
  :config
  (load-theme 'doom-nord t)
  (doom-themes-org-config))
 
; general editor settings
(global-display-line-numbers-mode 1)
 
; top bar settings
(menu-bar-mode -1)
(tool-bar-mode -1)

; startup settings
(setq inhibit-startup-screen t)
(setq initial-scratch-message "")

; backup settings
(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t)
(setq delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2
  version-control t)

;;; init.el ends here

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
