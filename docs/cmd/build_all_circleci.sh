# build the console app on CircleCI
rm -rf _* **/_* *_
cmake -GNinja -H. -B_build
cmake -DCMAKE_BUILD_TYPE=Release -DGITHUB_TOKEN=${auth_token} _build
ninja -C _build
./_bin/main_145
ninja -C _build/ get_linuxdeploy
ninja -C _build install_app
ninja -C _build package
./_app/main_145-0.145.4-x86_64.AppImage
ninja -C _build get_ghr
ninja -C _build github_release