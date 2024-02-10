Simulations of a tsunami based on the geoclaw solver and the code developed by Berger et al. [1] for solving the Serre--Green--Naghdi (SGN) equation. The code is adapted from

[bouss_wavetank_matsuyama](https://github.com/clawpack/geoclaw/tree/master/examples/1d_classic/bouss_wavetank_matsuyama)

The results can be plotted using the notebook reading.ipynb. To run the code:

    make topo

    make .output

In the setrun.py configuration file, L92, it is possible to select the Saint-Venant equations (rundata.bouss_data.bouss_equations = 0) or the SGN equations (rundata.bouss_data.bouss_equations = 2).

See also the documentation page on Geoclaw 1d

[www.clawpack.org/dev/geoclaw1d.html](https://www.clawpack.org/dev/geoclaw1d.html)

Geoclaw 1d should be available in the next release (5.10?). For the moment (Feb. 2024) it should installed from the directory:

[github.com/clawpack/geoclaw_1d](https://github.com/clawpack/geoclaw_1d)

## References
[1] Berger, M.J., and R.J. LeVeque, *Implicit Adaptive Mesh Refinement for Dispersive Tsunami Propagation*, arXiv preprint arXiv:2307.05816, 2023.
