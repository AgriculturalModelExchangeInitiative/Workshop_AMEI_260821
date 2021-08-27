#'Test generation'

from tempmax import *
from math import *
import numpy 



def test_test_snow1():
    params= tempmax(
    prof = 10.0,
    tminseuil = -0.5,
    tmaxseuil = 0.0,
    Sdepth_cm = 2.0,
    tmax = -0.3,
     )
    tmaxrec_estimated = round(params, 2)
    tmaxrec_computed = -0.24
    assert (tmaxrec_estimated == tmaxrec_computed)