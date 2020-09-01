all:
	swig -python mfcc.i
	g++ -shared -fPIC mfcc_wrap.c mfcc.cpp -I/home/rdong/.pyenv/versions/3.6.5/include/python3.6m/ \
		-I/home/rdong/.pyenv/versions/3.6.5/lib/python3.6/site-packages/numpy/core/include/ \
		-o _mfcc.so

clean:
	rm -rf *.so __pycache__ mfcc.py mfcc_wrap.c
