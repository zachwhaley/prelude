;;; Code:
(defun new-line-dwim ()
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

(defun add-keys ()
  (local-set-key (kbd "RET") 'new-line-dwim))
(add-hook 'prog-mode-hook 'add-keys)

(provide 'programming)
;;; programming.el ends here
