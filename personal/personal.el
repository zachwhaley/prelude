;;; package --- Summary
;;; Commentary:
;;; Code:

;; Show when lines exceed fill column
(require 'whitespace)
(setq whitespace-line-column 120)

;; Show line numbers
(require 'nlinum)
(global-nlinum-mode 1)

;; Make org mode look nicer
(defvar org-startup-indented)

;; Terminator style window splitting
(global-set-key (kbd "C-S-o") 'split-window-below)
(global-set-key (kbd "C-S-e") 'split-window-right)

;; C-SPC is easier than M-/
(global-set-key (kbd "C-SPC") 'hippie-expand)

;; Set custom ujelly theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/ujelly-theme")
(load-theme 'ujelly t)

(provide 'personal)
;;; personal.el ends here
