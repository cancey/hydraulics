import numpy as np

xlower = 0
xupper = 1000.

slope1  = 0.05
slope2  = 0.002
mx     = 1000
x_A    = 10
z_A    = 0-slope1*x_A

x = np.linspace(xlower, xupper, mx+1)
z = 0-slope1*x

for i in range(mx+1):
	if x[i] > x_A:
		z[i] = z_A-slope2*x[i]
 

fname='topography.data'

with open(fname,'w') as f:
        f.write('%i   # number of points\n' % (mx+1))

        for i in range(mx+1):
            f.write('%15.8f %15.8f\n' % (x[i], z[i]))
        f.close()
