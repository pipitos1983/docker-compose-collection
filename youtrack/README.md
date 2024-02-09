## Запуск

Подготовка каталогов:
```
mkdir -p -m 750 ./youtrack/{data,conf,backups,logs}
sudo chown -R 13001:13001 youtrack
```

Получение токена для инсталляции через веб:
```
docker-compose exec youtrack cat /opt/youtrack/conf/internal/services/configurationWizard/wizard_token.txt
```
