cmd_/home/hl/android/mokee/out/target/product/ef52l/obj/KERNEL_OBJ/usr/include/video/.install := perl /home/hl/android/A870k/kernel_lp/scripts/headers_install.pl /home/hl/android/A870k/kernel_lp/include/video /home/hl/android/mokee/out/target/product/ef52l/obj/KERNEL_OBJ/usr/include/video arm edid.h msm_hdmi_modes.h sisfb.h uvesafb.h; perl /home/hl/android/A870k/kernel_lp/scripts/headers_install.pl /home/hl/android/mokee/out/target/product/ef52l/obj/KERNEL_OBJ/include/video /home/hl/android/mokee/out/target/product/ef52l/obj/KERNEL_OBJ/usr/include/video arm ; perl /home/hl/android/A870k/kernel_lp/scripts/headers_install.pl /home/hl/android/mokee/out/target/product/ef52l/obj/KERNEL_OBJ/include/generated/video /home/hl/android/mokee/out/target/product/ef52l/obj/KERNEL_OBJ/usr/include/video arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/hl/android/mokee/out/target/product/ef52l/obj/KERNEL_OBJ/usr/include/video/$$F; done; touch /home/hl/android/mokee/out/target/product/ef52l/obj/KERNEL_OBJ/usr/include/video/.install
