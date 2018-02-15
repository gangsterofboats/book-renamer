#!/usr/bin/python
import os

for drct in os.listdir('.'):
    for f in os.listdir(drct):
        nname = drct + ' - ' + f
        fnp = os.path.realpath(nname)
        fop = os.path.realpath(drct + '/' + f)
        os.rename(fop, fnp)
