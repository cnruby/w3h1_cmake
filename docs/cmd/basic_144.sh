rm -rf _* **/_* *_
cmake -GNinja -H. -B_build
ninja -C _build/
./_bin/main_144