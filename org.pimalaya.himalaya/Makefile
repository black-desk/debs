.PHONY: all
all: unpack

.PHONY: clean
clean:
	rm -rf ./nvim-linux64.tar.gz

.PHONY: unpack
unpack: download
	tar -zxvf himalaya.x86_64-linux.tgz
	mkdir -p opt
	rm -rf opt/org.pimalaya.himalaya
	mkdir -p opt/org.pimalaya.himalaya/bin
	mv himalaya opt/org.pimalaya.himalaya/bin
	mv man opt/org.pimalaya.himalaya/man
	mv completions opt/org.pimalaya.himalaya/completions

.PHONY: download
download: himalaya.x86_64-linux.tgz

himalaya.x86_64-linux.tgz:
	wget https://github.com/soywod/himalaya/releases/download/v1.0.0-beta.4/himalaya.x86_64-linux.tgz

.PHONY: install
install:
	find etc opt -type f -perm 0755 \
		-exec install {} -m 0755 -D ${DESTDIR}/{} \;
	find etc opt -type f -perm 0644 \
		-exec install {} -m 0644 -D ${DESTDIR}/{} \;
