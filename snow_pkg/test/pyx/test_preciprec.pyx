#'Test generation'

from preciprec import *
from math import *
import numpy 



def test_test_snow1():
    params= preciprec(
    rho = 100.0,
    Sdepth = 0.087,
    Sdepth_t1 = 0.085,
    Mrf = 0.27,
    Snowaccu = 0.23,
    precip = 5.2,
    Sdry_t1 = 10.0,
    Sdry = 10.0,
    Swet = 0.03,
    Swet_t1 = 5.0,
     )
    preciprec_estimated = round(params, 2)
    preciprec_computed = 4.5
    assert (preciprec_estimated == preciprec_computed)