1. Run "alpine_set_env.sh" script to:
	- run "Dockerfile" for create "my_alpine" image and install "netcat" utility to new image;
	- open 8087 port;
	- create "my_alpine" based on "alpine" image;
	- create "alpine_network" network;
	- cteate "vol_alpine1" and "vol_alpine2" volumes;
	- copy "nc_server.sh" script to "vol_alpine1" (this script run comand as netcat server);
	- copy "nc_client.sh" script to "vol_alpine2" (this script run comand as netcat clien);
	- run "my_alpine1" docker container in '--detach' mode and connect it to the "alpine_network" network;
	- run "my_alpine2" docker container in '--detach' mode and connect it to the "alpine_network" network;

2. Execute this command to open terminal in "my_alpine1" container:
	
	sudo docker container exec -it my_alpine1 ash

3. Execute this command in opened terminal for start netcat server in "my_alpine1" container:
	
	./root/nc_server.sh

4. Open new terminal window to start "my_alpine2" container to start netcat client.

5. Execute this command to open terminal in "my_alpine2" container:
	
	sudo docker container exec -it my_alpine2 ash

6. Execute this command in opened terminal for start netcat client in "my_alpine2" container:
	
	./root/nc_client.sh

7. You can start to change messages between "my_alpine1" and "my_alpine2" conteiners through "alpine_network" 8087 port.

8. To clean environment and remove all items created by "alpine_set_env.sh" script (images, containers, network, volumes) you can run "cleane_alpine.sh" script.


Commands to add hub-user and push image to Docker Hub:

	sudo docker tag my_alpine mykolagerasymenko/my_alpine
	sudo docker image push mykolagerasymenko/my_alpine

Link to "mykolagerasymenko/my_alpine" image on Docker Hub:
https://hub.docker.com/repository/docker/mykolagerasymenko/my_alpine