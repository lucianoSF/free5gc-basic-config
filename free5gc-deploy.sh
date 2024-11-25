cd ..

git clone https://github.com/free5gc/free5gc-compose.git

cd free5gc-compose

cd base

git clone --recursive -j `nproc` https://github.com/free5gc/free5gc.git

cd ..

make all

docker compose -f docker-compose-build.yaml build

docker compose up -d

