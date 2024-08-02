.PHONY: all
all: unpack

.PHONY: clean
clean:
	rm -rf ./neovide
	rm -rf ./neovide-linux-x86_64.tar.gz

.PHONY: unpack
unpack: download
	tar -zxvf ./neovide-linux-x86_64.tar.gz
	rm -rf opt/dev.neovide.Neovide/bin
	mkdir -p opt/dev.neovide.Neovide/bin
	mv neovide opt/dev.neovide.Neovide/bin

.PHONY: download
download: neovide-linux-x86_64.tar.gz

neovide-linux-x86_64.tar.gz:
	wget https://github.com/neovide/neovide/releases/latest/download/neovide-linux-x86_64.tar.gz

.PHONY: install
install:
	cp -a opt/ ${DESTDIR}/
	find etc -type f -exec install {} -m 0644 -D ${DESTDIR}/{} \;
