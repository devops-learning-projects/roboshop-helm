default:
	git pull
	helm upgrade -i $(component) . -f env-dev/$(component).yaml

all:
	git pull
	helm upgrade -i cart . -f env-dev/cart.yaml
	helm upgrade -i catalogue . -f env-dev/catalogue.yaml
	helm upgrade -i user . -f env-dev/user.yaml
	helm upgrade -i shipping . -f env-dev/shipping.yaml
	helm upgrade -i payment . -f env-dev/payment.yaml
	helm upgrade -i frontend . -f env-dev/frontend.yaml
	sleep 10
	helm ls

uninstall:
	helm uninstall cart
	helm uninstall catalogue
	helm uninstall user
	helm uninstall shipping
	helm uninstall payment
	helm uninstall frontend
