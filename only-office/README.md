## Запуск

Тут используется версия 7.1 потому что в ней по дефолту не включен jwt.

В каталог ssl закинуть сертификат и ключ для домена OO.

Названия файлов:
- onlyoffice.key
- onlyoffice.crt

В случае использования реверс прокси эти сертификаты можно потом не обновлять, но связь прокси с колаборой должны быть по https.

Предварительное создание самоподписанных сертификатов для работы за прокси:

```
mkdir ./data/ssl 

openssl genpkey -algorithm RSA -out ca.key
openssl req -x509 -new -nodes -key ca.key -sha256 -days 3650 -out ca.crt
openssl genpkey -algorithm RSA -out onlyoffice.key
openssl req -new -key onlyoffice.key -out onlyoffice.csr
openssl x509 -req -in onlyoffice.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out onlyoffice.crt -days 3650 -sha256

mv onlyoffice.crt onlyoffice.key ./data/ssl 
```
