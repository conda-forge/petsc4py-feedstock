set -ex
cd test
which -a python3
echo "PYTHON=${PYTHON:-}"
file $PREFIX/bin/python3
python3 -m unittest -v
mpiexec -n 2 python3 -m unittest -v
