onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib testdata_mem_opt

do {wave.do}

view wave
view structure
view signals

do {testdata_mem.udo}

run -all

quit -force
