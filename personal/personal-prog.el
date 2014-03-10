;;; package --- Summary
;;; Commentary:
;;; Code:

;; YASnippet magic!
(require 'yasnippet)
(yas-reload-all)

(defun personal-prog-mode-defaults ()
  "Personal default coding hook."
  ;; For God's sake indent when I press return.
  (electric-indent-mode +1)
  (yas-minor-mode)
  (auto-complete-mode)
  ;; Turn off spell checking while coding; It's annoying.
  (flyspell-mode -1))

(add-hook 'prelude-prog-mode-hook 'personal-prog-mode-defaults t)

(define-key yas-minor-mode-map [(tab)] nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-minor-mode-map (kbd "M-/") 'yas-expand)

(provide 'personal-prog)
;;; personal-prog.el ends here
