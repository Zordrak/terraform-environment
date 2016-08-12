# terraform-environment
Environment terraform module

TODO:
   * Write this README
   * Publishing ELB (resource not module)
   * OpenInterface ELB (resource not module)
   * Elasticache Module (Called twice, once for web, once for api)
   * RDS Module (glhf)
   * CloudWatch/Monitoring Module (big work)
   * Per micro-service IAM policies (medium work)
   * A beeeeelion security group rules (annoying work)
   * Speckul attention for VPN microservice to be added with route table entries
   * Module calls for all the individual microservices with specific sizes, AMI IDs etc
   * A mechanism for automating AMI selection!! Let's not pass actual IDs, let's define proper filter patterns so that we can just tag AMIs correctly and have the groups pick up the right one - maybe even with sexy logic so we can roll back to older AMIs without touching terraform inputs!!
   * During testing we need to make sure that the current implementation of VPC Peering connections doesn't suffer from a sorting mismatch and that the CIDRs in the route tables are poitning at the right PCX IDs.
