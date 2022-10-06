;;; packages.el --- wally layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: wally <wally@wally-Inspiron-7447>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `wally-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `wally/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `wally/pre-init-PACKAGE' and/or
;;   `wally/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:
(setq wally-packages
      '(
        company
        fill-column-indicator
        swiper
        visual-fill-column
        yasnippet
        undo-tree))

;; (defconst wally-packages
;;   '(
;;     company
;;     swiper)
;;   "The list of Lisp packages required by the wally layer.

;; Each entry is either:

;; 1. A symbol, which is interpreted as a package to be installed, or

;; 2. A list of counsel;; If you want the keybinding to override all minor modes that may also bind
;; the same key, use the `bind-key*' form:
;;
;;   (bind-key* "<C-return>" 'other-window)

;; To bind multiple keys in a `bind-key*' way (to be sure that your bindings
;; will not be overridden by other modes), you may use `bind-keys*' macro:
;;
;;    (bind-keys*
;;     ("C-o" . other-window)
;;     ("C-M-n" . forward-page)
;;     ("C-M-p" . backward-page))the form (PACKAGE KEYS...), where PACKAGE is the
;;     name of the package to be installed or loaded, and KEYS are
;;     any number of keyword-value-pairs.

;;     The following keys are accepted:

;;     - :excluded (t or nil): Pr;; If you want the keybinding to override all minor modes that may also bind
;; the same key, use the `bind-key*' form:
;;
;;   (bind-key* "<C-return>" 'other-window)

;; To bind multiple keys in a `bind-key*' way (to be sure that your bindings
;; will not be overridden by other modes), you may use `bind-keys*' macro:
;;
;;    (bind-keys*
;;     ("C-o" . other-window)
;;     ("C-M-n" . forward-page)
;;     ("C-M-p" . backward-page))event the package from being loaded
;;       if value is non-nil

;;     - :location: Specify a custom installation location.
;;       The following values are legal:

;;       - The symbol `elpa' (default) means PACKAGE will be
;;         installed using the Emacs package manager.

;;       - The symbol `local' directs Spacemacs to load the file at
;;         `./local/PACKAGE/PACKAGE.el'

;;       - A list beginning with the symbol `recipe' is a melpa
;;         recipe.  See: https://github.com/milkypostman/melpa#recipe-format")


(defun wally/post-init-company ()
  (setq-default company-minimum-prefix-length 1))

(defun wally/post-init-fill-column-indicator ()
  (require 'fill-column-indicator)
  (setq fci-rule-column 80)
  (add-hook 'prog-mode-hook 'fci-mode)
  )

(defun wally/init-swiper ()
  (global-set-key "\C-s" 'swiper)
  )

(defun wally/init-visual-fill-column ()
  (add-hook 'org-mode-hook 'visual-line-mode)
  (add-hook 'visual-line-mode-hook #'visual-fill-column-mode))

(defun wally/post-init-yasnippet ()
  (setq yas/triggers-in-field nil)
  (setq yas-triggers-in-field nil))

(defun wally/post-init-undo-tree ()
  (setq undo-tree-history-directory-alist '(("." . "~/.emacs.undo.d"))))

;;; packages.el ends here
