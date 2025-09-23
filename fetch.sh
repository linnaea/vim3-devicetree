git checkout upstream
for f in *.{dts,dtsi}; do wget -O $f https://github.com/torvalds/linux/raw/refs/heads/master/arch/arm64/boot/dts/amlogic/$f; done
find dt-bindings/ -type f | while read f; do wget -O $f https://github.com/torvalds/linux/raw/refs/heads/master/include/$f; done
rm -f *.dtsc *.dtb
git commit -a -m 'Update from upstream'
git checkout master
git rebase upstream
