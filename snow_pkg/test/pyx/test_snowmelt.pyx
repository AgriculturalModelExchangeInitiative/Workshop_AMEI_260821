#'Test generation'

from snowmelt import *
from math import *
import numpy 



def test_test_snow1():
    params= snowmelt(
    M = 10.0,
    ps = 200.0,
     )
    Snowmelt_estimated = round(params, 2)
    Snowmelt_computed = 0.05
    assert (Snowmelt_estimated == Snowmelt_computed)