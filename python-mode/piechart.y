# -*- mode: snippet -*-
# Last modified: <2012-04-27 15:18:24 Friday by richard>
# name: piechart
# key: piechart
# contributor: Richard Wong <chao787@gmail.com>
# --
from pylab import *

# make a square figure and axes
figure(1, figsize=(6,6))
ax = axes([0.1, 0.1, 0.8, 0.8])

labels = 'Frogs', 'Hogs', 'Dogs', 'Logs'
fracs = [15,30,45, 10]

explode=(0, 0.05, 0, 0)
pie(fracs, explode=explode, labels=labels, autopct='%1.1f%%', shadow=True)
title('Raining Hogs and Dogs', bbox={'facecolor':'0.8', 'pad':5})

show()
