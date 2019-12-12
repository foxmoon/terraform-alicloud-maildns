provider "alicloud" {
  region = "cn-beijing"
}

resource "alicloud_dns_record" "record" {
  name        = "${var.domain}"
  host_record = "@"
  type        = "MX"
  priority      = 3
  value       = "mx1.qiye.aliyun.com"
}

resource "alicloud_dns_record" "record2" {
  name        = "${var.domain}"
  host_record = "@"
  type        = "MX"
  priority      = 3
  value       = "mx2.qiye.aliyun.com"
}
resource "alicloud_dns_record" "record3" {
  name        = "${var.domain}"
  host_record = "@"
  type        = "MX"
  priority      = 3
  value       = "mx3.qiye.aliyun.com"
}


resource "alicloud_dns_record" "record5" {
  name        = "${var.domain}"
  host_record = "imap"
  type        = "CNAME"
  value       = "imap.qiye.aliyun.com"
}

resource "alicloud_dns_record" "record6" {
  name        = "${var.domain}"
  host_record = "pop3"
  type        = "CNAME"
  value       = "pop.qiye.aliyun.com"
}

resource "alicloud_dns_record" "record7" {
  name        = "${var.domain}"
  host_record = "smtp"
  type        = "CNAME"
  value       = "smtp.qiye.aliyun.com"
}

resource "alicloud_dns_record" "record8" {
  name        = "${var.domain}"
  host_record = "mail"
  type        = "CNAME"
  value       = "qiye.aliyun.com"
}


resource "alicloud_dns_record" "record9" {
  name        = "${var.domain}"
  host_record = "@"
  type        = "TXT"
  value       = "v=spf1 include:spf1.alibaba.mail.aliyun.com -all"
}



