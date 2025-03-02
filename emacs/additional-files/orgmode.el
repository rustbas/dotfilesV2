;; This is for org-mode agenda view activation
;; '(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
;; This is for key bindings to invoke agenda mode (see line-2)
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

;; Allow `org-refile` (C-c C-w) move subtree to another file
;; Maybe useful in GTD
(setq org-refile-use-outline-path 'file)

;; Load org-mode file from repo
(custom-set-variables
'(org-agenda-files (file-expand-wildcards "~/ws/docs/NotesOrgMode/GTD/*.org"))
)
