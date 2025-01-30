.PHONY: all
all: unpack

.PHONY: clean
clean:
	rm -rf ./nvim-linux-x86_64.tar.gz

.PHONY: unpack
unpack: download
	tar -zxvf nvim-linux-x86_64.tar.gz
	mkdir -p opt
	rm -rf opt/io.neovim.neovim
	mv nvim-linux-x86_64 opt/io.neovim.neovim

.PHONY: download
download: nvim-linux-x86_64.tar.gz

nvim-linux-x86_64.tar.gz:
	wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz

.PHONY: install
install:
	find etc opt -type f -perm 0755 \
		-exec install {} -m 0755 -D ${DESTDIR}/{} \;
	find etc opt -type f -perm 0644 \
		-exec install {} -m 0644 -D ${DESTDIR}/{} \;
