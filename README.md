# A quest in the clouds

* Preface: I requested public cert from ACM and next step is to associate it with my LoadBalancer to satisfy TLS - Step 7 in project requirements

* Given more time for the infrastructure, I would improve:
  *  Create ASG if we need to scale horizontally and have a min of instances for this application
  *  If the webapp were to grow with content, assets, and have customers worldwide -- CloudFront distribution could be an option
    *  Cloudfront due to edge locations esp if customers worldwide
    *  Can have WAF (web application firewall) in front of it to prevent layer 7 attacks like DDOS (distributed denial of service) or custom error pages
  *  enable logging and permissions for certain resources without wildcard * in policy to ensure transparency with monitoring, logging, and alerting (observability)
  *  ECR is also another service to leverage to host the images somewhere, and can add policy for ec2 to pull down image
  *  Given I only created 1 instance with lb sitting in front -- if web app scales it will need to be optimized vertically for instance type (cpu, mem, disk, etc) so you can always install CW agent to view other metrics and rightsize ec2 instance (also ensure cloud cost is minimal)

* Given more time for Docker container, I would improve:
  * instead of hardcoding the ENV in Dockerfile, you can pass a .env file for readability and organization sake


