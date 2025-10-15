default:
	git pull
	helm upgrade -i $(component) . -f env-dev/$(component).yml
