1. `kubectl apply -f curl-backend-deployment.yaml` - Запуск деплоймента nginx в качестве БД
1. `kubectl apply -f curl-frontend-deployment.yaml` - Запуск деплоймента curl в качестве frontend
1. `kubectl apply -f nginx-bd-deployment.yaml` - Запуск деплоймента curl в качестве backend
1. `kubectl apply -f nginx-db-service.yaml` - Создание сервиса
1. `kubectl exec -it <имя пода curl-backend> -- wget -qO- http://nginx-service:9090` - Запрос из curl
1. `kubectl exec -it <имя пода curl-frontend> -- wget -qO- http://nginx-service:9090` - Запрос из curl
1. `kubectl apply -f nginx-db-network-policy.yaml` - Создание политики
1. `kubectl exec -it <имя пода curl-backend> -- wget -qO- http://nginx-service:9090` - Запрос из curl
1. `kubectl exec -it <имя пода curl-frontend> -- wget -qO- http://nginx-service:9090` - Запрос из curl (таймаут)
