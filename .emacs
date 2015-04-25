;; Get all the package repos
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
  ;;(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")
  )

;; Start auto-complete and load default configs
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

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

;; Turn on smyx-theme
;;(require 'smyx-theme)

;; Turn on molokai-theme
;;(require 'molokai-theme)

;; Turn on solarized-dark
;;(require 'solarized-dark-theme)

;; Turn on solarized-light
;;(require 'solarized-light-theme)

;; Turn on light theme
;;(require 'github-theme)

;; Turn on atom theme
(require 'atom-dark-theme)

;; Try bliss theme
;;(require 'bliss-theme)

;; Change default compilation command
(setq compile-command "gcc -g -Wall -std=c99 -o run") 

;; Change default font
(set-default-font "Inconsolata for powerline 11")

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
