onerror {quit -code 1}
source "/home/borg/Repositorios/4Semestre/Elementos-P1-pratica/vunit_out/test_output/lib.tb_sevenseg.all_410e10e5c811874a9d020109a6e0663fad4fe03d/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
