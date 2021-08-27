#'Test generation'

from snowdry import *
from math import *
import numpy 



def test_test_snow1():
    params= snowdry(
    M = 5.0,
    Mrf = 3.0,
    Snowaccu = 2.0,
    Sdry_t1 = 10.0,
     )
    Sdry_estimated = round(params, 2)
    Sdry_computed = 10.0
    assert (Sdry_estimated == Sdry_computed)