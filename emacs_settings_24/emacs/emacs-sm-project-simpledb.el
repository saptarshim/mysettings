;;-----------------------------------------------------------------------------
;;Create Quantlib Project
(ede-cpp-root-project "SimpleInMemDB"
                :name "SimpleInMemDB Project"
                :file "~/projects/app/SimpleInMemDB/Readme.txt"
                :include-path '("/"
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
