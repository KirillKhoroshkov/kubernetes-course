1. `kubectl apply -f nginx-deployment.yaml` - Запуск деплоймента nginx
1. `kubectl apply -f nginx-service.yaml` - Создание сервиса
1. `kubectl apply -f curl-deployment.yaml` - Запуск деплоймента curl
1. `kubectl exec -it <имя пода curl> -- wget -qO- http://nginx-service:9090` - Запрос из curl
1. `kubectl get endpoints nginx-service` - Проверка эндпоинтов сервиса
