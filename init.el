;; turn off startup screen
(setq inhibit-startup-screen 1)
(setq inhibit-startup-message t)

(setq site-lisp-dir
      (expand-file-name "site-lisp" user-emacs-directory))
(defun add-pkg-path (dir-name)
  (add-to-list 'load-path (expand-file-name dir-name site-lisp-dir)))

;; better-defaults
(add-pkg-path "better-defaults")
(require 'better-defaults)

;; dash
(add-pkg-path "dash")
(require 'dash)

;; magit-popup
(add-pkg-path "magit-popup")
(require 'magit-popup)

;; indent 4 spaces, and set indent style
(setq c-default-style "stroustrup" c-basic-offset 4)

