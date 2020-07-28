## Requisito
  - necessário ter o [docker](https://docs.docker.com/install/linux/docker-ce/centos/) e o [docker-compose](https://github.com/docker/compose/) instalados;
  - Para instalar pode seguir o [Instalação do docker](./instalação_docker.md)



## Instalação Aplicação
  - Codigo Fonte
    ```bash
    cd /var/www/;
    git clone git@gitlab.com:yurigmarques/symfonyproject1.git;
    ```
  - Base de dados
    

  - Configuração de host
    - editar o `hosts`
    - adicione o conteudo no final
      ```bash
      127.0.0.1 app-docker.localhost
      ```

## Inicializar os containers
  - Subir o serviço
      ```bash
      docker-compose up -d --build
      ```
  - Derrubar o serviço 
      ```bash
      docker-compose down
      ```
  - Se der erro para olhar os logs
      ```bash
      docker-compose logs;
      docker-compose logs nomecontainer;
      ```


## Pendencias
  - php.ini
  - yarn
  - Melhorar forma de utilizar o MySQL, para atender vários projetos
  - Estudar como montar varios projetos independentes para cada aplicação
  - Modsecurity
    - [Dockerhub](https://hub.docker.com/r/owasp/modsecurity)
    - [Dockerfile com a V3](https://github.com/coreruleset/modsecurity-docker/blob/master/v3-nginx/Dockerfile)
  - Traefik
    -[Docker - Traefik](https://docs.traefik.io/v1.7/configuration/backends/docker)
    -[Documentação do Traefik](https://docs.traefik.io/v1.7/#1-launch-traefik-tell-it-to-listen-to-docker)
