run_as_seccomp:
	make -C core/nodejsRump run_proc_flat_from_directory

# after you start the container with the above, test it from another console like
# this:
test_run_as_seccomp:
	node core/nodejsRump/test.js
