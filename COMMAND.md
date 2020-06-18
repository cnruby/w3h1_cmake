## The Project's Commands



### Formatting The Codes
```bash
ruby format-codes.rb
```



### Get The Code with Shell Commands
```bash
git clone https://github.com/cnruby/w3h1_cmake.git basic_144
cd basic_144
git checkout basic_144
code .
```



### Others 
```bash
exa -T > docs/output/tree.txt
md-inc README.md
md-inc COMMAND.md
ruby format-codes.rb
git branch -vv
git checkout -b basic_144
git push --set-upstream origin basic_144
# add ...
git push
dot -V
doxygen --version
```



## basic_144
<!--{ "./docs/cmd/basic_144.sh" | code: bash }-->
```bash
rm -rf _* **/_* *_
cmake -GNinja -H. -B_build
ninja -C _build/
./_bin/main_144
```
<!--{ end }-->