;; -*- mode: emacs-lisp -*-
; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;; markdown
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ivy
     auto-completion
     better-defaults
     deft
     emacs-lisp
     git
     ;; journal
     ;; markdown
     org
     ;; (org :variables org-enable-org-journal-support t) 
     pandoc
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; (spell-checking :variables
     ;;                spell-checking-enable-auto-dictionary t)
     ;; syntax-checking
     ;; version-control
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(ox-clip olivetti worf magithub)
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'emacs
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(deeper-blue
                         adwaita
                         spacemacs-dark
                         spacemacs-light)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 16
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
;; pin package in melpa

  (push '("melpa-stable" . "stable.melpa.org/packages/") configuration-layer--elpa-archives)
  (push '(use-package . "melpa-stable") package-pinned-packages)

  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."

  ;; pin package in melpa
  ;; (add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

  ;; pandoc for emacs on windows

  (when (string-equal system-type "windows-nt")
    (defcustom pandoc-binary "c:/Program Files (x86)/Pandoc/pandoc.exe" "pandoc")
    )


    ;; open all txt files in orgmode

  (add-to-list 'auto-mode-alist '("\\.txt$" . org-mode))

  ;; this may be bad prctice but it appears to be necessary to define org-speed-commands
  (require 'org-agenda)

  ;; Agenda Setup
  ;; Here is my current =org-agenda files= setup.

  (setq org-agenda-files
        '("~/Dropbox/org/work.org"
          "~/Dropbox/org/work.org_archive"
          "~/Dropbox/org/work-someday.org"
          "~/Dropbox/org/personal.org"
          "~/Dropbox/org/personal-someday.org"
          "~/Dropbox/org/learning.org"
          "~/Dropbox/org/teaching-and-learning.org"
          "~/Dropbox/org/refile.txt"
          "~/Dropbox/org/dotemacs/init.org"
          "~/Dropbox/org/blog.org"
          "~/Dropbox/org/writing.org"
          "~/Dropbox/org/org.org"
          "~/Dropbox/org/journal.org"
          "~/Dropbox/org/wiki.org"
          "~/Dropbox/org/journal/"
          "~/Dropbox/org/root.org"
          "~/Dropbox/org/infolit.org"
          ))



;; Key Bindings

;; These keybindings are almost [[http://doc.norang.ca/org-mode.html#KeyBindings][entirely copied]] from Bernt Hansen.  I'm
;; trying out his =org-mode= configuration.


(global-set-key (kbd "<f8>") 'org-agenda)
(global-set-key (kbd "<f5>") 'will/org-todo)
(global-set-key (kbd "<S-f5>") 'will/widen)
;;(global-set-key (kbd "<f7>") 'will/set-truncate-lines)
(global-set-key (kbd "<f7>") 'org-cycle-agenda-files)
(global-set-key (kbd "<f9> <f9>") 'will/show-org-agenda)
(global-set-key (kbd "<f9> c") 'calendar)
(global-set-key (kbd "<f9> f") 'boxquote-insert-file)
(global-set-key (kbd "<f9> h") 'will/hide-other)
(global-set-key (kbd "<f9> i") 'org-info)
(global-set-key (kbd "<f9> n") 'will/toggle-next-task-display)
(global-set-key (kbd "<f9> I") 'will/punch-in)
(global-set-key (kbd "<f9> O") 'will/punch-out)
(global-set-key (kbd "<f9> o") 'will/make-org-scratch)
(global-set-key (kbd "<f9> e") 'will/make-elisp-scratch)
(global-set-key (kbd "<f9> r") 'boxquote-region)
(global-set-key (kbd "<f9> s") 'will/switch-to-scratch)
(global-set-key (kbd "<f9> t") 'will/insert-inactive-timestamp)
(global-set-key (kbd "<f9> T") 'will/toggle-insert-inactive-timestamp)
(global-set-key (kbd "<f9> v") 'visible-mode)
(global-set-key (kbd "<f9> l") 'org-toggle-link-display)
(global-set-key (kbd "<f9> SPC") 'will/clock-in-last-task)
(global-set-key (kbd "C-<f9>") 'previous-buffer)
(global-set-key (kbd "M-<f9>") 'org-toggle-inline-images)
(global-set-key (kbd "C-x n r") 'narrow-to-region)
;;(global-set-key (kbd "C-<f10>") 'next-buffer)
(global-set-key (kbd "<f10>") 'org-clock-goto)
(global-set-key (kbd "C-<f10>") 'org-clock-in)
;;(global-set-key (kbd "C-s-<f12>") 'will/save-then-publish)
(global-set-key (kbd "C-c c") 'org-capture)

(global-set-key (kbd "<escape><up>") 'org-metaup)
(global-set-key (kbd "<escape><down>") 'org-metadown)


(defun will/hide-other ()
  (interactive)
  (save-excursion
    (org-back-to-heading 'invisible-ok)
    (hide-other)
    (org-cycle)
    (org-cycle)
    (org-cycle)))

(defun will/set-truncate-lines ()
  "Toggle value of truncate-lines and refresh window display."
  (interactive)
  (setq truncate-lines (not truncate-lines))
  ;; now refresh window display (an idiom from simple.el):
  (save-excursion
    (set-window-start (selected-window)
                      (window-start (selected-window)))))

(defun will/make-org-scratch ()
  (interactive)
  (find-file "~/Dropbox/org/scratch/scratch.org"))

(defun will/make-elisp-scratch ()
  (interactive)
  (find-file "~/Dropbox/elisp/scratch.el"))

(defun will/switch-to-scratch ()
  (interactive)
  (switch-to-buffer "*scratch*"))

(defun will/show-org-agenda ()
  (interactive)
  (if org-agenda-sticky
      (switch-to-buffer "*Org Agenda( )*")
    (switch-to-buffer "*Org Agenda*"))
  (delete-other-windows))

;; Keywords

;; GTD =todo= keywords and task states.  See [[http://doc.norang.ca/org-mode.html#TasksAndStates][Task States]] for more.


(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
              (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)" "PHONE" "MEETING"))))

;; (setq org-todo-keyword-faces
;;       (quote (
;;               ("TODO" :foreground "red" :weight bold)
;;               ("NEXT" :foreground "blue" :weight bold)
;;               ("DONE" :foreground "forest green" :weight bold)
;;               ("WAITING" :foreground "orange" :weight bold)
;;               ("HOLD" :foreground "magenta" :weight bold)
;;               ("CANCELLED" :foreground "forest green" :weight bold)
;;               ("MEETING" :foreground "forest green" :weight bold)
;;               ("PHONE" :foreground "forest green" :weight bold))))

;; Fast Todo Selection

;; Changing a task state is done with =C-c C-t key= where =key= is the appropriate
;; fast todo state selection key as defined in =org-todo-keywords=.


(setq org-use-fast-todo-selection t)



;; This allows changing todo states with =S-left= and =S-right=, skipping all of
;; the normal processing when entering or leaving a todo state.  This cycles
;; through the todo states but skips setting timestamps and entering notes when all
;; you want to do is fix the status of an entry.


(setq org-treat-S-cursor-todo-selection-as-state-change nil)

;; =TODO= state triggers

;; I have a few triggers that automatically assign tags to tasks based on state
;; changes. If a task moves to =CANCELLED= state then it gets a =CANCELLED=
;; tag. Moving a =CANCELLED= task back to =TODO= removes the =CANCELLED= tag. These
;; are used for filtering tasks in agenda views which I'll talk about later.

;; The triggers break down to the following rules:

;;  - Moving a task to =CANCELLED= adds a =CANCELLED= tag
;;  - Moving a task to =WAITING= adds a =WAITING= tag
;;  - Moving a task to =HOLD= adds =WAITING= and =HOLD= tags
;;  - Moving a task to a done state removes =WAITING= and =HOLD= tags
;;  - Moving a task to =TODO= removes =WAITING=, =CANCELLED=, and =HOLD= tags
;;  - Moving a task to =NEXT= removes =WAITING=, =CANCELLED=, and =HOLD= tags
;;  - Moving a task to =DONE= removes =WAITING=, =CANCELLED=, and =HOLD= tags


(setq org-todo-state-tags-triggers
      (quote (("CANCELLED" ("CANCELLED" . t))
              ("WAITING" ("NEXT") ("CANCELLED") ("WAITING" . t))
              ("HOLD" ("WAITING") ("HOLD" . t))
              (done ("WAITING") ("HOLD"))
              ("TODO" ("WAITING") ("CANCELLED") ("HOLD") ("NEXT"))
              ("NEXT" ("WAITING") ("CANCELLED") ("HOLD") ("NEXT" . t))
              ("DONE" ("WAITING") ("CANCELLED") ("HOLD") ("NEXT")))))

;; Capture Templates

;; When a new task needs to be added I categorize it into one of a few things:

;; - A phone call (p)
;; - A meeting (m)
;; - An email I need to respond to (r)
;; - A new task (t)
;; - A new note (n)
;; - An interruption (j)
;; - A new habit (h)

;; and pick the appropriate capture task.

;; Here is my setup for org-capture


(setq org-directory "~/Dropbox/org")
(setq org-default-notes-file "~/Dropbox/org/refile.txt")

;; I use C-c c to start capture mode
(global-set-key (kbd "C-c c") 'org-capture)

;; Capture templates for: TODO tasks, Notes, appointments, phone calls, and meetings.
(setq org-capture-templates
      (quote (("t" "todo" entry (file "~/Dropbox/org/refile.txt")
               "* TODO %?\n%U\n%a\n" :clock-in t :clock-resume t)
              ("j" "Journal" entry (file+datetree "~/Dropbox/org/journal.org")
               "* %<%H:%M> \n")
              ("J" "Personal journal" entry (file+datetree+prompt "~/Dropbox/journal/2017-journal.org.gpg")
	       "* %(format-time-string \"%H:%M\") %^{Entry} %^G\n%i%?"  :clock-in t :clock-resume t)
              ("m" "Meeting" entry (file "~/Dropbox/org/refile.txt")
               "* MEETING with %? :MEETING:\n%U" :clock-in t :clock-resume t)
              ("c" "Phone call" entry (file "~/Dropbox/org/refile.txt")
               "* PHONE %? :PHONE:\n%U" :clock-in t :clock-resume t)
	      )))



;; I have the following setup to remove these empty LOGBOOK drawers if they occur.


;;;; Remove empty LOGBOOK drawers on clock out
;;(defun will/remove-empty-drawer-on-clock-out ()
;;  (interactive)
;;  (save-excursion
;;    (beginning-of-line 0)
;;    (org-remove-empty-drawer-at "LOGBOOK" (point))))
;;
;;(add-hook 'org-clock-out-hook 'will/remove-empty-drawer-on-clock-out 'append)

;; Refile Setup

;; To refile tasks in org you need to tell it where you want to refile things.

;; In my setup I let any file in org-agenda-files and the current file contribute
;; to the list of valid refile targets.

;; I've recently moved to using IDO to complete targets directly. I find this to be
;; faster than my previous complete in steps setup. At first I didn't like IDO but
;; after reviewing the documentation again and learning about C-SPC to limit target
;; searches I find it is much better than my previous complete-in-steps setup. Now
;; when I want to refile something I do C-c C-w to start the refile process, then
;; type something to get some matching targets, then C-SPC to restrict the matches
;; to the current list, then continue searching with some other text to find the
;; target I need. C-j also selects the current completion as the final target. I
;; like this a lot. I show full outline paths in the targets so I can have the same
;; heading in multiple subtrees or projects and still tell them apart while
;; refiling.

;; I now exclude DONE state tasks as valid refile targets. This helps to keep the
;; refile target list to a reasonable size.

;; Here is my refile configuration:

(setq ido-everywhere t)
(setq ido-enable-flex-matching t)

(ido-vertical-mode 1)
(setq ido-vertical-show-count t)
(setq ido-vertical-define-keys 'C-n-C-p-up-down-left-right)

					; Targets include this file and any file contributing to the agenda - up to 9 levels deep
(setq org-refile-targets (quote ((nil :maxlevel . 9)
                                 (org-agenda-files :maxlevel . 9))))

					; Use full outline paths for refile targets - we file directly with IDO
(setq org-refile-use-outline-path t)

					; Targets complete directly with IDO
(setq org-outline-path-complete-in-steps nil)

					; Allow refile to create parent tasks with confirmation
(setq org-refile-allow-creating-parent-nodes (quote confirm))

					; Use IDO for both buffer and file completion
(setq org-completion-use-ido t)
(setq ido-max-directory-size 100000)
(ido-mode (quote both))
					; Use the current window when visiting files and buffers with ido
(setq ido-default-file-method 'selected-window)
(setq ido-default-buffer-method 'selected-window)
					; Use the current window for indirect buffer display
(setq org-indirect-buffer-display 'current-window)

;;;; Refile settings
					; Exclude DONE state tasks from refile targets
(defun will/verify-refile-target ()
  "Exclude todo keywords with a done state from refile targets"
  (not (member (nth 2 (org-heading-components)) org-done-keywords)))

(setq org-refile-target-verify-function 'will/verify-refile-target)


;; Agenda Setup


;; Do not dim blocked tasks
(setq org-agenda-dim-blocked-tasks nil)

;; Compact the block agenda view
(setq org-agenda-compact-blocks t)

;; avoid duplicate lines in agenda http://bit.ly/2pRy04j
(setq org-agenda-skip-deadline-prewarning-if-scheduled t)

;; Custom agenda command definitions
(setq org-agenda-custom-commands
      (quote (("N" "Notes" tags "NOTE"
               ((org-agenda-overriding-header "Notes")
                (org-tags-match-list-sublevels t)))
              ("h" "Habits" tags-todo "STYLE=\"habit\""
               ((org-agenda-overriding-header "Habits")
                (org-agenda-sorting-strategy
                 '(todo-state-down effort-up category-keep))))
              (" " "Agenda"
               ((agenda "") ;; delete nil
                (tags "REFILE"
                      ((org-agenda-overriding-header "Tasks to Refile")
                       (org-tags-match-list-sublevels nil)))
                (tags-todo "-CANCELLED/!"
                           ((org-agenda-overriding-header "Stuck Projects")
                            (org-agenda-skip-function 'will/skip-non-stuck-projects)
                            (org-agenda-sorting-strategy
                             '(category-keep))))
                (tags-todo "-HOLD-CANCELLED/!"
                           ((org-agenda-overriding-header "Projects")
                            (org-agenda-skip-function 'will/skip-non-projects)
                            (org-tags-match-list-sublevels 'indented)
                            (org-agenda-sorting-strategy
                             '(category-keep))))
                (tags-todo "-CANCELLED/!NEXT"
                           ((org-agenda-overriding-header (concat "Project Next Tasks"
                                                                  (if will/hide-scheduled-and-waiting-next-tasks
                                                                      ""
                                                                    " (including WAITING and SCHEDULED tasks)")))
                            (org-agenda-skip-function 'will/skip-projects-and-habits-and-single-tasks)
                            (org-tags-match-list-sublevels t)
                            (org-agenda-todo-ignore-scheduled will/hide-scheduled-and-waiting-next-tasks)
                            (org-agenda-todo-ignore-deadlines will/hide-scheduled-and-waiting-next-tasks)
                            (org-agenda-todo-ignore-with-date will/hide-scheduled-and-waiting-next-tasks)
                            (org-agenda-sorting-strategy
                             '(todo-state-down effort-up category-keep))))
                (tags-todo "-REFILE-CANCELLED-WAITING-HOLD/!"
                           ((org-agenda-overriding-header (concat "Project Subtasks"
                                                                  (if will/hide-scheduled-and-waiting-next-tasks
                                                                      ""
                                                                    " (including WAITING and SCHEDULED tasks)")))
                            (org-agenda-skip-function 'will/skip-non-project-tasks)
                            (org-agenda-todo-ignore-scheduled will/hide-scheduled-and-waiting-next-tasks)
                            (org-agenda-todo-ignore-deadlines will/hide-scheduled-and-waiting-next-tasks)
                            (org-agenda-todo-ignore-with-date will/hide-scheduled-and-waiting-next-tasks)
                            (org-agenda-sorting-strategy
                             '(category-keep))))
                (tags-todo "-REFILE-CANCELLED-WAITING-HOLD-ONGOING/!"
                           ((org-agenda-overriding-header (concat "Standalone Tasks"
                                                                  (if will/hide-scheduled-and-waiting-next-tasks
                                                                      ""
                                                                    " (including WAITING and SCHEDULED tasks)")))
                            (org-agenda-skip-function 'will/skip-project-tasks)
                            (org-agenda-todo-ignore-scheduled will/hide-scheduled-and-waiting-next-tasks)
                            (org-agenda-todo-ignore-deadlines will/hide-scheduled-and-waiting-next-tasks)
                            (org-agenda-todo-ignore-with-date will/hide-scheduled-and-waiting-next-tasks)
                            (org-agenda-sorting-strategy
                             '(category-keep))))
                (tags-todo "-REFILE-CANCELLED-WAITING-HOLD+ONGOING/!"
			   ((org-agenda-overriding-header (concat "Ongoing Tasks"
								  (if will/hide-scheduled-and-waiting-next-tasks
								      ""
								    " (including WAITING and SCHEDULED tasks)")))
			    (org-agenda-skip-function 'will/skip-project-tasks)
			    (org-agenda-todo-ignore-scheduled will/hide-scheduled-and-waiting-next-tasks)
			    (org-agenda-todo-ignore-deadlines will/hide-scheduled-and-waiting-next-tasks)
			    (org-agenda-todo-ignore-with-date will/hide-scheduled-and-waiting-next-tasks)
			    (org-agenda-sorting-strategy
			     '(category-keep))))
                (tags-todo "-CANCELLED+WAITING|HOLD/!"
                           ((org-agenda-overriding-header (concat "Waiting and Postponed Tasks"
                                                                  (if will/hide-scheduled-and-waiting-next-tasks
                                                                      ""
                                                                    " (including WAITING and SCHEDULED tasks)")))
                            (org-agenda-skip-function 'will/skip-non-tasks)
                            (org-tags-match-list-sublevels nil)
                            (org-agenda-sorting-strategy '(timestamp-up)) ;; items with recent notes/activity appear at bottom
                            (org-agenda-todo-ignore-scheduled will/hide-scheduled-and-waiting-next-tasks)
                            (org-agenda-todo-ignore-deadlines will/hide-scheduled-and-waiting-next-tasks)))
                (tags "-REFILE/"
                      ((org-agenda-overriding-header "Tasks to Archive")
                       (org-agenda-skip-function 'will/skip-non-archivable-tasks)
                       (org-tags-match-list-sublevels nil))))
               nil))))

;; Clock Setup

;; Permanently enable mode line display of org clock
(setq spaceline-org-clock-p t)
;;
;; Resume clocking task when emacs is restarted
(org-clock-persistence-insinuate)
;;
;; Show lot of clocking history so it's easy to pick items off the C-F11 list
(setq org-clock-history-length 23)
;; Resume clocking task on clock-in if the clock is open
(setq org-clock-in-resume t)
;; Change tasks to NEXT when clocking in
(setq org-clock-in-switch-to-state 'will/clock-in-to-next)
;; Separate drawers for clocking and logs
(setq org-drawers (quote ("PROPERTIES" "LOGBOOK")))
;; Save clock data and state changes and notes in the LOGBOOK drawer
(setq org-clock-into-drawer t)
;; Sometimes I change tasks I'm clocking quickly - this removes clocked tasks with 0:00 duration
(setq org-clock-out-remove-zero-time-clocks t)
;; Clock out when moving task to a done state
(setq org-clock-out-when-done t)
;; Save the running clock and all clock history when exiting Emacs, load it on startup
(setq org-clock-persist t)
;; Do not prompt to resume an active clock
(setq org-clock-persist-query-resume nil)
;; Enable auto clock resolution for finding open clocks
(setq org-clock-auto-clock-resolution (quote when-no-clock-is-running))
;; Include current clocking task in clock reports
(setq org-clock-report-include-clocking-task t)

(setq will/keep-clock-running nil)

(defun will/clock-in-to-next (kw)
  "Switch a task from TODO to NEXT when clocking in.
Skips capture tasks, projects, and subprojects.
Switch projects and subprojects from NEXT back to TODO"
  (when (not (and (boundp 'org-capture-mode) org-capture-mode))
    (cond
     ((and (member (org-get-todo-state) (list "TODO"))
           (will/is-task-p))
      "NEXT")
     ((and (member (org-get-todo-state) (list "NEXT"))
           (will/is-project-p))
      "TODO"))))

(defun will/find-project-task ()
  "Move point to the parent (project) task if any"
  (save-restriction
    (widen)
    (let ((parent-task (save-excursion (org-back-to-heading 'invisible-ok) (point))))
      (while (org-up-heading-safe)
        (when (member (nth 2 (org-heading-components)) org-todo-keywords-1)
          (setq parent-task (point))))
      (goto-char parent-task)
      parent-task)))

(defun will/punch-in (arg)
  "Start continuous clocking and set the default task to the
selected task.  If no task is selected set the Organization task
as the default task."
  (interactive "p")
  (setq will/keep-clock-running t)
  (if (equal major-mode 'org-agenda-mode)
      ;;
      ;; We're in the agenda
      ;;
      (let* ((marker (org-get-at-bol 'org-hd-marker))
             (tags (org-with-point-at marker (org-get-tags-at))))
        (if (and (eq arg 4) tags)
            (org-agenda-clock-in '(16))
          (will/clock-in-organization-task-as-default)))
    ;;
    ;; We are not in the agenda
    ;;
    (save-restriction
      (widen)
					; Find the tags on the current task
      (if (and (equal major-mode 'org-mode) (not (org-before-first-heading-p)) (eq arg 4))
          (org-clock-in '(16))
        (will/clock-in-organization-task-as-default)))))

(defun will/punch-out ()
  (interactive)
  (setq will/keep-clock-running nil)
  (when (org-clock-is-active)
    (org-clock-out))
  (org-agenda-remove-restriction-lock))

(defun will/clock-in-default-task ()
  (save-excursion
    (org-with-point-at org-clock-default-task
      (org-clock-in))))

(defun will/clock-in-parent-task ()
  "Move point to the parent (project) task if any and clock in"
  (let ((parent-task))
    (save-excursion
      (save-restriction
        (widen)
        (while (and (not parent-task) (org-up-heading-safe))
          (when (member (nth 2 (org-heading-components)) org-todo-keywords-1)
            (setq parent-task (point))))
        (if parent-task
            (org-with-point-at parent-task
              (org-clock-in))
          (when will/keep-clock-running
            (will/clock-in-default-task)))))))

(defvar will/organization-task-id "eb155a82-92b2-4f25-a3c6-0304591af2f9")

(defun will/clock-in-organization-task-as-default ()
  (interactive)
  (org-with-point-at (org-id-find will/organization-task-id 'marker)
    (org-clock-in '(16))))

(defun will/clock-out-maybe ()
  (when (and will/keep-clock-running
             (not org-clock-clocking-in)
             (marker-buffer org-clock-default-task)
             (not org-clock-resolving-clocks-due-to-idleness))
    (will/clock-in-parent-task)))

(add-hook 'org-clock-out-hook 'will/clock-out-maybe 'append)



;; I used to clock in tasks by ID using the following function but with the new
;; punch-in and punch-out I don't need these as much anymore. f9-SPC calls
;; will/clock-in-last-task which switches the clock back to the previously clocked
;; task.


;;(use-package org-id
;;:ensure t
;;:defer
;;)
(defun will/clock-in-task-by-id (id)
  "Clock in a task by id"
  (org-with-point-at (org-id-find id 'marker)
    (org-clock-in nil)))

(defun will/clock-in-last-task (arg)
  "Clock in the interrupted task if there is one
Skip the default task and get the next one.
A prefix arg forces clock in of the default task."
  (interactive "p")
  (let ((clock-in-to-task
         (cond
          ((eq arg 4) org-clock-default-task)
          ((and (org-clock-is-active)
                (equal org-clock-default-task (cadr org-clock-history)))
           (caddr org-clock-history))
          ((org-clock-is-active) (cadr org-clock-history))
          ((equal org-clock-default-task (car org-clock-history)) (cadr org-clock-history))
          (t (car org-clock-history)))))
    (widen)
    (org-with-point-at clock-in-to-task
      (org-clock-in nil))))

;; Editing clock entries

;; [[http://doc.norang.ca/org-mode.html#EditingClockEntries][Study this.]]


(setq org-time-stamp-rounding-minutes (quote (1 1)))



;; [[http://doc.norang.ca/org-mode.html#EditingClockEntries][Study this.]]


(setq org-agenda-clock-consistency-checks
      (quote (:max-duration "4:00"
			    :min-duration 0
			    :max-gap 0
			    :gap-ok-around ("4:00"))))

;; Verify that the clock data is complete and correct


;; Sometimes I change tasks I'm clocking quickly - this removes clocked tasks with 0:00 duration
(setq org-clock-out-remove-zero-time-clocks t)

;; Using clock reports to summarize time spent


;; Agenda clock report parameters
(setq org-agenda-clockreport-parameter-plist
      (quote (:link t :maxlevel 2 :fileskip0 t :compact t :narrow 80)))

;; Creating a task estimate with column mode


					; Set default column view headings: Task Efforts Clock_Summary
(setq org-columns-default-format "%80ITEM(Task) %10Effort(Effort){:} %10CLOCKSUM")



;; These are stored for easy use in column mode in the global property Effort_ALL.


					; global Effort estimate values
					; global STYLE property values for completion
(setq org-global-properties (quote (("Effort_ALL" . "0:15 0:30 0:45 1:00 2:00 3:00 4:00 5:00 6:00 0:00")
                                    ("STYLE_ALL" . "habit"))))

;; Providing progress reports to others


;; Agenda log mode items to display (closed and state changes by default)
(setq org-agenda-log-mode-items (quote (closed state)))

;; Tags
;; Tasks can have any number of arbitrary tags. Tags are used for:

;; - filtering todo lists and agenda views
;; - providing context for tasks
;; - tagging notes
;; - tagging phone calls
;; - tagging meetings
;; - tagging tasks to be refiled
;; - tagging tasks in a WAITING state because a parent task is WAITING
;; - tagging cancelled tasks because a parent task is CANCELLED
;; - preventing export of some subtrees when publishing
;; I assign org-mode tags to every org-mode item that involves some kind of task.  The only org-mode headings I don't assign tags to are those that are purely informational--for example, I have not used tags for notetaking or writing projects.  The tags I am using seem to fall into three categories:

;; 1. =@= GTD context tags: these are tags to identify resources, conditions, people
;;    or anything else that is critical to carrying out a next action.  They are
;;    also mutually exclusive.  The startgroup - endgroup designation means that
;;    selecting one removes a similar tag already on the task.

;; 2. =deep vs shallow= tags:  These tags are based upon [[https://www.amazon.com/Deep-Work-Focused-Success-Distracted/dp/1455586692][Cal Newport's Deep Work]].  In
;;    that book he makes a distinction between /deep work/ and /shallow work/.  I'd
;;    like to try identifying tasks and projects along these lines.

;; 3. =role= tags: I'm using these to track my time and activities related to roles I
;;    have at work.  I'm trying to become more aware of how much time and effort
;;    I'm using towards becoming a better teacher, writer, and instructional
;;    designer.  I also want to be more aware of how much time my work managing the
;;    educational technology infrastructure and providing support at my
;;    institution.

;; 4. =project= tags: I tag project headings with these tags.  This tag is not
;;    inherited so that it doesn't clutter up my agendas.

;; 5. =goal= tags: I tag all my projects with tags related to my annual goals.  So
;;    far, I've been using performance goals at work but I may incorporate other
;;    personal goals later.  One concern I have is the need to "decode" the meaning
;;    of each of these goals with a key.  I'm doing this to keep my agendas and org
;;    files as uncluttered as possible.


;; add contexts/tags as tags in org-mode
(setq org-tag-alist '((:startgroup)
                      ("@errand"  . ?e)
		      ("@home" . ?h)
                      ("@office"  . ?o)
                      (:endgroup)
                      (:startgroup)
                      ("deep"  . ?d)
		      ("shallow" . ?s)
                      (:endgroup)
                      (:startgroup)
                      ("WAITING" . ?w)
                      ("HOLD" . ?h)
                      ("PERSONAL" . ?p)
                      ("WORK" . ?W)
                      ("HOME" . ?H)
                      ("ORG" . ?O)
                      ("NEXT" . ?N)
                      ("NOTE" . ?n)
                      ("CANCELLED" . ?c)
                      ("FLAGGED" . ??)
                      (:endgroup)
                      (:startgroup)
                      ("learning" . ?1)
                      ("teaching" . ?2)
                      ("writing" . ?3)
                      ("design" . ?4)
                      ("project" . ?P)
                      ("ets" . ?5)
                      ("etm" . ?6)
                      ("FacDev" . ?F)
                      ("MGMT" . ?M)
                      ("Teach" . ?T)
                      ("ProDev" . ?R)
                      ("UniServ" . ?U)
                      ("Vol" . ?V)
                      (:endgroup)
		      ))
					; Allow setting single tags without the menu
(setq org-fast-tag-selection-single-key (quote expert))

					; For tag searches ignore tasks with scheduled and deadline dates
(setq org-agenda-tags-todo-honor-ignore-options t)

;; GTD stuff


(setq org-agenda-span 'day)

;; Project definition and finding stuck projects

;; [[http://doc.norang.ca/org-mode.html#Projects][Study this.]]


(defun will/is-project-p ()
  "Any task with a todo keyword subtask"
  (save-restriction
    (widen)
    (let ((has-subtask)
          (subtree-end (save-excursion (org-end-of-subtree t)))
          (is-a-task (member (nth 2 (org-heading-components)) org-todo-keywords-1)))
      (save-excursion
        (forward-line 1)
        (while (and (not has-subtask)
                    (< (point) subtree-end)
                    (re-search-forward "^\*+ " subtree-end t))
          (when (member (org-get-todo-state) org-todo-keywords-1)
            (setq has-subtask t))))
      (and is-a-task has-subtask))))

(defun will/is-project-subtree-p ()
  "Any task with a todo keyword that is in a project subtree.
Callers of this function already widen the buffer view."
  (let ((task (save-excursion (org-back-to-heading 'invisible-ok)
                              (point))))
    (save-excursion
      (will/find-project-task)
      (if (equal (point) task)
          nil
        t))))

(defun will/is-task-p ()
  "Any task with a todo keyword and no subtask"
  (save-restriction
    (widen)
    (let ((has-subtask)
          (subtree-end (save-excursion (org-end-of-subtree t)))
          (is-a-task (member (nth 2 (org-heading-components)) org-todo-keywords-1)))
      (save-excursion
        (forward-line 1)
        (while (and (not has-subtask)
                    (< (point) subtree-end)
                    (re-search-forward "^\*+ " subtree-end t))
          (when (member (org-get-todo-state) org-todo-keywords-1)
            (setq has-subtask t))))
      (and is-a-task (not has-subtask)))))

(defun will/is-subproject-p ()
  "Any task which is a subtask of another project"
  (let ((is-subproject)
        (is-a-task (member (nth 2 (org-heading-components)) org-todo-keywords-1)))
    (save-excursion
      (while (and (not is-subproject) (org-up-heading-safe))
        (when (member (nth 2 (org-heading-components)) org-todo-keywords-1)
          (setq is-subproject t))))
    (and is-a-task is-subproject)))

(defun will/list-sublevels-for-projects-indented ()
  "Set org-tags-match-list-sublevels so when restricted to a subtree we list all subtasks.
  This is normally used by skipping functions where this variable is already local to the agenda."
  (if (marker-buffer org-agenda-restrict-begin)
      (setq org-tags-match-list-sublevels 'indented)
    (setq org-tags-match-list-sublevels nil))
  nil)

(defun will/list-sublevels-for-projects ()
  "Set org-tags-match-list-sublevels so when restricted to a subtree we list all subtasks.
  This is normally used by skipping functions where this variable is already local to the agenda."
  (if (marker-buffer org-agenda-restrict-begin)
      (setq org-tags-match-list-sublevels t)
    (setq org-tags-match-list-sublevels nil))
  nil)

(defvar will/hide-scheduled-and-waiting-next-tasks t)

(defun will/toggle-next-task-display ()
  (interactive)
  (setq will/hide-scheduled-and-waiting-next-tasks (not will/hide-scheduled-and-waiting-next-tasks))
  (when  (equal major-mode 'org-agenda-mode)
    (org-agenda-redo))
  (message "%s WAITING and SCHEDULED NEXT Tasks" (if will/hide-scheduled-and-waiting-next-tasks "Hide" "Show")))

(defun will/skip-stuck-projects ()
  "Skip trees that are not stuck projects"
  (save-restriction
    (widen)
    (let ((next-headline (save-excursion (or (outline-next-heading) (point-max)))))
      (if (will/is-project-p)
          (let* ((subtree-end (save-excursion (org-end-of-subtree t)))
                 (has-next ))
            (save-excursion
              (forward-line 1)
              (while (and (not has-next) (< (point) subtree-end) (re-search-forward "^\\*+ NEXT\\|WAITING " subtree-end t))
		(setq has-next t)))
            (if has-next
                nil
              next-headline)) ; a stuck project, has subtasks but no next task
        nil))))

(defun will/skip-non-stuck-projects ()
  "Skip trees that are not stuck projects"
  (will/list-sublevels-for-projects-indented)
  (save-restriction
    (widen)
    (let ((next-headline (save-excursion (or (outline-next-heading) (point-max)))))
      (if (will/is-project-p)
          (let* ((subtree-end (save-excursion (org-end-of-subtree t)))
                 (has-next ))
            (save-excursion
              (forward-line 1)
              (while (and (not has-next) (< (point) subtree-end) (re-search-forward "^\\*+ NEXT\\|WAITING " subtree-end t))
		(setq has-next t)))
            (if has-next
                next-headline
              nil)) ; a stuck project, has subtasks but no next task
        next-headline))))

(defun will/skip-non-projects ()
  "Skip trees that are not projects"
  (will/list-sublevels-for-projects-indented)
  (if (save-excursion (will/skip-non-stuck-projects))
      (save-restriction
        (widen)
        (let ((subtree-end (save-excursion (org-end-of-subtree t))))
          (cond
           ((will/is-project-p)
            nil)
           ((and (will/is-project-subtree-p) (not (will/is-task-p)))
            nil)
           (t
            subtree-end))))
    (save-excursion (org-end-of-subtree t))))

(defun will/skip-non-tasks ()
  "Show non-project tasks.
Skip project and sub-project tasks, habits, and project related tasks."
  (save-restriction
    (widen)
    (let ((next-headline (save-excursion (or (outline-next-heading) (point-max)))))
      (cond
       ((will/is-task-p)
        nil)
       (t
        next-headline)))))

(defun will/skip-project-trees-and-habits ()
  "Skip trees that are projects"
  (save-restriction
    (widen)
    (let ((subtree-end (save-excursion (org-end-of-subtree t))))
      (cond
       ((will/is-project-p)
        subtree-end)
       ((org-is-habit-p)
        subtree-end)
       (t
        nil)))))

(defun will/skip-projects-and-habits-and-single-tasks ()
  "Skip trees that are projects, tasks that are habits, single non-project tasks"
  (save-restriction
    (widen)
    (let ((next-headline (save-excursion (or (outline-next-heading) (point-max)))))
      (cond
       ((org-is-habit-p)
        next-headline)
       ((and will/hide-scheduled-and-waiting-next-tasks
             (member "WAITING" (org-get-tags-at)))
        next-headline)
       ((will/is-project-p)
        next-headline)
       ((and (will/is-task-p) (not (will/is-project-subtree-p)))
        next-headline)
       (t
        nil)))))

(defun will/skip-project-tasks-maybe ()
  "Show tasks related to the current restriction.
When restricted to a project, skip project and sub project tasks, habits, NEXT tasks, and loose tasks.
When not restricted, skip project and sub-project tasks, habits, and project related tasks."
  (save-restriction
    (widen)
    (let* ((subtree-end (save-excursion (org-end-of-subtree t)))
           (next-headline (save-excursion (or (outline-next-heading) (point-max))))
           (limit-to-project (marker-buffer org-agenda-restrict-begin)))
      (cond
       ((will/is-project-p)
        next-headline)
       ((org-is-habit-p)
        subtree-end)
       ((and (not limit-to-project)
             (will/is-project-subtree-p))
        subtree-end)
       ((and limit-to-project
             (will/is-project-subtree-p)
             (member (org-get-todo-state) (list "NEXT")))
        subtree-end)
       (t
        nil)))))

(defun will/skip-project-tasks ()
  "Show non-project tasks.
Skip project and sub-project tasks, habits, and project related tasks."
  (save-restriction
    (widen)
    (let* ((subtree-end (save-excursion (org-end-of-subtree t))))
      (cond
       ((will/is-project-p)
        subtree-end)
       ((org-is-habit-p)
        subtree-end)
       ((will/is-project-subtree-p)
        subtree-end)
       (t
        nil)))))

(defun will/skip-non-project-tasks ()
  "Show project tasks.
Skip project and sub-project tasks, habits, and loose non-project tasks."
  (save-restriction
    (widen)
    (let* ((subtree-end (save-excursion (org-end-of-subtree t)))
           (next-headline (save-excursion (or (outline-next-heading) (point-max)))))
      (cond
       ((will/is-project-p)
        next-headline)
       ((org-is-habit-p)
        subtree-end)
       ((and (will/is-project-subtree-p)
             (member (org-get-todo-state) (list "NEXT")))
        subtree-end)
       ((not (will/is-project-subtree-p))
        subtree-end)
       (t
        nil)))))

(defun will/skip-projects-and-habits ()
  "Skip trees that are projects and tasks that are habits"
  (save-restriction
    (widen)
    (let ((subtree-end (save-excursion (org-end-of-subtree t))))
      (cond
       ((will/is-project-p)
        subtree-end)
       ((org-is-habit-p)
        subtree-end)
       (t
        nil)))))

(defun will/skip-non-subprojects ()
  "Skip trees that are not projects"
  (let ((next-headline (save-excursion (outline-next-heading))))
    (if (will/is-subproject-p)
        nil
      next-headline)))

;; Archive setup
;; [2016-08-26 Fri 13:22]


(setq org-archive-mark-done nil)
(setq org-archive-location "%s_archive::* Archived Tasks")
(defun will/skip-non-archivable-tasks ()
  "Skip trees that are not available for archiving"
  (save-restriction
    (widen)
    ;; Consider only tasks with done todo headings as archivable candidates
    (let ((next-headline (save-excursion (or (outline-next-heading) (point-max))))
          (subtree-end (save-excursion (org-end-of-subtree t))))
      (if (member (org-get-todo-state) org-todo-keywords-1)
          (if (member (org-get-todo-state) org-done-keywords)
              (let* ((daynr (string-to-int (format-time-string "%d" (current-time))))
                     (a-month-ago (* 60 60 24 (+ daynr 1)))
                     (last-month (format-time-string "%Y-%m-" (time-subtract (current-time) (seconds-to-time a-month-ago))))

                     (this-month (format-time-string "%Y-%m-" (current-time)))
                     (subtree-is-current (save-excursion
                                           (forward-line 1)
                                           (and (< (point) subtree-end)
                                                (re-search-forward (concat last-month "\\|" this-month) subtree-end t)))))
                (if subtree-is-current
                    subtree-end ; Has a date in this month or last month, skip it
                  nil))  ; available to archive
            (or subtree-end (point-max)))
        next-headline))))

;; =NEXT= is for tasks

;; This code will automatically assign any parent heading with =NEXT= todo keyword
;; with =TODO= when a task is added with =NEXT=.  The aim is to ensure that
;; projects do not have =NEXT= todo keywords (these are only for tasks).


(defun will/mark-next-parent-tasks-todo ()
  "Visit each parent task and change NEXT states to TODO"
  (let ((mystate (or (and (fboundp 'org-state)
                          state)
                     (nth 2 (org-heading-components)))))
    (when mystate
      (save-excursion
        (while (org-up-heading-safe)
          (when (member (nth 2 (org-heading-components)) (list "NEXT"))
            (org-todo "TODO")))))))

;; Habit Tracking

;; See http://doc.norang.ca/org-mode.html#HabitTracking for more.


                                        ; Enable habit tracking (and a bunch of other modules) ; ;
(setq org-modules (quote (
                          ;;org-bbdb
                          ;;                          org-bibtex
                          org-crypt
                          ;;                         org-gnus
                          ;; org-id
                          org-info
                          ;;                          org-jsinfo
                          org-habit
                          org-inlinetask
                          org-irc
                          ;;                          org-mew
                          ;;                          org-mhe
                          org-protocol
                          ;;                          org-rmail
                          ;;                          org-vm
                          ;;    org-wl
                          ;;                          org-w3m
                          )))

                                        ; position the habit graph on the agenda to the right of the default
(setq org-habit-graph-column 50)


(add-hook 'org-after-todo-state-change-hook 'will/mark-next-parent-tasks-todo 'append)
(add-hook 'org-clock-in-hook 'will/mark-next-parent-tasks-todo 'append)

;; * Speed Commands
;; There's an exciting feature called =org-speed-commands= in org-mode.

;; Speed commands allow access to frequently used commands when on the beginning of
;; a headline - similar to one-key agenda commands. Speed commands are user
;; configurable and org-mode provides a good set of default commands.

;; I have the following speed commands set up in addition to the defaults. I don't
;; use priorities so I override the default settings for the 1, 2, and 3 keys. I
;; also disable cycling with 'c' and add 'q' as a quick way to get back to the
;; agenda and update the current view.

(setq org-use-speed-commands t)
;; (setq org-speed-commands-user (quote (("0" . ignore)
;;                                       ("1" . ignore)
;;                                       ("2" . ignore)
;;                                       ("3" . ignore)
;;                                       ("4" . ignore)
;;                                       ("5" . ignore)
;;                                       ("6" . ignore)
;;                                       ("7" . ignore)
;;                                       ("8" . ignore)
;;                                       ("9" . ignore)

;;                                       ("a" . ignore)
;;                                       ("d" . ignore)
;;                                       ("h" . will/hide-other)
;;                                       ("i" progn
;;                                        (forward-char 1)
;;                                        (call-interactively 'org-insert-heading-respect-content))
;;                                       ("k" . org-kill-note-or-show-branches)
;;                                       ("l" . ignore)
;;                                       ("m" . ignore)
;;                                       ("q" . will/show-org-agenda)
;;                                       ("r" . ignore)
;;                                       ("s" . org-save-all-org-buffers)
;;                                       ("w" . org-refile)
;;                                       ("x" . ignore)
;;                                       ("y" . ignore)
;;                                       ("z" . org-add-note)

;;                                       ("A" . ignore)
;;                                       ("B" . ignore)
;;                                       ("E" . ignore)
;;                                       ("F" . will/restrict-to-file-or-follow)
;;                                       ("G" . ignore)
;;                                       ("H" . ignore)
;;                                       ("J" . org-clock-goto)
;;                                       ("K" . ignore)
;;                                       ("L" . ignore)
;;                                       ("M" . ignore)
;;                                       ("N" . will/narrow-to-org-subtree)
;;                                       ("P" . will/narrow-to-org-project)
;;                                       ("Q" . ignore)
;;                                       ("R" . ignore)
;;                                       ("S" . ignore)
;;                                       ("T" . will/org-todo)
;;                                       ("U" . will/narrow-up-one-org-level)
;;                                       ("V" . ignore)
;;                                       ("W" . will/widen)
;;                                       ("X" . ignore)
;;                                       ("Y" . ignore)
;;                                       ("Z" . ignore))))

;;* quantified awesome

(load "~/Dropbox/emacs/elisp/quantified.el")
(require 'quantified)
(setq quantified-token "dfZjp8jqyypkpqrGPfP_" quantified-username "wtmonroe")

;; create separate "secrets" file so that configuration can be posted
;; (load-file "~/.emacs.secrets")

(defmacro my/org-with-current-task (&rest body)
  "Execute BODY with the point at the subtree of the current task."
  `(if (derived-mode-p 'org-agenda-mode)
       (save-window-excursion
 	 (org-agenda-switch-to)
 	 ,@body)
     ,@body))

(defun my/org-clock-in-and-track ()
  "Start the clock running. Clock into Quantified Awesome."
  (interactive)
  (my/org-with-current-task
   (org-clock-in)
   (call-interactively 'my/org-quantified-track)))
(bind-key "!" 'my/org-clock-in-and-track org-agenda-mode-map)
(add-to-list 'org-speed-commands-user '("!" my/org-clock-in-and-track))
(setq org-use-speed-commands t)

(defmacro my/with-org-task (&rest body)
  "Run BODY within the current agenda task, clocked task, or cursor task."
  `(cond
    ((derived-mode-p 'org-agenda-mode)
     (let* ((marker (org-get-at-bol 'org-marker))
	    (buffer (marker-buffer marker))
	    (pos (marker-position marker)))
       (with-current-buffer buffer
	 (save-excursion
	   (save-restriction
	     (widen)
	     (goto-char pos)
	     ,@body)))))
    ((and (derived-mode-p 'org-mode) (org-at-heading-p)) (save-excursion ,@body))
    ((org-clocking-p) (save-excursion (org-clock-goto) ,@body))
    ((derived-mode-p 'org-mode) ,@body)))

(defun my/org-quantified-track (&optional category note)
  "Create a tracking record using CATEGORY and NOTE.
   Default to the current task in the agenda, the currently-clocked
   entry, or the current subtree in Org."
  (interactive (list nil nil))
  (unless (and category note)
    (my/with-org-task
     (setq category (or category
 			(org-entry-get-with-inheritance "QUANTIFIED")))
     (cond
      ((null category)
       (setq category (read-string "Category: "))
       (org-set-property "QUANTIFIED" category))
      ((string= category "ask")
       (setq category (read-string "Category: "))))
     (setq note
 	   (concat
 	    (if (string= (or (org-entry-get-with-inheritance "QUANTIFIEDQUIET") "") "t")
 		"!private "
 	      "")
 	    (or note (elt (org-heading-components) 4) (read-string "Note: "))))))
  (quantified-track (concat category " | " note)))

(defun my/org-quick-clock-in-task (location jump)
  "Track and clock in on the specified task.
 If JUMP is non-nil or the function is called with the prefix argument, jump to that location afterwards."
  (interactive (list (save-excursion (my/org-refile-get-location "Location")) current-prefix-arg))
  (when location
    (if jump
	(progn (org-refile 4 nil location) (my/org-clock-in-and-track))
      (save-window-excursion
	(org-refile 4 nil location)
	(my/org-clock-in-and-track)))))
(bind-key "C-c q" 'my/org-quick-clock-in-task)

;; (require 'org-inlinetask)

;; (defun scimax/org-return (&optional ignore)
;;   "Add new list item, heading or table row with RET.
;; A double return on an empty element deletes it.
;; Use a prefix arg to get regular RET. "
;;   (interactive "P")
;;   (if ignore
;;       (org-return)
;;     (cond

;;      ((eq 'line-break (car (org-element-context)))
;;       (org-return-indent))

;;      ;; Open links like usual, unless point is at the end of a line.
;;      ;; and if at beginning of line, just press enter.
;;      ((or (and (eq 'link (car (org-element-context))) (not (eolp)))
;;           (bolp))
;;       (org-return))

;;      ;; It doesn't make sense to add headings in inline tasks. Thanks Anders
;;      ;; Johansson!
;;      ((org-inlinetask-in-task-p)
;;       (org-return))

;;      ;; checkboxes too
;;      ((org-at-item-checkbox-p)
;;       (org-insert-todo-heading nil))

;;      ;; lists end with two blank lines, so we need to make sure we are also not
;;      ;; at the beginning of a line to avoid a loop where a new entry gets
;;      ;; created with only one blank line.
;;      ((org-in-item-p)
;;       (if (save-excursion (beginning-of-line) (org-element-property :contents-begin (org-element-context)))
;;           (org-insert-heading)
;;         (beginning-of-line)
;;         (delete-region (line-beginning-position) (line-end-position))
;;         (org-return)))

;;      ;; org-heading
;;      ((org-at-heading-p)
;;       (if (not (string= "" (org-element-property :title (org-element-context))))
;;           (progn (org-end-of-meta-data)
;;                  (org-insert-heading-respect-content)
;;                  (outline-show-entry))
;;         (beginning-of-line)
;;         (setf (buffer-substring
;;                (line-beginning-position) (line-end-position)) "")))

;;      ;; tables
;;      ((org-at-table-p)
;;       (if (-any?
;;            (lambda (x) (not (string= "" x)))
;;            (nth
;;             (- (org-table-current-dline) 1)
;;             (org-table-to-lisp)))
;;           (org-return)
;;         ;; empty row
;;         (beginning-of-line)
;;         (setf (buffer-substring
;;                (line-beginning-position) (line-end-position)) "")
;;         (org-return)))

;;      ;; fall-through case
;;      (t
;;       (org-return)))))


;; (define-key org-mode-map (kbd "RET")
;;   'scimax/org-return)

;; Enable org-meta-return
;; spacemacs github discussion on org-meta-return and M-RET conflict https://github.com/syl20bnr/spacemacs/issues/9603
;; elisp loosely based upon kitchin's better return for orgmode https://github.com/agzam/dot-spacemacs/blob/master/layers/ag-org/funcs.el#L124

;; (defun org-meta-return* (&optional ignore)
;;   "context respecting org-insert"
;;   (interactive "P")
;;   (if ignore
;;       (org-return-indent)
;;     (cond
;;      ;; checkbox
;;      ((org-at-item-checkbox-p) (org-insert-todo-heading nil))
;;      ;; item
;;      ((org-at-item-p) (org-insert-item))
;;      ;; todo element
;;      ((org-element-property :todo-keyword (org-element-context))
;;       (org-insert-todo-heading 4))
;;      ;; heading
;;      ((org-at-heading-p) (org-insert-heading-respect-content))
;;      ;; plain text item
;;      ((string-or-null-p (org-context))
;;       (progn
;;         (let ((org-list-use-circular-motion t))
;;           (org-beginning-of-item)
;;           (end-of-line)
;;           (org-meta-return*))))
;;      ;; fall-through case
;;      (t (org-return-indent)))))

;; (define-key 'insert org-mode-map (kbd "M-RET") #'org-meta-return*)
;; (define-key 'insert org-mode-map (kbd "RET") #'org-return-indent)
;; (define-key 'insert org-mode-map (kbd "<S-return>") #'org-return)

;; (evil-define-key 'insert org-mode-map (kbd "RET") 'evil-org-better-return)
;; (defun evil-org-better-return (arg)
;;   (interactive "P")
;;   (cond ((and (not arg) (evil-org--empty-element-p))
;;          (delete-region (line-beginning-position) (line-end-position)))
;;         ((eolp)
;;          (call-interactively #'evil-org-open-below))
;;         ('otherwise
;;          (call-interactively #'org-return-indent))))

;; (defun evil-org--empty-element-p ()
;;   (let* ((special evil-org-special-o/O)
;;           (ignore (when (memq 'item special) evil-org-special-o/O-ignore))
;;           (elements (append special ignore))
;;           (e (org-element-lineage (org-element-at-point) elements t)))
;;     (cl-case (org-element-type e)
;;       ((table-row)
;;        (let* ((rows (cl-remove 'hline (org-table-to-lisp)))
;;               (row (nth (1- (org-table-current-line)) rows)))
;;          (cl-every 'string-empty-p row)))
;;       ((item)
;;        (or (not (org-element-property :contents-begin e))
;;            (> (org-element-property :contents-begin e)
;;               (line-end-position)))))))

;; (require 'org-inlinetask)

;; (defun scimax/org-return (&optional ignore)
;;   "Add new list item, heading or table row with RET.
;; A double return on an empty element deletes it.
;; Use a prefix arg to get regular RET. "
;;   (interactive "P")
;;   (if ignore
;;       (org-return)
;;     (cond

;;      ((eq 'line-break (car (org-element-context)))
;;       (org-return-indent))

;;      ;; Open links like usual, unless point is at the end of a line.
;;      ;; and if at beginning of line, just press enter.
;;      ((or (and (eq 'link (car (org-element-context))) (not (eolp)))
;;           (bolp))
;;       (org-return))

;;      ;; It doesn't make sense to add headings in inline tasks. Thanks Anders
;;      ;; Johansson!
;;      ((org-inlinetask-in-task-p)
;;       (org-return))

;;      ;; checkboxes too
;;      ((org-at-item-checkbox-p)
;;       (org-insert-todo-heading nil))

;;      ;; lists end with two blank lines, so we need to make sure we are also not
;;      ;; at the beginning of a line to avoid a loop where a new entry gets
;;      ;; created with only one blank line.
;;      ((org-in-item-p)
;;       (if (save-excursion (beginning-of-line) (org-element-property :contents-begin (org-element-context)))
;;           (org-insert-heading)
;;         (beginning-of-line)
;;         (delete-region (line-beginning-position) (line-end-position))
;;         (org-return)))

;;      ;; org-heading
;;      ((org-at-heading-p)
;;       (if (not (string= "" (org-element-property :title (org-element-context))))
;;           (progn (org-end-of-meta-data)
;;                  (org-insert-heading-respect-content)
;;                  (outline-show-entry))
;;         (beginning-of-line)
;;         (setf (buffer-substring
;;                (line-beginning-position) (line-end-position)) "")))

;;      ;; tables
;;      ((org-at-table-p)
;;       (if (-any?
;;            (lambda (x) (not (string= "" x)))
;;            (nth
;;             (- (org-table-current-dline) 1)
;;             (org-table-to-lisp)))
;;           (org-return)
;;         ;; empty row
;;         (beginning-of-line)
;;         (setf (buffer-substring
;;                (line-beginning-position) (line-end-position)) "")
;;         (org-return)))

;;      ;; fall-through case
;;      (t
;;       (org-return)))))


;; (define-key org-mode-map (kbd "RET")
;;   'scimax/org-return)

;; (org-defkey org-mode-map [(meta return)] 'org-meta-return)

;; (global-set-key (kbd "C-S-RET") 'org-meta-return)

;; spacemacs-journal https://github.com/borgnix/spacemacs-journal
(setq org-journal-dir "~/Dropbox/org/journal/")

;; org-journal files do not have an extension. this elisp makes orgmode the default mode for filenames consisting of nothing but numbers. http://www.howardism.org/Technical/Emacs/journaling-org.html
(add-to-list 'auto-mode-alist '(".*/[0-9]*$" . org-mode))

;;org-journal for spacemacs
;; (setq-default dotspacemacs-configuration-layers '(
;;                                                   (org :variables
;;                                                        org-enable-org-journal-support t
;;                                                        org-journal-dir "~/Dropbox/org/journal/")))

;; * Olivetti
;; olivetti nicer writing environment https://github.com/rnkn/olivetti
(setq olivetti-body-width 100)
(global-set-key (kbd "C-x <f1>") 'olivetti-mode)

;; Ispell
;; (ispell-change-dictionary "en_US" t)
;; (setenv "LANG" "en_US")

;; (when (string-equal system-type "windows-nt")
  ;; (setq ispell-dictionary "en_US.dic")) 
  

;; worf https://github.com/abo-abo/worf
;; vi-like bindings for org-mode
(add-hook 'org-mode-hook #'worf-mode)

;; magithub
;; following these instructions: https://goo.gl/CrJrkD
(use-package magithub
  :after magit
  :config (magithub-feature-autoinject t))
   )

;; deft
 (setq deft-directory "~/Dropbox/notes/notes")
 (setq deft-default-extension "org")

;; ace-jump-buffer for quicker buffer swtiching  https://github.com/waymondo/ace-jump-buffer
;; (use-package ace-jump-buffer
;;    :ensure t
;;    :pin manual
;;    :bind
;;    ("C-;" . ace-jump-buffer)
;;    )
<<<<<<< HEAD
=======


;; dired default directory
(when (string-equal system-type "windows-nt")
  (setq default-directory "c:/Users/will/dropbox/work")
  )
>>>>>>> df5f9cfc0760ffe655585434298017b43895d665


;; dired default directory
(when (string-equal system-type "windows-nt")
  (setq default-directory "c:/Users/will/dropbox/work")
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (fuzzy company-statistics company auto-yasnippet yasnippet ac-ispell auto-complete deft worf zoutline unfill smeargle pandoc-mode ox-pandoc ht ox-clip orgit org-projectile org-category-capture org-present org-pomodoro alert log4e gntp org-download olivetti mwim magithub markdown-mode ghub+ apiwrap ghub magit-gitflow htmlize gnuplot gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link evil-magit magit magit-popup git-commit with-editor helm-themes helm-swoop helm-projectile helm-mode-manager helm-flx helm-descbinds helm-ag ace-jump-helm-line ws-butler winum which-key wgrep volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline smex restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint ivy-hydra info+ indent-guide hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt help-fns+ helm-make google-translate golden-ratio flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu elisp-slime-nav dumb-jump define-word counsel-projectile column-enforce-mode clean-aindent-mode auto-highlight-symbol auto-compile aggressive-indent adaptive-wrap ace-window ace-link))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
