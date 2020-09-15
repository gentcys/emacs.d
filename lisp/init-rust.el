;;; init-rust.el --- Rust editing -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


(when (maybe-require-package 'rust-mode)
  (add-hook 'rust-mode-hook 'eglot-ensure))

(provide 'init-rust)
;;; init-rust.el ends here
