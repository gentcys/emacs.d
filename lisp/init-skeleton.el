;;; init-skeleton.el --- Automatic insertion of customized templates -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(define-abbrev emacs-lisp-mode-abbrev-table "nlif"
  "" 'new-lisp-init-file)

(define-skeleton new-lisp-init-file
  "Create a init-*.el file in (emacs config dir)/lisp"
  > ";;; init-" (setq v1 (substring (buffer-name) 5 -3)) ".el --- " (skeleton-read "Summary for individual config: ") " -*- lexical-binding: t; -*-" \n
  > ";;; Commentary:" \n
  > ";;; Code:" \n
  > \n
  > _ \n
  > \n
  > \n
  > "(provide 'init-" v1 ")" \n
  > ";;; init-" v1 ".el ends here")

(add-hook 'emacs-lisp-mode #'abbrev-mode)


(provide 'init-skeleton)
;;; init-skeleton.el ends here
