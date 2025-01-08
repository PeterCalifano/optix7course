Buildpath=build_dev
BuildRoot=.

cd ${BuildRoot} 
    
#if  [ -d $Buildpath ]; then
#    sudo rm -r ${Buildpath}
#fi

cmake -B ${Buildpath} -S . -DCMAKE_BUILD_TYPE=Debug -DENABLE_CUDA=true -DENABLE_OPTIX=true -DENABLE_OPENMP=false -DCMAKE_CXX_FLAGS="-g -O0 -Wall -Wextra"
make -C ${Buildpath} -j4