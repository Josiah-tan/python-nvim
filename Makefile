.PHONY: docs publish

docs: README.org
	pandoc -s README.org -o README.md -t gfm

publish: setup.cfg
	python3 setup.py sdist bdist_wheel
	twine upload dist/*
