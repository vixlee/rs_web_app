.PHONY: env check unit_test test install run clean

env:
	virtualenv env -p /usr/bin/python3
	env/bin/python env/bin/pip install -r web_app/requirements.txt -I

install: env
	env/bin/python setup.py install

run: install
	env/bin/user_api

clean: 
	$(RM) -r .vscode
	$(RM) -r env
	$(RM) -r */migrations
	$(RM) -r */__pycache__