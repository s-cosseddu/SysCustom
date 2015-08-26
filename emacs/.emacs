;; .emacs ---
;; Salvatore Cosseddu 2015

;; --------------------
;; options 
;; startup page
(setq inhibit-startup-message t)

;; font size
(set-face-attribute 'default nil :height 170)

;; move between windows with shift
(windmove-default-keybindings)

;; --------------------
;; packages

;; MELPA
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line


;; ;; ess
;; (add-to-list 'load-path "~/Programmi/emacs/plugin/ess-14.09/lisp/")
;; (load "ess-site")


;; esmd
(load "~/Programmi/emacs/plugin/ESMD/esmd.el")
(add-to-list 'auto-mode-alist '("\\.vmd\\'" . vmd-mode))
(autoload 'vmd-mode "vmd" "Major mode for VMD." t)

;; ;; markdown
;; (load "~/Programmi/emacs/plugin/markdown-mode/markdown-mode.el")
;; (autoload 'markdown-mode "markdown-mode"
;;    "Major mode for editing Markdown files" t)
;; (add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; company mode
(global-set-key (kbd "<C-tab>") 'company-complete-common)
(add-hook 'after-init-hook 'global-company-mode)
;; (setq company-global-modes '(not ESS-MODE))


;; Latex
(require 'reftex)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)   ; with AUCTeX LaTeX mode
(add-hook 'latex-mode-hook 'turn-on-reftex)   ; with Emacs latex mode

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(add-hook 'latex-mode-hook 'auto-fill-mode)
(add-hook 'LaTeX-mode-hook 'auto-fill-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)

(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)
(setq-default TeX-PDF-mode t) 


;; -----------------
;; additional 
;; ;; to avoid dumb mac key choices 
;; (setq mac-option-key-is-meta nil)
;; (setq mac-command-key-is-meta t)
;; (setq mac-command-modifier 'meta)
;; (setq mac-option-modifier nil)
;; 
