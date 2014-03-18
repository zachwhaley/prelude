;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'jedi)
(require 'rx)

(defun personal-python-mode-defaults ()
  "Personal default python hook."
  ;; Fixing font-lock face for solarized
  ;; found here: http://www.ummae.com/2013/01/06/emacs-with-solarized-dark-on-iterm2-python/
  (font-lock-add-keywords nil
                          '(("\\<\\([0-9]+\\(eE[+-]?[0-9]*\\)?\\|0[xX][0-9a-fA-F]+\\)\\>" . font-lock-constant-face)))
  (font-lock-add-keywords nil `(( ,(rx symbol-start (or "print" "exit" ) symbol-end) . font-lock-function-name-face)))
  (font-lock-add-keywords nil `(( ,(rx symbol-start (or "import" "from" ) symbol-end) . font-lock-preprocessor-face)))
  (font-lock-add-keywords nil `(( ,(rx "\\" (0+ blank) line-end ) . font-lock-preprocessor-face)))
  (font-lock-add-keywords nil '(( "\\(%[sdf]\\)" 1 font-lock-preprocessor-face prepend)))
  (font-lock-add-keywords nil '(( "\\<\\(FIXME\\|TODO\\|BUG\\):" 1 font-lock-warning-face prepend)))
  (jedi:setup)
  (jedi:ac-setup))

(add-hook 'python-mode-hook 'personal-python-mode-defaults)

(setq jedi:complete-on-dot t)

;;; personal-python.el ends here
