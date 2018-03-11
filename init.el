(require 'package)
(package-initialize)

;; turn off startup screen
(setq inhibit-startup-screen 1)
(setq inhibit-startup-message t)

;; Set path to dependencies
(setq site-lisp-dir
      (expand-file-name "site-lisp" user-emacs-directory))

(setq settings-dir
      (expand-file-name "settings" user-emacs-directory))

;; Set up load path
(add-to-list 'load-path settings-dir)
(add-to-list 'load-path site-lisp-dir)

;; (setq site-lisp-dir
;;       (expand-file-name "site-lisp" user-emacs-directory))
(defun add-pkg-path (dir-name)
  (add-to-list 'load-path (expand-file-name dir-name site-lisp-dir)))

;; dash
(add-pkg-path "dash")
(require 'dash)

;; better-defaults
(add-pkg-path "better-defaults")
(require 'better-defaults)

;; Setup packages
(require 'setup-package)

;; Install extensions if they're missing
(defun init--install-packages ()
  (packages-install
   '(magit
     smex
     material-theme
     elpy
     helm-ag
     )))

(condition-case nil
    (init--install-packages)
  (error
   (package-refresh-contents)
   (init--install-packages)))

;; initial packages
(smex-initialize)
(elpy-enable)
(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i --simple-prompt")

(load-theme 'material t)

;; indent 4 spaces, and set indent style
(setq c-default-style "stroustrup" c-basic-offset 4)

(global-linum-mode t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (elpy material-theme smex magit))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
