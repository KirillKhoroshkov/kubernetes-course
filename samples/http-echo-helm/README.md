##### Создание чарта

1. `helm create miniapp-chart` - Создаем чарт
1. `cd miniapp-chart` - Меняем директорию

##### Удаление лишнего

1. `rm templates/deployment.yaml` - Удаляем шаблон по умолчанию
1. `rm templates/service.yaml` - Удаляем шаблон по умолчанию
1. `rm templates/ingress.yaml` - Удаляем шаблон по умолчанию
1. `rm templates/hpa.yaml` - Удаляем шаблон по умолчанию
1. `rm templates/serviceaccount.yaml` - Удаляем шаблон по умолчанию
1. `rm templates/NOTES.txt` - Удаляем шаблон по умолчанию
1. `rm -rf templates/tests` - Удаляем шаблон по умолчанию
1. `rm -rf templates/httproute.yaml` - Удаляем шаблон по умолчанию

#### Тут создаем и добавляем нужные шаблоны и значения

...

##### Проверка

1. `helm template miniapp .` - Проверка создаваемого шаблона

##### Проверка и установка

1. `helm lint .` - Проверяем линтером
1. `helm install miniapp .` - Устанавливаем
1. `kubectl get all` - Проверка созданных ресурсов
1. `kubectl get configmap` - Проверка созданного ConfigMap
1. `kubectl get ingress` - Проверка созданного Ingress

##### Тут проверяем в браузере работу

Вставляем адрес:  
http://std-50-kirillkhoroshkov-yet-another.kubernetes.praktikum-services.tech/
Получаем:  
Hello from Helm

##### Далее меняем сообщение и обновляем

1. `helm upgrade miniapp .`
1. Проверяем в браузере

##### Откат

1. `helm rollback miniapp 1` - Откатываем к первой версии
1. `helm history miniapp` - Проверяем, что появилась новая ревизия
1. Проверяем в браузере

##### Удаление релиза

1. `helm list` - Проверяем список релизов
1. `helm uninstall miniapp` - Удаляем релиз
1. `helm list` - Проверяем список релизов снова (теперь релиза нет)
1. Проверяем в браузере (404)
