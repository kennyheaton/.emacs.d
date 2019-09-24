
;; Disable backups and auto save
(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files
(setq create-lockfiles nil)  ; do not create an #tmp files, this has the side effect of letting other processes edit a file already opened by emacs

;; Hide UI elements
(toggle-scroll-bar -1)       ; remove the scroll bars
(tool-bar-mode -1)           ; remote the toolbar

;; Theme
;; (add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;; (add-to-list 'load-path "~/.emacs.d/elisp")
