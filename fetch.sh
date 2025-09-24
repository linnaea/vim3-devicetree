git checkout upstream
for f in *.{dts,dtsi}; do wget -O $f "https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git/plain/arch/arm64/boot/dts/amlogic/$f?h=for-next"; done
find dt-bindings/ -type f | while read f; do wget -O $f "https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git/plain/include/$f?h=for-next"; done
rm -f *.dtsc *.dtb
git commit -a -m 'Update from upstream'
git checkout master
git rebase upstream
