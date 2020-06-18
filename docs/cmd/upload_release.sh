# upload the release to Github Assets
rm -rf _* **/_* *_
# https://github.com/settings/tokens
git config --global github.token "YOUR_GITHUB_TOKEN"
cmake -GNinja -H. -B_build -DCMAKE_BUILD_TYPE=Release
ninja -C _build/
ninja -C _build zip_app
ninja -C _build get_ghr
ninja -C _build github_release