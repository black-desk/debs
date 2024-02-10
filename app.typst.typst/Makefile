.PHONY: all
all: unpack

.PHONY: clean
clean:
	rm -rf ./typst-x86_64-unknown-linux-musl
	rm -rf ./typst-x86_64-unknown-linux-musl.tar.xz

.PHONY: unpack
unpack: download
	tar -xvf ./typst-x86_64-unknown-linux-musl.tar.xz
	rm -rf opt/app.typst.typst
	mkdir -p opt/app.typst.typst/bin
	mv typst-x86_64-unknown-linux-musl/typst opt/app.typst.typst/bin

.PHONY: download
download: typst-x86_64-unknown-linux-musl.tar.xz

typst-x86_64-unknown-linux-musl.tar.xz:
	wget https://github.com/typst/typst/releases/latest/download/typst-x86_64-unknown-linux-musl.tar.xz


.PHONY: install
install:
	find etc opt -type f -perm 0755 \
		-exec install {} -m 0755 -D ${DESTDIR}/{} \;
	find etc opt -type f -perm 0644 \
		-exec install {} -m 0644 -D ${DESTDIR}/{} \;
