.PHONY: all
all: unpack

.PHONY: clean
clean:
	rm -rf ./zed-linux-x86_64.tar.gz

.PHONY: unpack
unpack: download
	tar -zxvf zed-linux-x86_64.tar.gz
	mkdir -p opt
	rm -rf opt/dev.zed.Zed
	mv zed.app opt/dev.zed.Zed
	sed -i '/\[Desktop Entry\]/a StartupWMClass=dev.zed.Zed' opt/dev.zed.Zed/share/applications/zed.desktop
	sed -i '/StartupNotify=true/d' opt/dev.zed.Zed/share/applications/zed.desktop
	sed -i 's/Exec=zed/Exec=\/opt\/dev.zed.Zed\/bin\/zed/' opt/dev.zed.Zed/share/applications/zed.desktop
	mv opt/dev.zed.Zed/share/applications/zed.desktop opt/dev.zed.Zed/share/applications/dev.zed.Zed.desktop

.PHONY: download
download: zed-linux-x86_64.tar.gz

zed-linux-x86_64.tar.gz:
	wget https://github.com/zed-industries/zed/releases/latest/download/zed-linux-x86_64.tar.gz

.PHONY: install
install:
	cp -a opt/ ${DESTDIR}/
	find etc -type f -exec install {} -m 0644 -D ${DESTDIR}/{} \;
