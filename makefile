movimiento.gif : plot.py Constantes.txt acc_dat.txt dens_dat.txt pot_dat.txt phase_dat.txt
	python plot.py

Constantes.txt acc_dat.txt dens_dat.txt pot_dat.txt phase_dat.txt : a.out
	./a.out

a.out : LB1D.c
	gcc -lm -lfftw3 LB1D.c

clean:
	rm -fr a.out Constantes.txt acc_dat.txt dens_dat.txt pot_dat.txt phase_dat.txt pot_rela_dat.txt temp/
