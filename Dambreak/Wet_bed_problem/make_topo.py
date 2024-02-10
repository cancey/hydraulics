import numpy as np

xlower = -1000
xupper = 1000.
slope  = 0.000
mx     = 2000

x = np.linspace(xlower, xupper, mx+1)
z = 0-slope*x
 

fname='topography.data'

with open(fname,'w') as f:
        f.write('%i   # number of points\n' % (mx+1))

        for i in range(mx+1):
            f.write('%15.8f %15.8f\n' % (x[i], z[i]))
        f.close()
