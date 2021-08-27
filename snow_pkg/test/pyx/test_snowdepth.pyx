#'Test generation'

from snowdepth import *
from math import *
import numpy 



def test_test_snow1():
    params= snowdepth(
    E = 0.02,
    rho = 100.0,
    Snowaccu = 5,
    Sdepth_t1 = 0.05,
    Snowmelt = 0.012,
     )
    Sdepth_estimated = round(params, 2)
    Sdepth_computed = 0.09
    assert (Sdepth_estimated == Sdepth_computed)