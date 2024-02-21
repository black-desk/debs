.PHONY: all
all: opt/one.metacubex.clash-meta/bin/clash-meta

.PHONY: clean
clean:
	rm -f mihomo-linux-amd64-compatible-go120-*.gz

opt/one.metacubex.clash-meta/bin/clash-meta: clash-meta-version
	env VERSION=$(shell cat clash-meta-version) OUTPUT=$@ \
		./tools/download-clash-meta.sh

.PHONY: clash-meta-version
clash-meta-version:
	./tools/get-github-release-version.sh MetaCubeX/mihomo clash-meta-version

.PHONY: install
install:
	find etc opt -type f -perm 0755 \
		-exec install {} -m 0755 -D ${DESTDIR}/{} \;
	find etc opt -type f -perm 0644 \
		-exec install {} -m 0644 -D ${DESTDIR}/{} \;
