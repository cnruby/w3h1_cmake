# package the console app as AppImage with target `install_app`
rm -rf _* **/_* *_
cmake -GNinja -H. -B_build
cmake -DCMAKE_BUILD_TYPE=Release _build
ninja -C _build/ get_linuxdeploy
ninja -C _build/
ninja -C _build install_app
ninja -C _build package
./_app/main_143-0.1.0-x86_64.AppImage