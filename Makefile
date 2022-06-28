install:
	$(call install-reqs, requirements.txt)

install-gcp:
	$(call install-reqs, requirements-gcp.txt)

install-aws:
	$(call install-reqs, requirements-aws.txt)

install-amazon-linux:
	$(call install-reqs, amazon-linux.txt)

lint:
	pylint --disable=R,C hello.py

format:
	black *.py

test:
	python -m pytest -vv --cov=hello test_hello.py

install-reqs = pip install --upgrade pip && pip install -r $(1)