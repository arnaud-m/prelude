(require 'org)

;; Here, we mimic the init.el file
;; to load personal configuration files written with org-mode

(defvar prelude-perso-org-dir (expand-file-name "org" prelude-dir))
(defvar prelude-perso-org-files '("perso-emacs-init.org" "perso-dired+.org" "perso-latex.org"))

(defun prelude-perso-org-babel-load-files (filenames)
  "Load literate configuration files written with org-mode"
  (dolist (f filenames)
    (org-babel-load-file
     (expand-file-name f prelude-perso-org-dir)
     )))

(prelude-perso-org-babel-load-files prelude-perso-org-files)
