
#!/usr/bin/env bash
docker build . -q | tee >(xargs docker inspect --format '{{.Size}}')

# does not work, tries to delete the file
# docker build .  -t python3-docker  --iidfile=>(docker image inspect) 

# 5<>iid docker build . --iidfile=>(docker image inspect)



# docker build . -q --iidfile=>(docker image inspect)
# docker build .  -t python3-docker --iidfile=&3 3>&1 1>&2

# --iidfile=&3   
# docker build --progress plain . /dev/stdout > /dev/stderr


# --iidfile=/dev/stdout

# docker inspect $(docker build . -q)
# 3<>iid docker build . --iidfile=&3 3>&1 1>&2 | docker image inspect

# docker build . --iidfile=>(docker image inspect)


# docker inspect $(docker build . -q)

# docker build . -q | xarg docker inspect