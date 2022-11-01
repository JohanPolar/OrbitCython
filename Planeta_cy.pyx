#cython: language_level=3
cimport cython

'''
    Se instancia como función externa,
    Se prepara para multihilo
'''

cdef extern from "math.h":
    float sqrt(float x) nogil

cdef class Planet(object):
#Variables publicas : declaración
    cdef public float x,y,z,vx,vy,vz,m
    def __init__(self):
        #Posicion y velocidad (3D)
        self.x = 1.0
        self.y = 0.0
        self.z = 0.0
        self.vx = 0.0
        self.vy = 0.5
        self.vz = 0.0

        #Masa
        self.m = 1.0

"""
    Puede ser la distancia 0?
    No, Preparamos una alerta basada en Cython: cdivión (True/False)
"""

@cython.cdivision(True)
cdef void single_step(Planet planet, double dt) nogil:
    '''Dar un paso'''

    #Calcular fuerza: gravedad al origen
    cdef double distance = sqrt(planet.x**2 + planet.y**2 + planet.z**2)
    cdef double Fx = -planet.x / distance**3
    cdef double Fy = -planet.y / distance**3
    cdef double Fz = -planet.z / distance**3

    #Posicion a partir de la velocidad y el tiempo
    planet.x += dt * planet.vx
    planet.y += dt * planet.vy
    planet.z += dt * planet.vz

    #Velocidad a partir de fuerza y masa
    planet.vx += dt * Fx / planet.m
    planet.vy += dt * Fy / planet.m
    planet.vz += dt * Fz / planet.m
 
def step_time(Planet planet, double time_span, int n_steps):
    '''Dar n cantidad de pasos'''
    cdef double dt = time_span / n_steps
    cdef int j
    """
    Se prepara para paralelismo
    """

    with nogil:
        for j in range(n_steps):
            single_step(planet, dt)