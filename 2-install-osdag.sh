#! /bin/sh
__osdag_install_path = "$HOME/Osdag/"
rm -rf ~/Osdag
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
echo  "#!$HOME/miniconda3/bin/python3" | cat - osdagMainPage.py > temp && mv temp osdagMainPage.py
chmod 755  osdagMainPage.py
# Install Osdag
cp -r ../Osdag/. ~/Osdag
# NOTE: Optionally change conda env here
#bash Miniconda3-latest-Linux-x86_64.sh -b
conda config --add channels conda-forge dlr-sc
# conda config --set auto_activate_base true
# . ~/.bashrc
# cd ../dependencies/
conda install blas
conda install certifi
# conda install conda-4.8.3-py37_0.tar.bz2
conda install intel-openmp libgfortran-ng mkl mkl_fft mkl_random mkl-service numpy numpy-base openssl
#2nd
conda install cairo cairocffi cairosvg click cssselect
# conda install cssselect2 # might have to choose this
conda install defusedxml fontconfig freeimageplus freetype gettext gl2ps glib icu jpeg libblas libcblas libgfortran-ng libiconv liblapack libopenblas libpng libtiff libuuid libwebp libxcb libxml2 lz4-c olefile pcre pillow pixman pthread-stubs pyparsing python_abi svgwrite tinycss2 webencodings xorg-kbproto xorg-libice xorg-libsm xorg-libx11 xorg-libxau xorg-libxdmcp xorg-libxext xorg-libxrender xorg-renderproto xorg-xextproto xorg-xproto zstd
#3rd
conda install pdflatex PyLaTeX XlsxWriter Pygments openpyxl PyYAML PyQt pdfkit pandas pynput PyGithub
#OCC
conda install occt pythonocc-core smesh tbb
pwd
set +x
echo "All required packages were installed" # TODO: Only show this if all above commands went correctly
