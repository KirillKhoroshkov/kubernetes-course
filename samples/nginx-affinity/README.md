1. `kubectl apply -f nginx-deployment.yaml` - Запуск деплоймента nginx
1. `kubectl get pods -l app=app-spread -o wide` - Проверка распределения по нодам (все на разных)
