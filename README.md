# tsung-1-8
для запуска нужен docker и docker-compose;
1. docker build -t tsung:1.8 .
xml файлы добавлять в configs;
для изменения запускаемого файла изменить переменную FILE в .env;
2. запустить контейнер с tsung и закрыть после отработки: docker compose up -d (docker-compose up -d (в зависимости от версии компоуса)).
