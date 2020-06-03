;;; init-eglot.el --- Client support Language Server Protocol for Emacs -*- lexical-binding: t-*-
;;; Commentary:
;;; Code:

(when (maybe-require-package 'eglot)
  (add-hook 'eglot--managed-mode-hook (lambda () (flymake-mode -1))))

(provide 'init-eglot)
;;; init-eglot.el ends here
