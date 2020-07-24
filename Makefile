build-windows-2k8r2:
	packer build -force windows-2k8r2/2k8r2.json

build-windows-2k12r2:
	packer build -force windows-2k12r2/2k12r2.json

build-windows-2k16:
	packer build -force windows-2k16/2k16.json

build-windows-2k19:
	packer build -force windows-2k19/2k19.json

build-windows-8.1:
	packer build -force windows-8.1/8.1.json

build-windows-10:
	packer build -force windows-10/10.json

build-all:
	packer build -force windows-2k8r2/2k8r2.json
	packer build -force windows-2k12r2/2k12r2.json
	packer build -force windows-2k16/2k16.json
	packer build -force windows-2k19/2k19.json
	packer build -force windows-8.1/8.1.json
	packer build -force windows-10/10.json

clean-box:
	rm -f *.box

clean-builds:
	rm -rf builds

clean-cache:
	rm -rf packer_cache

clean-all:
	rm -rf packer_cache builds *.box
