;; Start shell or switch to it if it's active.
(global-set-key (kbd "C-x m") 'shell)

;; Vim key mappings
(evil-mode 1)
;; Hold Ctrl while in insert mode to change "hjkl" back to directional keys.
(define-key evil-insert-state-map (kbd "C-h") 'backward-char)
(define-key evil-insert-state-map (kbd "C-l") 'forward-char)
(define-key evil-insert-state-map (kbd "C-j") 'next-line)
(define-key evil-insert-state-map (kbd "C-k") 'previous-line)
(define-key evil-insert-state-map "\t" 'evil-shift-right-line)
(define-key evil-insert-state-map [backtab] 'evil-shift-left-line)

;;Line length to 120
(setq whitespace-line-column 120) ;; limit line length

;; Show line numbers
(require 'nlinum)
(global-nlinum-mode 1)

;; Show all the files in current directory
(require 'dirtree)

;; Enable Projectile caching to prevent additional reindexing
(setq project-enable-caching t)

;; Make org mode look nicer
(setq org-startup-indented t)
