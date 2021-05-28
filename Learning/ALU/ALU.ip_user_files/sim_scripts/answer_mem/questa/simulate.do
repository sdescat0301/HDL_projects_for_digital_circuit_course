onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib answer_mem_opt

do {wave.do}

view wave
view structure
view signals

do {answer_mem.udo}

run -all

quit -force
