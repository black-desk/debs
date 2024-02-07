.PHONY: all
all: unpack

.PHONY: unpack
unpack: download
	tar -zxvf nvim-linux64.tar.gz
	mkdir -p opt
	rm -r opt/io.neovim.neovim-nightly
	cp -r nvim-linux64 opt/io.neovim.neovim-nightly

.PHONY: download
download: nvim-linux64.tar.gz

nvim-linux64.tar.gz:
	wget https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz

.PHONY: install
install:
	find etc opt -type f -perm 0755 \
		-exec install {} -m 0755 -D ${DESTDIR}/{} \;
	find etc opt -type f -perm 0644 \
		-exec install {} -m 0644 -D ${DESTDIR}/{} \;
