export CUDA_VISIBLE_DEVICES=0


pmemd.cuda -O  -i ./mini.in -o mini.out -p ./complex.parm7 -c ./complex.rst7 -r mini.rst -ref ./complex.rst7  -x mini.nc -inf mini.mdinfo
pmemd.cuda -O  -i ./mini_1.in -o mini_1.out -p ./complex.parm7 -c mini.rst -r mini_1.rst -ref mini.rst  -x mini_1.nc -inf mini_1.mdinfo
pmemd.cuda -O  -i ./mini_2.in -o mini_2.out -p ./complex.parm7 -c mini_1.rst -r mini_2.rst -ref mini_1.rst  -x mini_2.nc -inf mini_2.mdinfo
pmemd.cuda -O  -i ./mini_3.in -o mini_3.out -p ./complex.parm7 -c mini_2.rst -r mini_3.rst -ref mini_2.rst  -x mini_3.nc -inf mini_3.mdinfo
pmemd.cuda -O  -i ./mini_4.in -o mini_4.out -p ./complex.parm7 -c mini_3.rst -r mini_4.rst -ref mini_3.rst  -x mini_4.nc -inf mini_4.mdinfo
pmemd.cuda -O  -i ./heat.in -o heat.out -p ./complex.parm7 -c mini_4.rst -r heat.rst -ref mini_4.rst  -x heat.nc -inf heat.mdinfo
pmemd.cuda -O  -i ./eq_1.in -o eq_1.out -p ./complex.parm7 -c heat.rst -r eq_1.rst -ref heat.rst  -x eq_1.nc -inf eq_1.mdinfo
pmemd.cuda -O  -i ./eq_2.in -o eq_2.out -p ./complex.parm7 -c eq_1.rst -r eq_2.rst -ref eq_1.rst  -x eq_2.nc -inf eq_2.mdinfo
pmemd.cuda -O  -i ./eq_3.in -o eq_3.out -p ./complex.parm7 -c eq_2.rst -r eq_3.rst -ref eq_2.rst  -x eq_3.nc -inf eq_3.mdinfo
pmemd.cuda -O  -i ./tmd.in -o tmd.out -p ./complex.parm7 -c eq_3.rst -r tmd.rst -ref eq_3.rst -x tmd.nc 
#pmemd.cuda -O  -i ./md.in -o smd_3.out -p ./complex.parm7 -c eq_3.rst -r smd_3.rst -ref eq_3.rst -x smd_3.nc 

# nohup sh sub.sh &
