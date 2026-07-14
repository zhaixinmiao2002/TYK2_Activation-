#!/bin/bash
for((i=1;i<=5;i++))
do
	 mkdir mode_${i}
               cd ./mode_${i}			
                	cp ../mode.in ./
			cp ../xfc_${i}/08_3_${i}_evecs.dat ./

			     sed -i "s/wt_atp_bbg_1_evecs/08_3_${i}_evecs/g" mode.in
			     sed -i "s/wt_atp_bbg_1_extreme/08_3_${i}_extreme/g" mode.in
			     sed -i "s/wt_atp_bbg_1_rmsfluct/08_3_${i}_rmsfluct/g" mode.in
			     sed -i "s/wt_atp_bbg_1_frac/08_3_${i}_frac/g" mode.in

									                                                                                  cpptraj -i mode.in
																			  cd ../
																		  done

