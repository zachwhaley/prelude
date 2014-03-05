;;; package --- Summary
;;; Commentary:
;;; Code:

(defun new-line-dwim ()
  "Make smartparens-mode better.
Pressing return after creating an opening and closing paren via
smartparens-mode will place your cursor one line down and indent it while
placing the closing paren one more line down and at the same column as it's
statement."
  (interactive)
  (let ((break-open-pair (or (and (looking-back "{") (looking-at "}"))
                             (and (looking-back ">") (looking-at "<"))
                             (and (looking-back "(") (looking-at ")"))
                             (and (looking-back "\\[") (looking-at "\\]")))))
    (newline)
    (when break-open-pair
      (save-excursion
        (newline)
        (indent-for-tab-command)))
    (indent-for-tab-command)))

(defun programming-keys ()
  "Add custom key mappings when editing programming languages."
  (local-set-key (kbd "RET") 'new-line-dwim))

(add-hook 'c-mode-hook 'programming-keys)
(add-hook 'java-mode-hook 'programming-keys)

(provide 'programming)
;;; programming.el ends here
