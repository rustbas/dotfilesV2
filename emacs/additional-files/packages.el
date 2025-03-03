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
  )

;; htmlize

(use-package htmlize
  :ensure t)
