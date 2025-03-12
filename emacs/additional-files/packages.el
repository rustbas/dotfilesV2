;; Magit

(use-package magit
  :ensure t)

;; MELPA

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; HOWM

(use-package howm
  :ensure t
  :init
  (setq howm-directory "~/ws/docs/NotesOrgMode/howm/")
  ;; (setq howm-directory "~/howm/")
  (setq howm-keyword-file "~/ws/docs/NotesOrgMode/howm/")
  (setq howm-history-file "~/ws/docs/NotesOrgMode/howm/")
  (setq howm-file-name-format "%Y/%m/%Y-%m-%d-%H%M%S.org")
  ;; (require 'howm-org) ;; Write notes in Org-mode.
  (setq howm-follow-theme t) ;; Use your Emacs theme colors.
  )

;; htmlize

(use-package htmlize
  :ensure t)
