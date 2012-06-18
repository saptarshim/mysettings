;;-----------------------------------------------------------------------------
;;Create Default Project
(ede-cpp-root-project "DefaultProject"
                :name "DefaultProject Project"
                :file "~/projects/Readme.txt"
                :include-path '("~/projects"
                                "/usr/include"				
                               )
                :system-include-path '("~/")
                :spp-table '(("isUnix" . "")
                             ("BOOST_TEST_DYN_LINK" . "")))


;;the the default for the compilation behaviours
(set-default 'compile-command "make -j8")
(setq compilation-scroll-output t)
(setq compilation-read-command nil)
;;Save all buffers before compilation by default
(setq compilation-ask-about-save nil)
