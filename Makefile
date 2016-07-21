COMMIT="增加了makefile, 完善了README.md..."

KERNEL_3_DIR=mykernel-3.9.4

KERNEL_4_DIR=mykernel-4.1.0

.PNONY	:	github	run3	run4

all:github

GITHUB_COMMIT=$(COMMIT)


github	:
	git add -A
	git commit -m $(GITHUB_COMMIT)
	git push origin master


run3	:
	cd	$(KERNEL_3_DIR)
	make run

run4	:
	cd	$(KERNEL_3_DIR)
	make run