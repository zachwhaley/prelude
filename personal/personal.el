;;; package --- Summary
;;; Commentary:
;;; Code:

;; Add these to the required packages.
(prelude-require-packages
 '(auto-complete
   color-theme-solarized
   evil
   markdown-mode+
   python-environment
   jedi
   yasnippet))

;; Load Solarized theme.
(disable-theme 'zenburn)
(load-theme 'solarized-dark t)

;; Show when lines exceed fill column
(require 'whitespace)
(setq whitespace-line-column 120)

;; Show line numbers
(global-linum-mode 1)

;; Make org mode look nicer
(defvar org-startup-indented)

;; Terminator style window splitting
(global-set-key (kbd "C-S-o") 'split-window-below)
(global-set-key (kbd "C-S-e") 'split-window-right)
(global-set-key (kbd "C-S-x") 'delete-other-windows)

;; C-SPC is easier than M-/
(global-set-key (kbd "C-SPC") 'hippie-expand)

;; Remove whitespace on save
(add-hook 'before-save-hook 'whitespace-cleanup)

(provide 'personal)
;;; personal.el ends here
