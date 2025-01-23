# -*- coding: utf-8 -*-
"""
Created on Thu Jan 23 21:27:44 2025

@author: mkranich
"""

import numpy as np
import matplotlib.pyplot as plt
import ltspice as lt

#parse data from .raw file
fpath       = 'tb_clkgen.raw'
l           = lt.Ltspice(fpath)
l.parse()

#extract relevant data
time        = np.array(l.get_time(), dtype=np.float32)
vclk        = np.array(l.get_data('v(clkin)'), dtype=np.float32)
vp1         = np.array(l.get_data('v(p1)'), dtype=np.float32)
vp1e        = np.array(l.get_data('v(p1e)'), dtype=np.float32)
vp2         = np.array(l.get_data('v(p2)'), dtype=np.float32)
vp2e        = np.array(l.get_data('v(p2e)'), dtype=np.float32)

#redefine data arrays considering new length
factor = 10
length = round(len(time)/factor)

time    = np.array(time[:length], dtype=np.float32)
vclk    = np.array(np.flip(vclk[:length]), dtype=np.float32)
vp1     = np.array(np.flip(vp1[:length]), dtype=np.float32)
vp1e    = np.array(np.flip(vp1e[:length]), dtype=np.float32)
vp2     = np.array(np.flip(vp2[:length]), dtype=np.float32)
vp2e    = np.array(np.flip(vp2e[:length]), dtype=np.float32)

#plot data
plt.close('all')
plt.figure(1, figsize=(20,10))
plt.plot(time*1e9, vp1, label=r'$\phi_1$')
plt.plot(time*1e9, vp1e, label=r'$\phi_{1d}$')
plt.plot(time*1e9, vp2, label=r'$\phi_2$')
plt.title('Voltage input clock over time')
plt.xlabel('$t$/ns')
plt.ylabel('V')
plt.legend()
plt.grid()