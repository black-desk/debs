.PHONY: all
all: unpack

.PHONY: clean
clean:
	rm -rf ./zed-linux-x86_64.tar.gz

.PHONY: unpack
unpack: download
	tar -zxvf zed-linux-x86_64.tar.gz
	mkdir -p opt
	rm -rf opt/dev.zed.zed
	mv zed.app opt/dev.zed.zed

.PHONY: download
download: zed-linux-x86_64.tar.gz

zed-linux-x86_64.tar.gz:
	wget https://github.com/zed-industries/zed/releases/latest/download/zed-linux-x86_64.tar.gz

.PHONY: install
install:
	find etc opt -type f -perm 0755 \
		-exec install {} -m 0755 -D ${DESTDIR}/{} \;
	find etc opt -type f -perm 0644 \
		-exec install {} -m 0644 -D ${DESTDIR}/{} \;
