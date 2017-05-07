

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
;;(add-to-list 'package-archives
;;             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files nil)
 '(org-capture-templates
   (quote
	(("t" "time" entry
	  (file "~/Documents/org/time.org" "time")
	  "* TODO %^T %? %i")
	 ("p" "projects" entry
	  (file "~/Documents/org/projects.org" "projects")
	  "* %^T %a")
	 ("j" "job" entry
	  (file "~/Documents/org/job.org" "job")
	  "* TODO %^T %? %i")
	 ("i" "idea" entry
	  (file "~/Documents/org/idea.org" "idea")
	  "* TODO %^T %? %i")
	 ("l" "log" entry
	  (file+datetree "~/Documents/org/log.org" "log")
	  "* %?")
	 ("c" "collection" entry
	  (file "~/Documents/org/collection.org" "collection")
	  "* %T
%? %i")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
