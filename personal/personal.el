;;; package --- Summary
;;; Commentary:
;;; Code:

;; Add these to the required packages.
(prelude-require-packages
 '(auto-complete
   solarized-theme
   evil
   markdown-mode+
   python-environment
   jedi
   yasnippet))

;; Load Solarized theme.
(require 'solarized-theme)
(load-theme 'solarized-dark t)
;; make the fringe stand out from the background
(setq solarized-distinct-fringe-background t)
;; make the modeline high contrast
(setq solarized-high-contrast-mode-line t)

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

;; C-SPC is easier than M-/
(global-set-key (kbd "C-SPC") 'hippie-expand)

;; Enable Projectile
(projectile-global-mode)

;; Remove whitespace on save
(add-hook 'before-save-hook 'whitespace-cleanup)

(provide 'personal)
;;; personal.el ends here
