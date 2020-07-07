#! /bin/sh
set -x
pwd
cd Osdag
#Create Osdag.config
touch Osdag.config
echo "[default_workspace]" > Osdag.config
echo "path1 = $HOME/Osdag_workspace/" >> Osdag.config
echo -e "\n[installation_dir]" >> Osdag.config
echo "path1 = $HOME/Osdag/" >> Osdag.config
# Create Desktop Launcher
touch Osdag.desktop
echo "[Desktop Entry]">Osdag.desktop
echo "Type=Application">>Osdag.desktop
echo "Name=Osdag">>Osdag.desktop
echo "Terminal=false">>Osdag.desktop
echo "Exec=$HOME/Osdag/osdagMainPage.py">>Osdag.desktop
echo "Path=$HOME/Osdag">>Osdag.desktop
echo "Icon=$HOME/Osdag/Osdag_Icon.ico">>Osdag.desktop
chmod 755  Osdag.desktop
echo -e "#!$HOME/miniconda3/bin/python3" | cat - osdagMainPage.py > temp && mv temp osdagMainPage.py
chmod 755  osdagMainPage.py
# Install Osdag
cp -r ../Osdag/. ~/Osdag
#bash Miniconda3-latest-Linux-x86_64.sh -b
cd ../dependencies/
conda install blas-1.0-mkl.tar.bz2
conda install certifi-2020.4.5.1-py37_0.tar.bz2
conda install conda-4.8.3-py37_0.tar.bz2
conda install intel-openmp-2020.0-166.tar.bz2
conda install libgfortran-ng-7.3.0-hdf63c60_0.tar.bz2
conda install mkl-2020.0-166.tar.bz2
conda install mkl_fft-1.0.15-py37ha843d7b_0.tar.bz2
conda install mkl_random-1.1.0-py37hd6b4f25_0.tar.bz2
conda install mkl-service-2.3.0-py37he904b0f_0.tar.bz2
conda install numpy-1.18.1-py37h94c655d_0.tar.bz2
conda install numpy-base-1.18.1-py37h2f8d375_1.tar.bz2
conda install openssl-1.1.1g-h7b6447c_0.tar.bz2
#2nd
conda install cairo-1.16.0-hcf35c78_1003.tar.bz2
conda install cairocffi-1.1.0-py_0.tar.bz2
conda install cairosvg-2.4.2-py_0.tar.bz2
conda install click-7.1.2-pyh9f0ad1d_0.tar.bz2
conda install cssselect2-0.2.1-pyh9f0ad1d_1.tar.bz2
conda install defusedxml-0.6.0-py_0.tar.bz2
conda install fontconfig-2.13.1-h86ecdb6_1001.tar.bz2
conda install freeimageplus-3.18.0-hf484d3e_2.tar.bz2
conda install freetype-2.10.1-he06d7ca_0.tar.bz2
conda install gettext-0.19.8.1-hc5be6a0_1002.tar.bz2
conda install gl2ps-1.3.8-h14c3975_4.tar.bz2
conda install glib-2.64.2-h6f030ca_0.tar.bz2
conda install icu-64.2-he1b5a44_1.tar.bz2
conda install jpeg-9c-h14c3975_1001.tar.bz2
conda install libblas-3.8.0-14_openblas.tar.bz2
conda install libcblas-3.8.0-14_openblas.tar.bz2
conda install libgfortran-ng-7.3.0-hdf63c60_5.tar.bz2
conda install libiconv-1.15-h516909a_1006.tar.bz2
conda install liblapack-3.8.0-14_openblas.tar.bz2
conda install libopenblas-0.3.7-h5ec1e0e_6.tar.bz2
conda install libpng-1.6.37-hed695b0_1.tar.bz2
conda install libtiff-4.1.0-hc7e4089_6.tar.bz2
conda install libuuid-2.32.1-h14c3975_1000.tar.bz2
conda install libwebp-base-1.1.0-h516909a_3.tar.bz2
conda install libxcb-1.13-h14c3975_1002.tar.bz2
conda install libxml2-2.9.10-hee79883_0.tar.bz2
conda install lz4-c-1.8.3-he1b5a44_1001.tar.bz2
conda install olefile-0.46-py_0.tar.bz2
conda install pcre-8.44-he1b5a44_0.tar.bz2
conda install pillow-7.1.2-py37hb39fc2d_0.tar.bz2
conda install pixman-0.38.0-h516909a_1003.tar.bz2
conda install pthread-stubs-0.4-h14c3975_1001.tar.bz2
conda install pyparsing-2.4.7-pyh9f0ad1d_0.tar.bz2
conda install python_abi-3.7-1_cp37m.tar.bz2
conda install svgwrite-1.4-py_2.tar.bz2
conda install tinycss2-1.0.2-py_1.tar.bz2
conda install webencodings-0.5.1-py_1.tar.bz2
conda install xorg-kbproto-1.0.7-h14c3975_1002.tar.bz2
conda install xorg-libice-1.0.10-h516909a_0.tar.bz2
conda install xorg-libsm-1.2.3-h84519dc_1000.tar.bz2
conda install xorg-libx11-1.6.9-h516909a_0.tar.bz2
conda install xorg-libxau-1.0.9-h14c3975_0.tar.bz2
conda install xorg-libxdmcp-1.1.3-h516909a_0.tar.bz2
conda install xorg-libxext-1.3.4-h516909a_0.tar.bz2
conda install xorg-libxrender-0.9.10-h516909a_1002.tar.bz2
conda install xorg-renderproto-0.11.1-h14c3975_1002.tar.bz2
conda install xorg-xextproto-7.3.0-h14c3975_1002.tar.bz2
conda install xorg-xproto-7.0.31-h14c3975_1007.tar.bz2
conda install zstd-1.4.4-h3b9ef0a_2.tar.bz2
#3rd
pip install pdflatex-0.1.3.tar.gz
pip install PyLaTeX-1.3.1.tar.gz
pip install XlsxWriter-1.2.8.tar.gz
pip install Pygments-2.6.1.tar.gz
pip install openpyxl-3.0.3.tar.gz
pip install PyYAML-5.3.1.tar.gz
pip install PyQt5-5.14.2-5.14.2-cp35.cp36.cp37.cp38-abi3-manylinux2014_x86_64.whl
pip install pdfkit-0.6.1-py3-none-any.whl
#OCC
conda install oce-0.18.3-3.tar.bz2
conda install pythonocc-core-0.18.2-py37_283.tar.bz2
conda install smesh-6.7.6-7.tar.bz2
conda install tbb-2019.9-hc9558a2_0.tar.bz2
pwd
set +x
echo "All required packages were installed"

