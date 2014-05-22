(defun browse-url-of-file-in-github ()
  "Ask a WWW browser to display current buffer's file in github."
  ;;; XXX always goes to 'master', it should look at the current branch/tag/revision
  (interactive)
  (let* ((filename (file-relative-name (buffer-file-name)
                                       (vc-git-root (buffer-file-name))))
         (repo (with-temp-buffer
                 (and
                  (vc-git--out-ok "remote" "-v")
                  (goto-char (point-min))
                  (re-search-forward "^origin.*github.com:\\(.*\\)\\.git")
                  (match-string 1)))))
    (browse-url (format "https://github.com/%s/blob/master/%s" repo filename))))

;;(global-set-key (kbd "C-c g") 'browse-url-of-file-in-github)

(provide 'emacs-github)
