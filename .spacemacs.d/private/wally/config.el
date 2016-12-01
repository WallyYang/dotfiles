(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)
(evil-leader/set-key "j i" 'imenu)

(spacemacs|defvar-company-backends python-mode)

;; c++ mode improvement
(add-hook 'c++-mode-hook
          (lambda ()
            (set (make-local-variable 'compile-command)
                 (concat "g++ " buffer-file-name)
                 )
            (setq-default flycheck-disabled-checkers
                          (append flycheck-disabled-checkers
                                  '(c/c++-clang)))
            (setq company-clang-arguments '("-std=c++11"))
            ;; (setq flycheck-clang-language-standard "c++11")
            (setq flycheck-gcc-language-standard "c++11")
            (setq flycheck-cppcheck-standards "c++11")
            ))
