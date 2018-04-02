root := "../../../../"

$(root)/build/node.seccomp:
	make -C $(root) build/node.seccomp

$(root)/build/ukvm-bin:
	make -C $(root) build/ukvm-bin

$(root)/build/prep.py:
	make -C $(root) build/prep.py

node.seccomp: $(root)/build/node.seccomp
	install $(root)/build/node.seccomp .

ukvm-bin: $(root)/build/ukvm-bin
	install $(root)/build/ukvm-bin .

prep.py: $(root)/build/prep.py
	install $(root)/build/prep.py .

.PHONY: run_proc_flat_from_directory
run_proc_flat_from_directory: node_modules prep.py node.seccomp ukvm-bin
	 python prep.py --volume ../nodejsRump:/whisk node.seccomp /whisk/app.js
