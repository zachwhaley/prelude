;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'evil)
(evil-mode 1)

;; Vim key mappings
(require 'evil-states)
(require 'evil-commands)
;; Hold Ctrl while in insert mode to change "hjkl" back to directional keys.
(define-key evil-insert-state-map (kbd "C-h") 'evil-backward-char)
(define-key evil-insert-state-map (kbd "C-l") 'evil-forward-char)
(define-key evil-insert-state-map (kbd "C-j") 'evil-next-line)
(define-key evil-insert-state-map (kbd "C-k") 'evil-previous-line)

(defun evil-ret-in-normal-state ()
  "Press \\<C-j> to return at point while in normal state."
  (interactive)
  (evil-insert-state)
  (evil-ret-and-indent)
  (evil-normal-state))

;; Use C-j to return a line while not in insert mode
(define-key evil-normal-state-map (kbd "C-j") 'evil-ret-in-normal-state)

(provide 'personal-evil)
;;; personal-evil.el ends here
