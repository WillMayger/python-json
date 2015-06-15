sudo docker build -t dockerfile .
sudo docker run -name my_application_instance -p 80:80 -i -t dockerfile