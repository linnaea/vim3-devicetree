cpp -x assembler-with-cpp -undef -D__DTS__ -nostdinc -I. -P meson-g12b-a311d-khadas-vim3.dts | dtc -@ -I dts -O dtb -o /boot/efi/DTB/AMLOGIC/meson-g12b-a311d-khadas-vim3.dtb
