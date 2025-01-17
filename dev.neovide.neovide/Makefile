.PHONY: all
all: unpack

.PHONY: clean
clean:
	rm -rf ./neovide
	rm -rf ./neovide-linux-x86_64.tar
	rm -rf ./neovide-linux-x86_64.tar.gz.zip

.PHONY: unpack
unpack: download
	unzip ./neovide-linux-x86_64.tar.gz.zip
	tar -xvf ./neovide-linux-x86_64.tar
	rm -rf opt/dev.neovide.Neovide/bin
	mkdir -p opt/dev.neovide.Neovide/bin
	mv neovide opt/dev.neovide.Neovide/bin

.PHONY: download
download: neovide-linux-x86_64.tar.gz.zip

neovide-linux-x86_64.tar.gz.zip:
	wget https://github.com/neovide/neovide/releases/latest/download/neovide-linux-x86_64.tar.gz.zip

.PHONY: install
install:
	cp -a opt/ ${DESTDIR}/
	find etc -type f -exec install {} -m 0644 -D ${DESTDIR}/{} \;
