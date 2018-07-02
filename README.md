# Docker Docusaurus

docker for Docusaurus

## document

- [Docusaurus](https://docusaurus.io/en/)
- search engine
    - [algolia](https://www.algolia.com/)

## Docker

- docker build

    ```
    $ docker build --no-cache --rm -t renoretriever/docker-docusaurus .
    ```

## Docusaurus

- initialize

    ```
    $ docker run -it -e TZ=Asia/Tokyo -v (pwd):/root/ renoretriever/docker-docusaurus docusaurus-init
    ```

- start

    ```
    $ docker run -it -d -e TZ=Asia/Tokyo -v (pwd):/root/ -p 3000:3000 renoretriever/docker-docusaurus /bin/ash -c "cd /root/website; npm start --host 0.0.0.0 --port 3000"
    ```

- build

    ```
    $ docker run -it -e TZ=Asia/Tokyo -v (pwd):/root/ renoretriever/docker-docusaurus /bin/ash -c "cd /root/website; yarn run build"
    ```

