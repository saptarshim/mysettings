;;-----------------------------------------------------------------------------
;;Create Quantlib Project
(ede-cpp-root-project "Quantlib-1.1"
                :name "Quantlib Project"
                :file "~/projects/app/QuantLib/Readme.txt"
                :include-path '("~/projects/app/QuantLib/ql"
                                "~/projects/app/QuantLib"
                               )
                :system-include-path '("/Program Files (x86)/Microsoft Visual Studio 10.0/VC/include")
                :spp-table '(("isUnix" . "")
                             ("BOOST_TEST_DYN_LINK" . "")))


