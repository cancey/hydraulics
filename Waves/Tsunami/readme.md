Simulations of a tsunami based on the geoclaw solver and the code developed by Berger et al. [1] for solving the Serre--Green--Naghdi (SGN) equation. The code is adapted from

[bouss_wavetank_matsuyama](https://github.com/clawpack/geoclaw/tree/master/examples/1d_classic/bouss_wavetank_matsuyama)

The results can be plotted using the notebook reading.ipynb. To run the code:

make topo

make .output

In the setrun.py configuration file, L92, it is possible to select the Saint-Venant equations (rundata.bouss_data.bouss_equations = 0) or the SGN equations (rundata.bouss_data.bouss_equations = 2).


[1] Berger, M.J., and R.J. LeVeque, *Implicit Adaptive Mesh Refinement for Dispersive Tsunami Propagation*, arXiv preprint arXiv:2307.05816, 2023.
