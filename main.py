import Planeta_cy
import Planeta_py
import time

steps=2000000
time_frame = 400

formato_datos = "{:.5f}, {:.5f}\n"
planet_py = Planeta_py.Planet()
planet_py.x = 100*10**3
planet_py.y = 300*10**3
planet_py.z = 700*10**3
planet_py.vx = 2.00*10**3
planet_py.vy = 29.87*10**3
planet_py.vz = 0.034*10**3

planet_cy = Planeta_cy.Planet()
planet_cy.x = 100*10**3
planet_cy.y = 300*10**3
planet_cy.z = 700*10**3
planet_cy.vx = 2.00*10**3
planet_cy.vy = 29.87*10**3
planet_cy.vz = 0.034*10**3

for i in range(10):

    init_time=time.time()
    Planeta_py.step_time(planet_py, time_frame, steps)
    end_time=time.time()

    time_python = end_time - init_time

    init_time=time.time()
    Planeta_cy.step_time(planet_cy, time_frame, steps)
    end_time=time.time()

    time_cython = end_time - init_time

    with open("planeta.csv", "a") as archivo:
        archivo.write(formato_datos.format(time_python, time_cython))
    print("Con Python: {}s\nCon cython: {}s".format(time_python, time_cython))
    print("Cython es: {} veces mejor que Python".format(time_python/time_cython))