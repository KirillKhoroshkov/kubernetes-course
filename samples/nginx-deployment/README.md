#### Rollouts

1. `kubectl apply -f configmap-nginx.yaml` - Создание configmap
1. `kubectl apply -f deployment-nginx.yaml` - Запуск деплоймента
1. `kubectl expose deployment nginx-deployment` - Создание Service для указанного Deployment
1. `kubectl get po` - Проверка статусов подов
1. `kubectl port-forward service/nginx-deployment 9090:80` - Проброс порта для проверки
1. `kubectl rollout history deployment nginx-deployment` - Просмотр текущей истории Deployment
1. `kubectl get pods -w` - Наблюдение за подами в реальном времени (в отдельном терминале)
1. `kubectl patch deployment nginx-deployment --patch-file patch-nginx-image-version.yaml` - Применение патча
1. `kubectl rollout history deployment nginx-deployment` - Проверка истории ревизий
1. Добавление аннотации:
   <pre>
   kubectl annotate deployment nginx-deployment \
   kubernetes.io/change-cause="change image nginx:latest -> nginx:1.29.4"
   </pre>
1. `kubectl rollout history deployment nginx-deployment` - Проверка результата
1. `kubectl get pods` - Проверка итогового состояния
1. `kubectl rollout history deployment nginx-deployment --revision 1` - Проверка первой ревизии
1. `kubectl rollout undo deployment nginx-deployment --to-revision=1` - Откат
1. `kubectl get pods` - Проверка состояния подов

#### Probes

1. `kubectl patch deployments.apps nginx-deployment --patch-file patch-nginx-probe.yaml` - Применить патч с хэлзчеками
1. `kubectl describe pod <имя_актуального_pod>` - Проверка хэлзчеков у одной из под
1. `kubectl patch deployment nginx-deployment --patch-file patch-nginx-broken-probe.yaml` - Применение патча
1. `kubectl describe pod <имя_актуального_pod>` - Проверка хэлзчеков у одной из под
1. `kubectl describe endpointslices.discovery.k8s.io nginx-deployment` - Проверка EndpointSlice
1. `kubectl get po` - Проверка статусов подов
1. `kubectl patch deployment nginx-deployment --patch-file patch-nginx-broken-probe.yaml` - Применение старого патча

#### Jobs

1. `kubectl apply -f nginx-check-cron.yaml` - Запустить CronJob
1. `kubectl get jobs --watch` - Проверка исполнения
