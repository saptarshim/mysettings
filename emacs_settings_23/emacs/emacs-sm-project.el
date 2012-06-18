;;-----------------------------------------------------------------------------
;;Create Quantlib Project
(setq cpp-quantlib-1.1-project
	(ede-cpp-root-project "Quantlib-1.1"
		        :name "Quantlib Project"
		        :file "~/projects/app/QuantLib-1.1/Makefile"
		        :include-path '("/"
		        		  "~/projects/app/QuantLib-1.1/ql"
		        		  "/usr/include/boost"
		        		  "/lib"
		                       )
		        :system-include-path '("/usr/include")
		        :spp-table '(("isUnix" . "")
		                     ("BOOST_TEST_DYN_LINK" . "")))
			)



