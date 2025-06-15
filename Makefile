up:
	docker compose up --build

build:
	docker build -t ar2pi/container-oomkill-probe .

push: build
	docker push ar2pi/container-oomkill-probe

clean:
	docker system prune -a
