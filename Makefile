all: testall

osx_install_py3:
	brew install python3

linux_install_py3:
	sudo apt-get install python3

install_dependencies:
	pip3 install pytest
	pip3 install bottle

setup: osx_install_py3 install_dependencies

run:
	python3 main.py

testall:
	pytest test

clean:
	rm -rf build/ dist/ MANIFEST 2>/dev/null || true
	find . -name '__pycache__' -exec rm -rf {} +
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
	find . -name '._*' -exec rm -f {} +
