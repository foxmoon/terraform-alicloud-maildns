Alicloud Mail  Auto Add Domain DNS Record For Mail Post Service Terraform Module
terraform-alicloud-maildns
=============================================

Terraform module which creates DNS resources for email service on Alibaba Cloud.

These types of resources are supported:

* [MX  Records]
* [CNAME Records]

Root module calls these modules which can also be used separately to create independent resources:



`NOTE`:
* Domain (record) need follow RFC.

Usage
-----
You can use this in your terraform template with the following steps.
1. input teraform init 

2. input terraform apply
var.domain
  DNS alicloud mail domain name

  Enter a value: 90hou.store


An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # alicloud_dns_record.record will be created
  + resource "alicloud_dns_record" "record" {
      + host_record = "@"
      + id          = (known after apply)
      + locked      = (known after apply)
      + name        = "90hou.store"
      + priority    = 3
      + routing     = "default"
      + status      = (known after apply)
      + ttl         = 600
      + type        = "MX"
      + value       = "mx1.qiye.aliyun.com"
    }

  # alicloud_dns_record.record2 will be created
  + resource "alicloud_dns_record" "record2" {
      + host_record = "@"
      + id          = (known after apply)
      + locked      = (known after apply)
      + name        = "90hou.store"
      + priority    = 3
      + routing     = "default"
      + status      = (known after apply)
      + ttl         = 600
      + type        = "MX"
      + value       = "mx2.qiye.aliyun.com"
    }

  # alicloud_dns_record.record3 will be created
  + resource "alicloud_dns_record" "record3" {
      + host_record = "@"
      + id          = (known after apply)
      + locked      = (known after apply)
      + name        = "90hou.store"
      + priority    = 3
      + routing     = "default"
      + status      = (known after apply)
      + ttl         = 600
      + type        = "MX"
      + value       = "mx3.qiye.aliyun.com"
    }

  # alicloud_dns_record.record5 will be created
  + resource "alicloud_dns_record" "record5" {
      + host_record = "imap"
      + id          = (known after apply)
      + locked      = (known after apply)
      + name        = "90hou.store"
      + routing     = "default"
      + status      = (known after apply)
      + ttl         = 600
      + type        = "CNAME"
      + value       = "imap.qiye.aliyun.com"
    }

  # alicloud_dns_record.record6 will be created
  + resource "alicloud_dns_record" "record6" {
      + host_record = "pop3"
      + id          = (known after apply)
      + locked      = (known after apply)
      + name        = "90hou.store"
      + routing     = "default"
      + status      = (known after apply)
      + ttl         = 600
      + type        = "CNAME"
      + value       = "pop.qiye.aliyun.com"
    }

  # alicloud_dns_record.record7 will be created
  + resource "alicloud_dns_record" "record7" {
      + host_record = "smtp"
      + id          = (known after apply)
      + locked      = (known after apply)
      + name        = "90hou.store"
      + routing     = "default"
      + status      = (known after apply)
      + ttl         = 600
      + type        = "CNAME"
      + value       = "smtp.qiye.aliyun.com"
    }

  # alicloud_dns_record.record8 will be created
  + resource "alicloud_dns_record" "record8" {
      + host_record = "mail"
      + id          = (known after apply)
      + locked      = (known after apply)
      + name        = "90hou.store"
      + routing     = "default"
      + status      = (known after apply)
      + ttl         = 600
      + type        = "CNAME"
      + value       = "qiye.aliyun.com"
    }

  # alicloud_dns_record.record9 will be created
  + resource "alicloud_dns_record" "record9" {
      + host_record = "@"
      + id          = (known after apply)
      + locked      = (known after apply)
      + name        = "90hou.store"
      + routing     = "default"
      + status      = (known after apply)
      + ttl         = 600
      + type        = "TXT"
      + value       = "v=spf1 include:spf1.alibaba.mail.aliyun.com -all"
    }

Plan: 8 to add, 0 to change, 0 to destroy.
Authors
-------
Created and maintained by Bright(liaomk@gmail.com)

Reference
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)
