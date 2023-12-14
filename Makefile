init:
	python -m pip install -r requirements-dev.txt

test:
	# This runs all of the tests on all supported Python versions.
	tox -p

publish:
	python3 -m build
	python3 -m twine upload --repository testpypi dist/*