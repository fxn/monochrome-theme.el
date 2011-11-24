;;; monochrome-theme.el --- monochrome color theme

;; Copyright (C) 2011 Xavier Noria

;; Author: Xavier Noria <fxn@hashref.com>
;;
;; This theme is based on the builtin dichromacy theme, it is basically
;; white on black, except for errors and a few things.
;;
;; Just throw it into ~/.emacs.d and
;;
;;     M-x load-theme RET monochrome
;;
;; or put in your init file
;;
;;     (load-theme 'monochrome)
;;
;; Works with Emacs 24.

(deftheme monochrome
  "Monochrome color theme based on dichromacy.")

(let ((class '((class color) (min-colors 10))))
  (custom-theme-set-faces
   'monochrome

   `(default ((,class (:foreground "white" :background "black"))))
   `(cursor ((,class (:background "white"))))

   ;; Highlighting faces
   `(fringe ((,class (:background "white"))))
   `(highlight ((,class (:foreground "black" :background "white"))))
   `(region ((,class (:foreground "black" :background "white"))))
   `(secondary-selection ((,class (:foreground: "black" :background "#f7f7f7"))))
   `(isearch ((,class (:foreground "black" :background "white"))))
   `(lazy-highlight ((,class (:foreground "black" :background "white"))))
   `(trailing-whitespace ((,class (:background "white"))))

   ;; Mode line faces
   `(mode-line ((,class (:box (:line-width -1 :style released-button)
			      :background "#e5e5e5" :foreground "black"))))
   `(mode-line-inactive ((,class (:box (:line-width -1 :style released-button)
				       :background "#b0b0b0"
				       :foreground "black"))))

   ;; Escape and prompt faces
   `(minibuffer-prompt ((,class (:weight bold :foreground "white"))))
   `(escape-glyph ((,class (:foreground "white"))))
   `(error ((,class (:weight bold :slant italic
			     :foreground "red"))))
   `(warning ((,class (:foreground "yellow"))))
   `(success ((,class (:foreground "gree"))))

   ;; Font lock faces
   `(font-lock-builtin-face ((,class (:foreground "white"))))
   `(font-lock-comment-face ((,class (:slant italic :foreground "white"))))
   `(font-lock-constant-face ((,class (:weight bold :foreground "white"))))
   `(font-lock-function-name-face ((,class (:foreground "white"))))
   `(font-lock-keyword-face ((,class (:weight bold :foreground "white"))))
   `(font-lock-string-face ((,class (:foreground "white"))))
   `(font-lock-type-face ((,class (:weight bold :foreground "white"))))
   `(font-lock-variable-name-face ((,class (:weight bold :foreground "white"))))

   ;; Button and link faces
   `(link ((,class (:underline t :foreground "white"))))
   `(link-visited ((,class (:underline t :foreground "white"))))

   ;; Gnus faces
   `(gnus-group-news-1 ((,class (:weight bold :foreground "white"))))
   `(gnus-group-news-1-low ((,class (:foreground "white"))))
   `(gnus-group-news-2 ((,class (:weight bold :foreground "white"))))
   `(gnus-group-news-2-low ((,class (:foreground "white"))))
   `(gnus-group-news-3 ((,class (:weight bold :foreground "white"))))
   `(gnus-group-news-3-low ((,class (:foreground "white"))))
   `(gnus-group-news-4 ((,class (:weight bold :foreground "white"))))
   `(gnus-group-news-4-low ((,class (:foreground "white"))))
   `(gnus-group-news-5 ((,class (:weight bold :foreground "white"))))
   `(gnus-group-news-5-low ((,class (:foreground "white"))))
   `(gnus-group-news-low ((,class (:foreground "white"))))
   `(gnus-group-mail-1 ((,class (:weight bold :foreground "white"))))
   `(gnus-group-mail-1-low ((,class (:foreground "white"))))
   `(gnus-group-mail-2 ((,class (:weight bold :foreground "white"))))
   `(gnus-group-mail-2-low ((,class (:foreground "white"))))
   `(gnus-group-mail-3 ((,class (:weight bold :foreground "white"))))
   `(gnus-group-mail-3-low ((,class (:foreground "white"))))
   `(gnus-group-mail-low ((,class (:foreground "white"))))
   `(gnus-header-content ((,class (:foreground "white"))))
   `(gnus-header-from ((,class (:weight bold :foreground "white"))))
   `(gnus-header-subject ((,class (:foreground "white"))))
   `(gnus-header-name ((,class (:foreground "white"))))
   `(gnus-header-newsgroups ((,class (:foreground "white"))))
   ;; Message faces
   `(message-header-name ((,class (:foreground "white"))))
   `(message-header-cc ((,class (:foreground "white"))))
   `(message-header-other ((,class (:foreground "white"))))
   `(message-header-subject ((,class (:foreground "white"))))
   `(message-header-to ((,class (:weight bold :foreground "white"))))
   `(message-cited-text ((,class (:slant italic :foreground "white"))))
   `(message-separator ((,class (:weight bold :foreground "white"))))
   ;; Flyspell
   `(flyspell-duplicate ((,class (:weight unspecified :foreground unspecified
				  :slant unspecified :underline "white"))))
   `(flyspell-incorrect ((,class (:weight unspecified :foreground unspecified
				  :slant unspecified :underline "white")))))

  (custom-theme-set-variables
   'monochrome
   `(ansi-color-names-vector ["black" "white"])))

(provide-theme 'monochrome)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; monochrome-theme.el ends here
