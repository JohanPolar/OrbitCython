all:
	python3 setup.py build_ext --inplace
clean:
	rm -rf build __pychache__ *.so *.pyc *.c *.csv