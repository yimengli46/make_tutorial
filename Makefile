.PHONY: hello
hello:
		@echo "Hello"

MY_NAME ?= ": Tell us your name"
.PHONY: hello-name
hello-name:
	@echo "Hello $(MY_NAME)!"


.PHONY: create-data-folder write-data-in-folder

create-data-folder:
	@echo "Creating data folder (if necessary)."
	@-mkdir data

write-data-in-folder: create-data-folder
	@echo "Writing data inside folder"
	@echo "Some data" >> data/example_data_file.txt



.PHONY: wait-specified-seeds wait-specified-all an-example-dependency

an-example-dependency:
	@echo "Running dependency."

wait-specified-seeds = $(shell for ii in $$(seq 100 120); do echo "wait-specified-$$ii"; done)
$(wait-specified-seeds): an-example-dependency
	@echo "Seed: $(shell echo '$@' | grep -Eo '[0-9]+'). Waiting ..."
	@sleep $(shell echo '$@' | grep -Eo '[0-9]+' | awk '{print $$0%3 + 1}')
	@echo "...Done"

wait-specified-all: $(wait-specified-seeds)
