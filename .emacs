;; Get all the package repos
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
  (add-to-list 'package-archives '("melpa" . "https://melpa.milkbox.net/packages/"))
  )

;; Start auto-complete and load default configs
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(set 'ac-max-width 0.5)

;; Get autopair up and running
(require 'autopair)
(autopair-global-mode)

;; Stop emacs from making back-up files
(setq make-backup-files nil)

;; Hide things
(setq inhibit-splash-screen t)
(tool-bar-mode -1)
;;(menu-bar-mode -1)
(scroll-bar-mode -1)

;; Turn on line numbers
(global-linum-mode)

;; Change default compilation command
(setq compile-command "gcc -g -Wall -std=c99 -o run") 

;; Change default font
(set-default-font "Oxygen Mono 12")

;; Empty scratch page
(setq initial-scratch-message "")

;; Changes the tabs into two spaces
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; 80 column indicator 
(require 'fill-column-indicator)

;; customize the indicate
(setq fci-rule-width 1)
(setq fci-rule-color "grey")
(setq fci-rule-column 80)

;; 80 column indicator as a global mode
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode 1)

;; Highlight parenthesis in all modes
(require 'highlight-parentheses)
(define-globalized-minor-mode global-highlight-parentheses-mode highlight-parentheses-mode (lambda () (highlight-parentheses-mode 1)))
(global-highlight-parentheses-mode 1)

;; Change the goto-line command 
(global-set-key (kbd "C-g") 'goto-line)

;; Enable Neotree and set the default keybinding
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (hl-line+ nlinum all-the-icons doom-themes neotree highlight-parentheses fill-column-indicator autopair auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; All The Icons
(require 'all-the-icons)

;; nlinum and hl-line+
(require 'nlinum)
(require 'hl-line+)

;; Doom Theme
(require 'doom-themes)
(load-theme 'doom-one t) ;; dark-one theme
;;(load-theme 'doom-molokai t) ;; molokai theme

;;; Settings (defaults)
(setq doom-enable-bold t    ; if nil, bolding are universally disabled
      doom-enable-italic t  ; if nil, italics are universally disabled

      ;; doom-one specific settings
      doom-one-brighter-modeline nil
      doom-one-brighter-comments nil
      )

;;; OPTIONAL
;; brighter source buffers (that represent files)
(add-hook 'find-file-hook 'doom-buffer-mode-maybe)
;; if you use auto-revert-mode
(add-hook 'after-revert-hook 'doom-buffer-mode-maybe)
;; you can brighten other buffers (unconditionally) with:
(add-hook 'ediff-prepare-buffer-hook 'doom-buffer-mode)

;; brighter minibuffer when active
(add-hook 'minibuffer-setup-hook 'doom-brighten-minibuffer)

;; Enable custom neotree theme
(require 'doom-neotree)    ; all-the-icons fonts must be installed!

;; Enable nlinum line highlighting
(require 'doom-nlinum)     ; requires nlinum and hl-line-mode
