;; MELPA!
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

;; less is more!
(setq make-backup-files nil)

;; elm mode
(add-to-list 'auto-mode-alist
	     '("\\.elm" . elm-mode))

;; javascript
(setq js-indent-level 2)

;; ruby-mode
(add-to-list 'auto-mode-alist
	     '("\\.\\(?:cap\\|gemspec\\|irbrc\\|gemrc\\|rake\\|rb\\|ru\\|thor\\)\\'" . ruby-mode))
(add-to-list 'auto-mode-alist
	     '("\\(?:Brewfile\\|Capfile\\|Gemfile\\(?:\\.[a-zA-Z0-9._-]+\\)?\\|[rR]akefile\\)\\'" . ruby-mode))

(setq require-final-newline t)

;; scss mode
(add-to-list 'load-path (expand-file-name "~/.emacs.d/scss"))
(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

;; haml mode!
(add-to-list 'load-path (expand-file-name "~/.emacs.d/haml"))
(require 'haml-mode)

