#'Test generation'

from snowaccumulation import *
from math import *
import numpy 



def test_test_snow1():
    params= snowaccumulation(
    trmax = 1.0,
    tsmax = -2.0,
    tmax = -1.0,
    precip = 0.5,
     )
    Snowaccu_estimated = round(params, 2)
    Snowaccu_computed = 0.33
    assert (Snowaccu_estimated == Snowaccu_computed)