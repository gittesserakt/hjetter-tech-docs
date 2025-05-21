# Data Science

## Infrastructure Diagram

### AWS Basic Structure
``` mermaid
architecture-beta
    group aws(logos:aws)[AWS]
    group region[eu central 1] in aws
    group vpc(logos:aws-vpc)[vpc] in region
    group av1[availability zone a] in vpc
    group av2[availability zone b] in vpc
    group av3[availability zone c] in vpc
    group av1PubSub[public subnet] in av1
    group av2PubSub[public subnet] in av2
    group av3PubSub[public subnet] in av3
    group region2[us east 1] in aws

    service test(logos:aws-ec2)[services] in av1PubSub
    service test2(logos:aws-ec2)[services] in av2PubSub
    service test3(logos:aws-ec2)[services] in av3PubSub
    junction junctionTest in vpc
    service iam(logos:aws-iam)[IAM] in region2
    service elb(logos:aws-elb)[ELB] in vpc

    test{group}:B -- L:junctionTest
    test2{group}:B -- B:junctionTest
    test3{group}:B -- R:junctionTest
    test{group}:R -- L:test2{group}
    test2{group}:R -- L:test3{group}

    junctionTest:B -- T:elb

    elb{group}:B -- T:iam{group}
```

### On-Premise Basic Structure
``` mermaid
architecture-beta
    group onprem(server)[On Premise]
    group cluster(devicon:proxmox-wordmark)[Proxmox Cluster] in onprem
    group subnet(material-symbols:lan-outline)[kubenet0] in cluster
    group node1[node 1] in subnet
    group node2[node 2] in subnet
    group node3[node 3] in subnet
    group subnet2(material-symbols:lan-outline)[lan] in cluster

    service test(server)[services] in node1
    service test2(server)[services] in node2
    service test3(server)[services] in node3
    junction junctionTest in subnet
    service iam(simple-icons:keycloak)[IAM] in subnet2
    service lb(logos:nginx)[LB] in subnet

    test{group}:B -- L:junctionTest
    test2{group}:B -- B:junctionTest
    test3{group}:B -- R:junctionTest
    test{group}:R -- L:test2{group}
    test2{group}:R -- L:test3{group}

    junctionTest:B -- T:lb

    lb{group}:B -- T:iam{group}
```

### Kubernetes Clusters Basic Structure
``` mermaid
architecture-beta
    group clusteraws(logos:kubernetes)[AWS Kubernetes Cluster]
    group clusterprox(logos:kubernetes)[On Premise Kubernetes Cluster]

    group ec2cp1(logos:aws-ec2)[control plane 1] in clusteraws
    group ec2w1(logos:aws-ec2)[worker 1] in clusteraws
    group ec2w2(logos:aws-ec2)[worker 2] in clusteraws
    service awscp1(devicon:talos)[Talos Linux] in ec2cp1
    service awsw1(devicon:talos)[Talos Linux] in ec2w1
    service awsw2(devicon:talos)[Talos Linux] in ec2w2
    awscp1{group}:L -- R:awsw1{group}
    awscp1{group}:B -- T:awsw2{group}

    group vmcp1(server)[control plane 1] in clusterprox
    group vmw1(server)[worker 1] in clusterprox
    group vmw2(server)[worker 2] in clusterprox
    service proxcp1(devicon:talos)[Talos Linux] in vmcp1
    service proxw1(devicon:talos)[Talos Linux] in vmw1
    service proxw2(devicon:talos)[Talos Linux] in vmw2
    proxcp1{group}:R -- L:proxw1{group}
    proxcp1{group}:B -- T:proxw2{group}

    service laptop(material-symbols:laptop-chromebook-outline)[Admin]
    junction junctionClusterConnect

    awscp1{group}:R -- L:junctionClusterConnect
    proxcp1{group}:L -- R:junctionClusterConnect
    laptop:B -- T:junctionClusterConnect
```