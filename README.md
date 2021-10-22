# python-aws-deployment

This repository follows the steps that have been mentioned in the documentation. 

https://aws.amazon.com/blogs/opensource/deploying-python-flask-microservices-to-aws-using-open-source-tools/

1. First, you will need to create an ECR repository. Run the following AWS CLI command from your terminal:
```bash
aws ecr create-repository \
    --repository-name python-aws-deployment \
    --image-scanning-configuration scanOnPush=true \
    --region eu-west-1
```
2. In the AWS Console, open Services, Elastic Container Registry. Select the flask-docker-demo-app as seen in the following image

3. Now, log into ECR from the command line. Run the following command:
```bash
// logon to ECR
aws ecr get-login-password --region eu-west-1 | docker login --username AWS --password-stdin 839146341204.dkr.ecr.eu-west-1.amazonaws.com/python-aws-deployment
```
4. Navigate to the root of the repository and run
```bash
cd src
```
5. Run the following image to build the Docker image:
```bash
docker build --tag python-aws-deployment-app .
```

6. Run the following command to tag the Docker image and make sure to update the command with your account ID:
```shell
docker tag python-aws-deployment-app:latest 839146341204.dkr.ecr.eu-west-1.amazonaws.com/python-aws-deployment:latest
```

7. You will now push your newly created Docker image to ECR. Recall that in Step 1 we authenticated to ECR, so now all that remains is to deploy the image to ECR. Run the following command to deploy the image to ECR:
```shell
docker push 839146341204.dkr.ecr.eu-west-1.amazonaws.com/python-aws-deployment:latest
```