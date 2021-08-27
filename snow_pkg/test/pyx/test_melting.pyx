#'Test generation'

from melting import *
from math import *
import numpy 



def test_test_snow1():
    params= melting(
    Tmf = 0.5,
    DKmax = 1.5,
    Kmin = 2.0,
    tavg = 1.5,
    jul = 1,
     )
    M_estimated = round(params, 2)
    M_computed = 2.02
    assert (M_estimated == M_computed)