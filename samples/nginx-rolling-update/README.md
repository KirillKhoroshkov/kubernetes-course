1. `kubectl apply -f nginx-deployment.yaml` - Запуск деплоймента nginx
1. `kubectl get pods -l app=app-rollout` - Проверка, что все поды запущены
1. `kubectl rollout history deployment/app-rollout` - Проверка списка ревизий
1. `kubectl set image deployment/app-rollout app=nginx:1.25` - Обновление образа до новой версии
1. `kubectl rollout status deployment/app-rollout` - Проверка статуса обновления
1. `kubectl get pods -l app=app-rollout -w` - Проверка статусов подов
1. `kubectl rollout history deployment/app-rollout` - Проверка списка ревизий (теперь две)
1. `kubectl set image deployment/app-rollout app=nginx:nonexistent` - Имитация ошибки через несуществующий образ
1. `kubectl get pods -l app=app-rollout` - Проверка статусов подов (некоторые зависли в ImagePullBackOff)
1. `kubectl rollout undo deployment/app-rollout` - Откат обновления
1. `kubectl rollout status deployment/app-rollout` - Проверка статуса
1. `kubectl get pods -l app=app-rollout` - Проверка статусов подов (все Running)
1. `kubectl rollout history deployment/app-rollout` - Проверка списка ревизий (теперь три)
