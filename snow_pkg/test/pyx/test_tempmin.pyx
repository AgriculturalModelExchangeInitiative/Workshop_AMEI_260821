#'Test generation'

from tempmin import *
from math import *
import numpy 



def test_test_snow1():
    params= tempmin(
    prof = 10.0,
    tminseuil = -0.5,
    tmaxseuil = 0.0,
    Sdepth_cm = 5.2,
    tmin = -0.05,
     )
    tminrec_estimated = round(params, 2)
    tminrec_computed = -0.28
    assert (tminrec_estimated == tminrec_computed)