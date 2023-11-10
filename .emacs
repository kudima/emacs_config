(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(global-superword-mode t)
;; don't create lock files in the same directory
(setq create-lockfiles nil)
;; don't wrap lines
(set-default 'truncate-lines t)
;; no default screen at the start
(setq inhibit-startup-screen t)
(tool-bar-mode -1)

;; has to be before require evil, otherwise does not
;; quite work as vim
(setq evil-search-module 'evil-search)

(require 'evil)
(evil-mode 1)

(setq evil-ex-search-case 'sensitive)
(setq case-fold-search nil)
;; to treat symbols as words during search (including _)
(setq evil-symbol-word-search t)

;; ???
;;(modify-syntax-entry ?_ "w")

;; to move by symbols not by workds
(defalias 'forward-evil-word 'forward-evil-symbol)

;; add a line at 100 characters, to make sure the core 
;; is readable when we do vsplit
(global-display-fill-column-indicator-mode 1)
(setq-default display-fill-column-indicator-column 100)
(setq-default display-fill-column-indicator-character ?\N{U+2503})
(set-face-foreground 'fill-column-indicator "salmon")
(set-face-background 'fill-column-indicator "salmon")

;; show columns as well
(column-number-mode)

;; indents
(setq-default c-basic-offset 4)
(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(setq tab-width 4)
(setq evil-shift-width 4)
(setq tab-width 4)

;; same do/undo as in vim
(evil-set-undo-system 'undo-redo)
