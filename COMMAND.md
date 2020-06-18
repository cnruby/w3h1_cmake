## The Project's Commands



### Formatting The Codes
```bash
ruby format-codes.rb
```



### Get The Code with Shell Commands
```bash
git clone https://github.com/cnruby/w3h1_cmake.git basic_143
cd basic_143
git checkout basic_143
code .
```



### Others 
```bash
exa -T > docs/output/tree.txt
md-inc README.md
ruby format-codes.rb
git branch -vv
git checkout -b basic_143
git push --set-upstream origin basic_143
# add ...
git push
dot -V
doxygen --version
```



## basic_143
<!--{ "./docs/cmd/upload_release.sh" | code: bash }-->
```bash
# upload the release to Github Assets
rm -rf _* **/_* *_
# https://github.com/settings/tokens
git config --global github.token "YOUR_GITHUB_TOKEN"
cmake -GNinja -H. -B_build -DCMAKE_BUILD_TYPE=Release
ninja -C _build/
ninja -C _build zip_app
ninja -C _build get_ghr
ninja -C _build github_release
```
<!--{ end }-->