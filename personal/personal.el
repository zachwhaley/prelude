;; Start shell or switch to it if it's active.
(global-set-key (kbd "C-x m") 'shell)

;; Vim key mappings
(evil-mode 1)
;; Hold Ctrl while in insert mode to change "hjkl" back to directional keys.
(define-key evil-insert-state-map (kbd "C-h") 'evil-backward-char)
(define-key evil-insert-state-map (kbd "C-l") 'evil-forward-char)
(define-key evil-insert-state-map (kbd "C-j") 'evil-next-line)
(define-key evil-insert-state-map (kbd "C-k") 'evil-previous-line)
(define-key evil-insert-state-map "\t" 'evil-shift-right-line)
(define-key evil-insert-state-map [backtab] 'evil-shift-left-line)

;;Line length to 120
(setq-default fill-column 120)
;; Show when lines exceed fill column
(setq whitespace-line-column 120)

;; Show line numbers
(require 'nlinum)
(global-nlinum-mode 1)

;; Show all the files in current directory
(require 'dirtree)

;; Enable Projectile caching to prevent additional reindexing
(setq project-enable-caching t)

;; Make org mode look nicer
(setq org-startup-indented t)

;; Terminator style window splitting
(global-set-key (kbd "C-S-o") 'split-window-below)
(global-set-key (kbd "C-S-e") 'split-window-right)

;; Set custom ujelly theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/ujelly-theme")
(load-theme 'ujelly t)

(provide 'personal)
;;; personal.el ends here
