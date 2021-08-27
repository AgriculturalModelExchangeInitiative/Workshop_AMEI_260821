from datetime import datetime
from math import *
from melting import model_melting
from refreezing import model_refreezing
from snowaccumulation import model_snowaccumulation
from snowdensity import model_snowdensity
from snowdepth import model_snowdepth
from snowdepthtrans import model_snowdepthtrans
from snowdry import model_snowdry
from snowmelt import model_snowmelt
from snowwet import model_snowwet
from tavg import model_tavg
from tempmax import model_tempmax
from tempmin import model_tempmin
from preciprec import model_preciprec
def model_snow(int jul=0,
      float tmaxseuil=0.0,
      float tminseuil=0.0,
      float prof=0.0,
      float tmin=0.0,
      float tmax=0.0,
      float precip=0.0,
      float Sdry_t1=0.0,
      float E=0.0,
      float rho=100.0,
      float Sdepth_t1=0.0,
      float Pns=100.0,
      float Swet_t1=0.0,
      float Kmin=0.0,
      float Tmf=0.0,
      float SWrf=0.0,
      float tsmax=0.0,
      float DKmax=0.0,
      float trmax=0.0,
      float ps_t1=0.0):
    cdef float tavg
    cdef float M
    cdef float Mrf
    cdef float Snowaccu
    cdef float ps
    cdef float Snowmelt
    cdef float Sdepth
    cdef float Sdepth_cm
    cdef float Sdry
    cdef float Swet
    cdef float tmaxrec
    cdef float tminrec
    cdef float preciprec
    Snowaccu = model_snowaccumulation( tsmax,tmax,trmax,precip)
    ps = model_snowdensity( ps_t1,Sdepth_t1,Sdry_t1,Swet_t1)
    tavg = model_tavg( tmin,tmax)
    Snowmelt = model_snowmelt( ps,M)
    M = model_melting( jul,Tmf,DKmax,Kmin,tavg)
    Mrf = model_refreezing( tavg,Tmf,SWrf)
    Sdepth = model_snowdepth( Snowmelt,Sdepth_t1,Snowaccu,E,rho)
    Sdry = model_snowdry( Sdry_t1,Snowaccu,Mrf,M)
    Sdepth_cm = model_snowdepthtrans( Sdepth,Pns)
    Swet = model_snowwet( Swet_t1,precip,Snowaccu,Mrf,M,Sdry)
    tminrec = model_tempmin( Sdepth_cm,prof,tmin,tminseuil,tmaxseuil)
    tmaxrec = model_tempmax( Sdepth_cm,prof,tmax,tminseuil,tmaxseuil)
    preciprec = model_preciprec( Sdry_t1,Sdry,Swet,Swet_t1,Sdepth_t1,Sdepth,Mrf,precip,Snowaccu,rho)
    return tmaxrec, ps, Mrf, tavg, Swet, Snowmelt, Snowaccu, Sdry, Sdepth, tminrec, M, preciprec, Sdepth_cm

def init_snow(int jul=0,
                float tmaxseuil=0.0,
                float tminseuil=0.0,
                float prof=0.0,
                float tmin=0.0,
                float tmax=0.0,
                float precip=0.0,
                float E=0.0,
                float rho=100.0,
                float Pns=100.0,
                float Kmin=0.0,
                float Tmf=0.0,
                float SWrf=0.0,
                float tsmax=0.0,
                float DKmax=0.0,
                float trmax=0.0):

    cdef float tmaxrec = 0.0
    cdef float ps = 0.0
    cdef float Mrf = 0.0
    cdef float tavg = 0.0
    cdef float Swet = 0.0
    cdef float Snowmelt = 0.0
    cdef float Snowaccu = 0.0
    cdef float Sdry = 0.0
    cdef float Sdepth = 0.0
    cdef float tminrec = 0.0
    cdef float M = 0.0
    cdef float preciprec = 0.0
    cdef float Sdepth_cm = 0.0
    preciprec=precip
    tminrec=tmin
    tmaxrec=tmax
    return  tmaxrec, ps, Mrf, tavg, Swet, Snowmelt, Snowaccu, Sdry, Sdepth, tminrec, M, preciprec, Sdepth_cm
