.PHONY: ansible

ansible: .last-ansible-build

.last-ansible-build: Dockerfile.ansible script/lib/vars script/lib/funcs
	docker build --build-arg workdir=${container_workdir_abspath} --build-arg user=${container_user} -t ${ansible_image_name} ${projectrootdir_abspath} -f Dockerfile.ansible
	@touch ${projectrootdir_abspath}/.last-ansible-build
