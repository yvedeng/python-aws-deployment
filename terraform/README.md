This Terraform template is designed to define a set of specific resources and will perform the following tasks:

- Define the desired state configuration for security, resources, and configurations for delivering defined elements using infrastructure as code concepts.
- Separate security configurations, cluster configurations, and bootstrapping processes into source control managed definitions making them reusable, defined, and flexible.
- Provide a functional process whereby an ECS cluster with these defined dependencies can be effectively leveraged and quickly delivered.


The Terraform code will deliver resources that pertain to the following configuration aspects:

- IAM: Identity access management policy configuration
- VPC: Public and private subnets, routes, and a NAT Gateway
- EC2: Autoscaling implementation
- ECS: Cluster configuration
- ALB: Load balancer configuration
- DynamoDB: Table configuration
- CloudWatch: Alert metrics configuration