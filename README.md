# Emacs Github

Miscellaneous hacks for using github in emacs.

### browse-url-of-file-in-github

Ask a WWW browser to display current buffer's file in github.

```
M-x browse-url-of-file-in-github
```

For convenience add following to `~/.emacs`:
```
(global-set-key (kbd "C-c g") 'browse-url-of-file-in-github)
```
