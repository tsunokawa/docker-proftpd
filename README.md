# docker-proftpd

### Build
```
docker build . -t tsunokawa/docker-proftpd
```

### Run
```
docker run -d -p 20:20 -p 21:21 -p 30000-30010:30000-30010 -v `PWD`/proftpd:/proftpd tsunokawa/docker-proftpd
```

