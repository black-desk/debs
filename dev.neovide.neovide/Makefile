.PHONY: all
all: unpack

.PHONY: clean
clean:
	rm -rf ./neovide
	rm -rf ./neovide-linux-x86_64.tar.gz

.PHONY: unpack
unpack: download
	tar -zxvf ./neovide-linux-x86_64.tar.gz
	rm -rf opt/dev.neovide.neovide
	mkdir -p opt/dev.neovide.neovide/bin
	mv neovide opt/dev.neovide.neovide/bin

.PHONY: download
download: neovide-linux-x86_64.tar.gz

neovide-linux-x86_64.tar.gz:
	wget https://github.com/neovide/neovide/releases/latest/download/neovide-linux-x86_64.tar.gz


.PHONY: install
install:
	find etc opt -type f -perm 0755 \
		-exec install {} -m 0755 -D ${DESTDIR}/{} \;
	find etc opt -type f -perm 0644 \
		-exec install {} -m 0644 -D ${DESTDIR}/{} \;
