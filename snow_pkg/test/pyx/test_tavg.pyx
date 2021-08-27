#'Test generation'

from tavg import *
from math import *
import numpy 



def test_test_snow1():
    params= tavg(
    tmin = 0.5,
    tmax = 2,
     )
    tavg_estimated = round(params, 2)
    tavg_computed = 1.25
    assert (tavg_estimated == tavg_computed)