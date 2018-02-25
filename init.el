;; turn off startup screen
(inhibit-startup-screen 1)

;; no tabs
(setq-default indent-tabs-mode nil)
;; indent 4 spaces, and set indent style
(setq c-default-style "stroustrup" c-basic-offset 4)

;; store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))
