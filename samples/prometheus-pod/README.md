```
1. kubectl --context kind-kind apply -f prometheus-pod.yaml # Запуск пода
1. kubectl --context kind-kind get pod # Проверка, какие есть поды в созданном кластере
1. kubectl --context kind-kind port-forward prometheus 9090:9090 # Cоздаём временное соединение kubectl
1. kubectl --context kind-kind apply -f prometheus-service.yaml  # Запуск сервис
```
