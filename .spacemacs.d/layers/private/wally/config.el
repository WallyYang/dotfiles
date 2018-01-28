(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)
(evil-leader/set-key "j i" 'imenu)

;; c++ mode improvement
(add-hook 'c++-mode-hook
          (lambda ()
            (set (make-local-variable 'compile-command)
                 (concat "clang++ -std=c++14 " buffer-file-name)
                 )
            (setq-default flycheck-disabled-checkers
                          (append flycheck-disabled-checkers
                                  '(c/c++-clang)))
            (setq company-clang-arguments '("-std=c++11"))
            ;; (setq flycheck-clang-language-standard "c++11")
            (setq flycheck-gcc-language-standard "c++11")
            (setq flycheck-cppcheck-standards "c++11")
            ))

(defun my-c-mode-hook ()
  (c-set-style "linux"))

(add-hook 'c-mode-hook 'my-c-mode-hook)
