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
![Architecture Diagram](./imag.png)
