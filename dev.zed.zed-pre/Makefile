.PHONY: all
all: unpack

.PHONY: clean
clean:
	rm -rf ./zed-linux-x86_64.tar.gz

.PHONY: unpack
unpack: download
	tar -zxvf zed-linux-x86_64.tar.gz
	mkdir -p opt
	rm -rf opt/dev.zed.Zed-pre
	mv zed-preview.app opt/dev.zed.Zed-pre
	sed -i '/\[Desktop Entry\]/a StartupWMClass=dev.zed.Zed-Preview' opt/dev.zed.Zed-pre/share/applications/zed-preview.desktop
	sed -i '/StartupNotify=true/d' opt/dev.zed.Zed-pre/share/applications/zed-preview.desktop
	mv opt/dev.zed.Zed-pre/share/applications/zed-preview.desktop opt/dev.zed.Zed-pre/share/applications/dev.zed.Zed.desktop

.PHONY: download
download: zed-linux-x86_64.tar.gz

TAG=$(shell curl -s https://api.github.com/repos/zed-industries/zed/releases | jq -r 'map(select(.prerelease)) | .[0].tag_name')

zed-linux-x86_64.tar.gz:
	wget https://github.com/zed-industries/zed/releases/download/${TAG}/zed-linux-x86_64.tar.gz

.PHONY: install
install:
	cp -a opt/ ${DESTDIR}/
	find etc -type f -exec install {} -m 0644 -D ${DESTDIR}/{} \;
