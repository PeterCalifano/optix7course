Buildpath=build
BuildRoot=.

cd ${BuildRoot}

if  [ -d $Buildpath ]; then
    cmake -B ${Buildpath} -S . -DCMAKE_BUILD_TYPE=RelWithDebInfo -DENABLE_CUDA=true -DENABLE_OPTIX=true -DENABLE_OPENMP=true -DNUM_OMP_THREADS=12  -DCMAKE_CXX_FLAGS="-O2 -Wall -Wextra"
fi

make -C ${Buildpath} -j4