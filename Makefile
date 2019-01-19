.PHONY: ansible op

ansible: .last-ansible-build

.last-ansible-build: Dockerfile.ansible script/lib/vars script/lib/funcs script/lib/colors
	docker build --build-arg workdir=${container_workdir_abspath} --build-arg user=${container_user} -t ${ansible_image_name} ${projectrootdir_abspath} -f Dockerfile.ansible
	@touch ${projectrootdir_abspath}/.last-ansible-build


op: .last-op-build

.last-op-build: Dockerfile.op script/lib/op-entrypoint script/lib/vars script/lib/funcs script/lib/colors
	docker build --build-arg workdir=${container_workdir_abspath} --build-arg user=${container_user} -t ${op_image_name} ${projectrootdir_abspath} -f Dockerfile.op
	@touch ${projectrootdir_abspath}/.last-op-build
