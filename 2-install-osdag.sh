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
echo -e "\n[wkhtml_path]" >> Osdag.config
echo "path1 = $HOME/miniconda2/bin/wkhtmltopdf" >> Osdag.config
# Create Desktop Launcher
touch Osdag.desktop
echo "[Desktop Entry]">Osdag.desktop
echo "Type=Application">>Osdag.desktop
echo "Name=Osdag">>Osdag.desktop
echo "Terminal=false">>Osdag.desktop
echo "Exec=$HOME/Osdag/osdagMainPage.py">>Osdag.desktop
echo "Path=$HOME/Osdag">>Osdag.desktop
echo "Icon=$HOME/Osdag/Osdag_Icon.ico">>Osdag.desktop
chmod 755 Osdag.desktop
echo -e "#!$HOME/miniconda2/bin/python" | cat - osdagMainPage.py > temp && mv temp osdagMainPage.py
chmod 755 osdagMainPage.py
# Install Osdag
cp -r ../Osdag/. ~/Osdag
#bash Miniconda2-latest-Linux-x86_64.sh -b
cd ../dependencies/
# Basic packages
conda install fontconfig-2.12.1-3.tar.bz2
conda install freetype-2.5.5-2.tar.bz2
conda install libiconv-1.14-0.tar.bz2
conda install libpng-1.6.27-0.tar.bz2
conda install libxml2-2.9.3-1.tar.bz2
conda install pixman-0.34.0-0.tar.bz2
# Anaconda-client required-packages
conda install clyent-1.2.2-py27_0.tar.bz2
conda install python-dateutil-2.6.0-py27_0.tar.bz2
conda install pytz-2017.2-py27_0.tar.bz2
conda install pyyaml-3.12-py27_0.tar.bz2
conda install conda-4.3.14-py27_0.tar.bz2
conda install anaconda-client-1.6.2-py27_0.tar.bz2
# qt required-packages
conda install expat-2.1.0-0.tar.bz2
conda install dbus-1.10.10-0.tar.bz2
conda install pcre-8.39-1.tar.bz2
conda install glib-2.50.2-1.tar.bz2
conda install gstreamer-1.8.0-0.tar.bz2
conda install gst-plugins-base-1.8.0-0.tar.bz2
conda install icu-54.1-0.tar.bz2
conda install jpeg-9b-0.tar.bz2
conda install libgcc-5.2.0-0.tar.bz2
conda install libxcb-1.12-1.tar.bz2
conda install qt-5.6.2-3.tar.bz2
# pythonocc-core required-packages
conda install sip-4.18-py27_0.tar.bz2
conda install tbb-4.3.6-0.tar.bz2
conda install freeimageplus-3.17.0-0.tar.bz2
conda install gl2ps-1.3.8-1.tar.bz2
conda install oce-0.17.2-3.tar.bz2
conda install pyqt-5.6.0-py27_2.tar.bz2
conda install pythonocc-core-0.17-py27_0.tar.bz2
# numpy required-packages
conda install mkl-2017.0.1-0.tar.bz2
conda install numpy-1.12.1-py27_0.tar.bz2
# svgwrite required-packages
conda install pyparsing-2.1.4-py27_0.tar.bz2
conda install svgwrite-1.1.6-py27_0.tar.bz2
# wkhtmltopdf
conda install wkhtmltopdf-0.12.3-0.tar.bz2
# cairosvg requried-packages
conda install cairocffi-0.6-py27_0.tar.bz2
conda install cairosvg-1.0.13-py27_0.tar.bz2
# pdfkit
pip install pdfkit-0.6.1.tar.gz
pwd
set +x
echo "All required packages were installed"
