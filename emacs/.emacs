;; MELPA
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

;; to avoid dumb mac key choices 
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

;; startup page
(setq inhibit-startup-message t)

;; font size
(set-face-attribute 'default nil :height 170)

;; ess
(add-to-list 'load-path "/Users/scu220/Programmi/emacs/plugin/ess-14.09/lisp/")
(load "ess-site")

;; move between windows with shift
(windmove-default-keybindings)

;; esmd
(load "/Users/scu220/Programmi/emacs/plugin/ESMD/esmd.el")

(add-to-list 'auto-mode-alist '("\\.vmd\\'" . vmd-mode))
(autoload 'vmd-mode "vmd" "Major mode for VMD." t)

;; markdown
(load "/Users/scu220/Programmi/emacs/plugin/markdown-mode/markdown-mode.el")
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; org-mode
(setq org-directory "~/Documents")
(setq org-mobile-directory "~/Dropbox/MobileOrg")

;; company mode
(global-set-key (kbd "<C-tab>") 'company-complete-common)
(add-hook 'after-init-hook 'global-company-mode)
;; (setq company-global-modes '(not ESS-MODE))
