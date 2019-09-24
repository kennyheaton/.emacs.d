;;;;;;;;;;;;;;;;;; Kenny's GNU Emacs Config ;;;;;;;;;;;;;;;;
;; This config is dependant on packages being downloaded into
;; the correct locations. I do that with `make`. In the git
;; repo there is a Makefile, so by running make all the needed
;; resources will be downloaded to the correct locations.

;; Disable backups and auto save
(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files
(setq create-lockfiles nil)  ; do not create an #tmp files, this has the side effect of letting other processes edit a file already opened by emacs

;; Hide UI elements
(toggle-scroll-bar -1)       ; remove the scroll bars
(menu-bar-mode -1)           ; remove the menus
(tool-bar-mode -1)           ; remote the toolbar

;;;;;;;;;;;; Swiper, Ivy and Councel ;;;;;;;;;;;;;;;;;;;;;
;; Ivy, a generic completion mechanism for Emacs.
;; Counsel, a collection of Ivy-enhanced versions of common Emacs commands.
;; Swiper, an Ivy-enhanced alternative to isearch.
(add-to-list 'load-path "~/.emacs.d/packages/swiper") ;; This is installed at this path by make
(require 'ivy)
(require 'swiper)
(require 'counsel)
(ivy-mode 1)
;; Overwrite keybindings to use swiper, councel and ivy
(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "C-c C-r") 'ivy-resume)

