onerror {quit -code 1}
source "/home/borg/Repositorios/4Semestre/Elementos-P1-pratica/vunit_out/test_output/lib.tb_cronometro.all_43ac0c0e2d3d9efff6c457556d613f85ab93acc5/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
