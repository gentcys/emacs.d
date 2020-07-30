;;; init-golang.el --- Support fro the Go language -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require-package 'go-mode)

(when (maybe-require-package 'go-mode)
  (add-hook 'go-mode-hook 'eglot-ensure))


(provide 'init-golang)
;;; init-golang.el ends here
