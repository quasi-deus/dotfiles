setq visible-bell 1)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/pack
ages/"))
(package-initialize)

;;themes

;;indent
(require 'evil)
(evil-mode 1)

(setq evil-motion-state-modes (append evil-emacs-state-modes evil-
motion-state-modes))
(setq evil-emacs-state-modes nil)

(load (expand-file-name "~/.quicklisp/slime-helper.el"))
(setq inferior-lisp-program "sbcl")

;;Tex
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(setq-default TeX-PDF-mode t)


(desktop-save-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(auctex auctex-latexmk latex-preview-pane paredit slime evil))
)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
