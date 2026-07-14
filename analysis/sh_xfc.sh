#!/bin/bash
for((i=1;i<=5;i++))
do
	    mkdir xfc_${i}
	        cd ./xfc_${i}
		    cp ../xfc.cpptraj ./
		        sed -i "s/05_tyk2_out_box_atp_1_complex/08_tyk2_out_nobox_${i}_complex/g" xfc.cpptraj
			#sed -i "s/1-646/1-471/g" xfc.cpptraj
			#sed -i "s/1-646/1-1141/g" xfc.cpptraj
		        sed -i "s/1-646/80-170,229-267,349-404,537-558,619-665,872-1141/g" xfc.cpptraj
		        sed -i "s/wt_atp_bbg_1_RmsToAvg/08_3_${i}_RmsToAvg/g" xfc.cpptraj
		        sed -i "s/wt_atp_bbg_1_Matrix/08_3_${i}_Matrix/g" xfc.cpptraj
		        sed -i "s/wt_atp_bbg_1_evecs/08_3_${i}_evecs/g" xfc.cpptraj
		        sed -i "s/wt_atp_bbg_1_nmwiz/08_3_${i}_nmwiz/g" xfc.cpptraj
		        sed -i "s/wt_atp_bbg_1_project/08_3_${i}_project/g" xfc.cpptraj	
		  	        cpptraj -i xfc.cpptraj
			
				    cd ../
			    done

