;;; init-selectrum.el --- Config for Selectrum -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(when (require-package 'selectrum)
  (add-hook 'after-init-hook 'selectrum-mode)

  (when (maybe-require-package 'selectrum-prescient)
    (require 'prescient)
    (prescient-persist-mode 1)
    (selectrum-prescient-mode 1))

  (when (maybe-require-package 'consult)
    (when (maybe-require-package 'projectile)
      (setq-default consult-project-root-function 'projectile-project-root))

    (global-set-key (kbd "M-s /") 'consult-line)

    (when (executable-find "rg")
      (global-set-key (kbd "M-?") 'consult-ripgrep))
    (global-set-key [remap switch-to-buffer] 'consult-buffer)
    (global-set-key [remap switch-to-buffer-other-window] 'consult-buffer-other-window)
    (global-set-key [remap switch-to-buffer-other-frame] 'consult-buffer-other-frame))

  (maybe-require-package 'consult-flycheck)

  (when (maybe-require-package 'marginalia)
    (add-hook 'after-init-hook 'marginalia-mode)
    (setq-default marginalia-annotators '(marginalia-annotators-heavy))))

(provide 'init-selectrum)
;;; init-selectrum.el ends here
