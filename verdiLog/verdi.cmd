simSetSimulator "-vcssv" -exec "simv" -args \
           "+UVM_TESTNAME=ram_random_test +UVM_VERBOSITY=UVM_MEDIUM +ntb_random_seed=1 -cm line+cond+fsm+tgl+branch+assert -cm_dir coverage.vdb -cm_name sim1"
debImport "-dbdir" "simv.daidir/" "-fdNum" "67"
debLoadSimResult /home/pedu37/worksapce/0610_ram/ram_tb.fsdb
wvCreateWindow
verdiSetActWin -win $_nWave2
verdiWindowResize -win $_Verdi_1 "1496" "305" "900" "700"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
