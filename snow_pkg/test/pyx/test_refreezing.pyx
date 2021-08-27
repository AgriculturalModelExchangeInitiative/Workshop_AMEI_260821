#'Test generation'

from refreezing import *
from math import *
import numpy 



def test_test_snow1():
    params= refreezing(
    Tmf = 0.5,
    SWrf = 0.01,
    tavg = -0.2,
     )
    Mrf_estimated = round(params, 2)
    Mrf_computed = 0.01
    assert (Mrf_estimated == Mrf_computed)