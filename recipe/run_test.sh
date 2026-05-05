set -ex
cd test
which -a python3
env | sort
echo "PATH=$PATH"
ls -la $PREFIX/bin
echo "CONDA_PREFIX=${CONDA_PREFIX:-unset}"
echo "PREFIX=$(echo ${PREFIX:-} | sed s@/@.@g)"
ls -la $PREFIX/bin
echo "PYTHON=${PYTHON:-}"
file $CONDA_PREFIX/bin/python3
python3 -m unittest -v
mpiexec -n 2 python3 -m unittest -v
