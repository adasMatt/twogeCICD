# **Twoge (application by Chandradeo, with CICD by Matt for Code Platoon Assessment)**

<h1 align="center">
	<img
		width="500"
		alt="Project Twoge"
		src="./static/img/twoge-cover.png">
</h1>

Twoge is a social media platform dedicated solely to tweets about Dodge. This application is built using Flask, SQLAlchemy, and PostgreSQL (see the rest of the original Twoge readme.md at https://github.com/chandradeoarya/twoge)...

<h1 align="center">
	<img
		width="100"
		alt="Project Twoge"
		src="./static/img/twoge.png">
</h1>

## App launch and CICD Implementation
Before CICD, the application is brought up and running via:
1. Terraform technology to create the RDS instance (not included in this repo, but see Other Things topic below for more information on how to set that up)
2. Dockerfile (add more detail)
3. Elastic Beanstalk CLI commands:
 	- eb init
 	- eb create twoge-app-server --single
 	- eb setenv SQLALCHEMY_DATABASE_URI=postgresql://<user>:<password>@<path-to-db-host>:5432/twogedbtf
 	- eb deploy
4. Now the app is running and it is .github/workflows/cicd.yml's time to shine :)
	- tbc. What to inlcude? Different Jobs explained?
 	- 

## Other things
The creation of the AWS RDS instance was done using Terraform code as outlined in a few examples, changing and adding whatever is necessary for the project:
- terraform docs are always helpful: 
	- https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance
	- https://registry.terraform.io/modules/terraform-aws-modules/rds/aws/latest
- also this tutorial: https://fitdevops.in/create-rds-instances-using-terraform/

Some other other (delete this line if no other)...
