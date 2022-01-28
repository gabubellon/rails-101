# rails-101

Repositório para ser utilizado dentro do bootcampa de Rails

Ambiente criado seguindo [esse tutorial](https://hackmd.io/@XBgk0kxlRnWrc48GVpMRVA/HJQeklI6t)

* [Aula 1](https://hackmd.io/UWCBZXZ-QvSW_zS_5_Bfog)
* [Aula 2](https://hackmd.io/RcwgP49yQlOV7sOdAaX2UQ)
* [Aula 3](https://hackmd.io/fbYkNFBOQk-Yl2MiWkw3gw)
* [Aula 4](https://hackmd.io/uOs-ccO8QgypgwaP4LbKKA)
* Extra 01 - Add Novo Campos no Usuárui
* Extra 02 - GET simples de API
* [Aula 5](https://hackmd.io/zhvIcXDfS-O1RtBGFS2beQ?view)


## para executar

* Copie e edite `env_sample`
```bash
cp env_sample .env
```

* Ajuste a permissão dos `docker_entrypoint.sh`
```bash
chmod +x entrypoints/docker_entrypoint.sh
```

* Execute o build
```bash
docker-compose build
```

* Inicie os serviços docker
```bash
docker-compose up 
# ou para manter em segundo plano
docker-compose up -d 
```

* Iniciali-se o bando de dados
```bash
 docker-compose exec web rails db:setup
```
* Acesse http://localhost:3000/

* Para parar os serviços
```bash
docker-compose down
```





