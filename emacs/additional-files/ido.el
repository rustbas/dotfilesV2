;; Init IDO
;; (setq ido-enable-flex-matching t)
;; (setq ido-everywhere t)
;; (ido-mode 1)

;; ffap
;; (setq ido-use-filename-at-point 'guess)

(require 'ido)
(ido-mode t)

(setq ido-max-work-directory-list 5)
