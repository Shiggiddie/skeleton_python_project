ENV = $(CURDIR)/env

virtual-env:
	virtualenv $(ENV)

env: virtual-env
	$(ENV)/bin/pip install -r requirements/base.txt

clean:
	rm -rf $(ENV)
