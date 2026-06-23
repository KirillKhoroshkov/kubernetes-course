1. `kubectl apply -f nginx-deployment.yaml` - Запуск деплоймента nginx
1. `kubectl apply -f nginx-hpa.yaml` - Создание HorizontalPodAutoscaler
1. `kubectl get hpa app-hpa` - Проверка нагрузки (надо немного переждать <unknown>)
1. `kubectl expose deployment app-hpa --port=80` - Создание сервиса (для нагрузки)
1. `kubectl run load-generator --image=busybox --restart=Never -- /bin/sh -c "while true; do wget -q -O- http://app-hpa > /dev/null 2>&1; done"` -
Запуск нагрузки (и немного ждем)
1. `kubectl get hpa app-hpa -w` - Запуск проверки нагрузки (спустя пару минут количество реплик изменится)
