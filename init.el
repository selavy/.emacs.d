;; turn off startup screen
(setq inhibit-startup-screen 1)
(setq inhibit-startup-message t)

;; better-defaults
(add-to-list 'load-path "./site-lisp/better-defaults")
(require 'better-defaults)

;; indent 4 spaces, and set indent style
(setq c-default-style "stroustrup" c-basic-offset 4)

