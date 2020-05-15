import "DPI-C" context function int my_rand(int a);

class rand_sequence_in extends uvm_sequence #(packet_in);
    `uvm_object_utils(rand_sequence_in)

    function new(string name="rand_sequence_in");
        super.new(name);
    endfunction: new

    task body;
        packet_in tx;
		int  i ;
		i=0;
        forever begin 
            tx = packet_in::type_id::create("tx");
            start_item(tx);
            //assert(tx.randomize());
			tx.A = my_rand(i) ;
			tx.B = my_rand(i+1) ;
            finish_item(tx);
			i=i+1;
        end
    endtask: body
endclass: rand_sequence_in

