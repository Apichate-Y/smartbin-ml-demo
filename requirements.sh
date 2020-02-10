# install OpenCV

sudo apt-get -y install libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev
sudo apt-get -y install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get -y install libxvidcore-dev libx264-dev
sudo apt-get -y install qt4-dev-tools libatlas-base-dev
wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py
pip3 install opencv-python==4.1.0

# install tensorflow

version=$(python -c 'import sys; print(".".join(map(str, sys.version_info[:2])))')

if [ $version == "3.7" ]; then
wget https://github.com/lhelontra/tensorflow-on-arm/releases/download/v2.0.0/tensorflow-2.0.0-cp37-none-linux_armv7l.whl
pip3 install tensorflow-2.0.0-cp37-none-linux_armv7l.whl
rm tensorflow-2.0.0-cp37-none-linux_armv7l.whl
fi

if [ $version == "3.5" ]; then
wget https://dl.google.com/coral/python/tflite_runtime-1.14.0-cp35-cp35m-linux_armv7l.whl
pip3 install tflite_runtime-1.14.0-cp35-cp35m-linux_armv7l.whl
rm tflite_runtime-1.14.0-cp35-cp35m-linux_armv7l.whl
fi

# install keras

sudo apt-get install python3-numpy
sudo apt-get install libblas-dev
sudo apt-get install liblapack-dev
sudo apt-get install python3-dev 
sudo apt-get install libatlas-base-dev
sudo apt-get install gfortran
sudo apt-get install python3-setuptools
sudo apt-get install python3-scipy
sudo apt-get update
sudo apt-get install python3-h5py
sudo pip3 install keras 

