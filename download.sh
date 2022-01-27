url=https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/plain
tag=v5.15.6
files="
include/linux/mhi.h \
include/linux/wwan.h \
include/uapi/linux/wwan.h
drivers/bus/mhi/Makefile \
drivers/bus/mhi/Kconfig \
drivers/bus/mhi/pci_generic.c \
drivers/bus/mhi/core/Makefile \
drivers/bus/mhi/core/boot.c \
drivers/bus/mhi/core/debugfs.c \
drivers/bus/mhi/core/init.c \
drivers/bus/mhi/core/internal.h \
drivers/bus/mhi/core/main.c \ 
drivers/bus/mhi/core/pm.c \
drivers/net/wwan/Kconfig \
drivers/net/wwan/Makefile \
drivers/net/wwan/mhi_wwan_ctrl.c \
drivers/net/wwan/mhi_wwan_mbim.c \
drivers/net/wwan/wwan_core.c
"

mkdir -p drivers/net/wwan
mkdir -p include/linux
mkdir -p include/uapi/linux
mkdir -p drivers/bus/mhi/core

for f in ${files}
do
   rm -rf ${f}
   wget ${url}/${f}?h=${tag} -O ${f} --no-check-certificate
done
