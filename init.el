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
     )))

(condition-case nil
    (init--install-packages)
  (error
   (package-refresh-contents)
   (init--install-packages)))

(smex-initialize)

(load-theme 'material t)

;; indent 4 spaces, and set indent style
(setq c-default-style "stroustrup" c-basic-offset 4)

(global-linum-mode t)

