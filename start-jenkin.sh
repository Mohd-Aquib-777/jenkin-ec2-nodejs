# docker run --name jenkins-blueocean \
#   --restart=on-failure \
#   --detach \
#   --network jenkins \
#   -v jenkins_home:/var/jenkins_home \
#   -v /var/run/docker.sock:/var/run/docker.sock \
#   -p 8080:8080 -p 50000:50000 \
#   myjenkins-blueocean:2.528.3-1

# docker run --name jenkins-blueocean \
#   --restart=on-failure \
#   --detach \
#   --network jenkins \
#   -v jenkins_home:/var/jenkins_home \
#   -v /var/run/docker.sock:/var/run/docker.sock \
#   --group-add $(getent group docker | cut -d: -f3) \
#   -p 8080:8080 \
#   -p 50000:50000 \
#   myjenkins-blueocean:2.528.3-1

#   -v jenkins_home:/var/jenkins_home \

# docker run --name jenkins-blueocean \
#   --restart=on-failure \
#   --detach \
#   --user root \
#   -v /var/run/docker.sock:/var/run/docker.sock \
#   -p 8080:8080 \
#   -p 50000:50000 \
#   myjenkins-blueocean:2.528.3-1

docker run --name jenkins-blueocean \
  --restart=on-failure \
  --detach \
  --user root \
  -v /home/ubuntu/projects/jenkinPractice/myProject:/var/jenkins_home/workspace/My-Pipeline \
  -v jenkins_home:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -p 8080:8080 \
  myjenkins-blueocean:2.528.3-1



  # docker run --name jenkins-blueocean --restart=on-failure --detach --user root -v /var/run/docker.sock:/var/run/docker.sock -p 8080:8080 -p 50000:50000 myjenkins-blueocean:2.528.3-1

# docker run --name jenkins-blueocean \
#   --user root \
#   --detach \
#   --restart=on-failure \
#   -v D:/Aquib/practice/Jenkins/myProject:/var/jenkins_home/workspace/My-Pipeline \
#   -v jenkins_home:/var/jenkins_home \
#   -v /var/run/docker.sock:/var/run/docker.sock \
#   -p 8080:8080 \
#   myjenkins-blueocean:2.528.3-1

