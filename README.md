# hydraulics
Introduction to the shallow water equations

You will find a collection of jupyter notebooks, Fortran and Python scripts for simulating hydraulic processes. In most cases, computations are done using Clawpack. Clawpack can be installed on any linux and MacOs machine (it should be possible with Windows, but I have never tested). See:

[www.clawpack.org/installing.html](https://www.clawpack.org/installing.html)

Clawpack is a library for solving hyperbolic equations. Theory and numerical techniques are developed in:

LeVeque, R.J., *Finite Volume Methods for Hyperbolic Problems*, Cambridge University Press, Cambridge, 2002.

You can also download my tutorial (work in progress):
[en.ancey.ch/cours/doctorat/tutorial_clawpack.pdf](http://en.ancey.ch/cours/doctorat/tutorial_clawpack.pdf)

The notebooks are used as a support for my course in hydraulics at EPFL (civil engineering, master students). The lecture notes (in French) are available and contain further information on the equations and their solutions: [fr.ancey.ch/cours/masterGC/cours-hydraulique.pdf](http://fr.ancey.ch/cours/masterGC/cours-hydraulique.pdf).

# Contents
## Physical processes
* linear advection equation
* nonlinear advection equation
* Burgers' equation
* viscous Burgers equation

## Floods
* kinematic wave approximation
  
## Dambreak
* Huppert's equation
* Ritter's solution
* dambreak on a wet bed
* dambreak on a dry sloping bed
  
## Waves
* tsunami: comparison between the Saint-Venant equations and Serre--Green--Naghdi equations

