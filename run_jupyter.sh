docker build -t jupyter/jupyter-free5gc .

docker run -d --name jupyterlab --rm -it -p 8888:8888   -w "/home/jovyan"   -v "$(pwd):/home/jovyan/mount/" jupyter/jupyter-free5gc

sleep(3)

docker logs jupyterlab
