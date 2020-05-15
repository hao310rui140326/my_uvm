
sim: clean
	g++ -c external.cpp -o external.o
	g++ -c my_rand.cpp -o my_rand.o
	##vcs -full64  -sverilog top.sv -dpi -ntb_opts uvm -debug_all -timescale=1ns/10ps  external.o  my_rand.o  -l vcs_com.log
	vcs -full64  -sverilog ${UVM_HOME}/src/dpi/uvm_dpi.cc -CFLAGS -DVCS  -f filelist.f  -dpi -ntb_opts +vcd+vcdpluson  -debug_all -timescale=1ns/10ps  external.o  my_rand.o  -l vcs_com.log
	$ ./simv +UVM_TR_RECORD +UVM_VERBOSITY=HIGH +UVM_TESTNAME=rand_test  -l vcs_sim.log
run:
	./simv +UVM_TR_RECORD +UVM_VERBOSITY=HIGH +UVM_TESTNAME=rand_test  -gui -l vcs_sim.log
clean:
	rm -rf DVEfiles csrc simv simv.daidir ucli.key .vlogansetup.args .vlogansetup.env .vcs_lib_lock simv.vdb AN.DB vc_hdrs.h *.diag *.vpd *tar.gz external.o

view_waves:
	dve -full64  &


verdi:
	find -name "*.sv" > d.f
	verdi -sv -top top  -f d.f &

