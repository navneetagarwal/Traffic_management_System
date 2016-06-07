An important notice - We have coded our system as if the IIT Main Gate is towards the south. So, it has been inverted geographically. So, while testing the model, put the value of geograhical east to the corresponding west of out system. This point has been stated in the design document as well.

Steps to run a custom testbench -

1. Open the file 'tb_Project.vhd'.
2. Towards the end of the file, there is a section for Stimulus process. Here is where you can put your input values.
3. For example if you want to have a value of backed up traffic at market gate junction on the west signal to be 100 -
	B_mgj_W_t<=std_logic_vector(to_unsigned(100,10));
4. The syntax goes as follows -
	B -> backed-up traffic
	mgj -> Market Gate Junction
	hnj -> Hiranandani Junction
	iitj -> IIT Main Gate Junction
	v -> The flow rate when the signal is green
	W, S, E -> West, South and East as per our assumption (not geographically)
	eb_traffic -> Flow rate from Eastern Expressway to JVLR
	wb_traffic -> Flow rate from JVLR to Eastern Expressway

eg. B_iitj_S_t -> Backed up traffic at IIT Main Gate Junction at the south, i.e. from IIT to JVLR.

Desired Outputs -

1. We have a flag called 'infinite_queue'. This flag is 0 inititally and becomes 1 if the number of backed up cars at any road crosses a fixed threshold of 512.
2. Apart, we have a signal for each road's backed up traffic indicated by the same syntax as above. For second-to-second change in the backed up traffic, you can have a look at these signals as well.
3. There is a signal like s_iitj_w. This signal is the output (i.e. the west signal of IIT Main Gate Junction). Also, it is in a form of a 3-bit string.This is with respect to the traffic light. As every traffic light has three paths (left, straight and right). We have assigned the first bit to the first left which is allowed in that state to that traffic light. The second bit is assigned to thhe next left and so on.

For example: For a four way, for the signal for left to right, 110 means allowed left and straight but not right. For a three way, for the signal from left to right,110 means straight and right.

