;; Copyright (C) 2011 Saptarshi Mondal
;; Author: saptarshi.mondal@gmail.com

(load-file "~/emacs/cedet-1.1/common/cedet.el")
(semantic-load-enable-excessive-code-helpers)
(load-file "~/emacs/cedet-1.1/eieio/linemark.el")
(enable-visual-studio-bookmarks)
(require 'semantic-ia)
(require 'semantic-gcc)
(semantic-add-system-include "~../home/lib/boost_1_47" 'c++-mode)
(require 'semanticdb)
(global-semanticdb-minor-mode 1)
;; if you want to enable support for gnu global
(require 'semanticdb-global)
(semanticdb-enable-gnu-global-databases 'c-mode)
(semanticdb-enable-gnu-global-databases 'c++-mode)
;; enable ctags for some languages:
;;  Unix Shell, Perl, Pascal, Tcl, Fortran, Asm
;;(semantic-load-enable-primary-exuberent-ctags-support)



