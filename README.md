Networking
1- create vpc   ^_^ 

2- create internet gateway   ^_^

3- create natgateway (optional because it is not free) ---- 

3- create public route table ^_^ 

4- create private route table ^_^

5- create public route ^_^

6- attach public route table to subnets ^_^

7- create security group which allow ssh from 0.0.0.0/0  ^_^

8- create security group that allow ssh and port 3000 from vpc cidr only ^_^

9- create ec2(bastion) in public subnet with security group from 7 ^_^

10- create ec2(application) private subnet with security group from 8 ^_^

# note: you should use s3 bucket as backend and enable state lock
![Architecture Diagram]([./architecture.png](https://sdmntprpolandcentral.oaiusercontent.com/files/00000000-8158-620a-b32d-151621829c7d/raw?se=2025-04-30T03%3A07%3A23Z&sp=r&sv=2024-08-04&sr=b&scid=8704a5c7-1135-5328-bf31-bdc83885bbae&skoid=06d77cea-897f-49c6-9d78-20f6510f72af&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2025-04-29T22%3A35%3A00Z&ske=2025-04-30T22%3A35%3A00Z&sks=b&skv=2024-08-04&sig=ppQU9scNSEdn7VEDg988JiCnhdo//xICpl3RU1KRzxY%3D))
