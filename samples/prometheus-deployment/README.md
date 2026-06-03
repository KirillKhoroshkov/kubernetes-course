#### Deployment

```
1. kubectl apply -f prometheus-deployment.yaml # Запуск деплоймента
1. kubectl get deployments # Проверка, какие есть деплойменты
1. kubectl get pods # Проверка подов
1. kubectl scale deployment prometheus-deployment --replicas=3 # Увеличиваем количество реплик до трех
1. kubectl get pods -l app=prometheus # Проверяем новое количество
1. kubectl scale deployment prometheus-deployment --replicas=1 # Уменьшаем
1. kubectl get pods -l app=prometheus # Проверяем
```

#### Service

```
1. kubectl apply -f prometheus-service.yaml # Запуск сервиса
1. kubectl get service prometheus-service # Проверяем созданный сервис
1. kubectl port-forward service/prometheus-service 9090:9090 # Временный проброс порта наружу
1. kubectl get endpoints # Проверка списка эндпоинтов через устаревший endpoints
1. kubectl get endpointslice # Проверка списка эндпоинтов через новый endpointslice
```

#### ConfigMap

```
1. kubectl apply -f prometheus-config.yaml # Применить полученный манифест
1. kubectl get configmaps prometheus-config -o yaml # Убедиться, что конфиг имеет ожидаемое содержимое
1. kubectl patch deployments.apps prometheus-deployment --patch-file prometheus-patch-configmap.yaml # Применение патча
```

#### PVC

```
1. kubectl apply -f prometheus-pvc.yaml # Применить манифест для PVC
1. kubectl get pvc # Проверить статус
1. kubectl describe pvc prometheus-pvc # Проверить параметры
1. kubectl patch deployments.apps prometheus-deployment --patch-file prometheus-patch-storage.yaml # Применение патча
```

#### Secret

```
1. kubectl apply -f prometheus-secret.yaml # Применение манифеста с созданием секрета
1. kubectl patch deployments.apps prometheus-deployment --patch-file prometheus-patch-secret.yaml
```
