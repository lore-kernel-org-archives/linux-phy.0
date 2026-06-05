Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FF1ECD6E5D
	for <linux-phy@archiver.kernel.org>; Fri,  5 Jun 2026 11:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X3NElfmoBtFSCUyQHtOzlRiJuvGCVel+hfrGsl5axDM=; b=Jjr+4emDqgJc3d
	g9b5vfsDNyP73XjGjHOEwAvM4vL0y2bqOSl3IjUIdOMHLDmVsT9ORdUHx97whncZ00t3LZB9WQ642
	i32Q9cT2Vxe3tsc6KmmFwmh+YxzFvsDC1e/Hr6Y2azO0plJDbInReD7+cfsWqtcawI9kg+3LKGaqj
	+I3L+DkFg7Y5LWHj73/r48nrUukC/8PMa8SvOcCGZ5Q2k6OdE9AWsTIwzu3hi6wtWK31kE45W9Ras
	OPOGt207d0zxAEoD7dOUoPXBU9lupdHCTU6nWWgrjq/XJx9aXJ6C0ZSOBetx+M7HGtI05rnwKJX8T
	oFghjMMEs74rdRyazHZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVScx-00000000X8B-3ouH;
	Fri, 05 Jun 2026 11:22:15 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVScw-00000000X7y-20ri
	for linux-phy@lists.infradead.org;
	Fri, 05 Jun 2026 11:22:14 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id DE94C44535;
	Fri,  5 Jun 2026 11:22:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB5831F00893;
	Fri,  5 Jun 2026 11:22:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780658533;
	bh=tb12Qi0Rr5byC63yxO/H3th6dwVJUniEn3PJA2T8Nuo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=RxgewI5LGEehnxeAm/49PZzLdVQSlknk+2dAwYjvuRF7n75wrstdg+eRRL8bd5aR8
	 MdcIq0jPIDBpAXhzQDB/NG0uebkkWun9tVyp1D0WxxFWbbsmij8y2fwvpq60FJLBgQ
	 0ipT1JFNmVjGAIH1lmbZM6RQl7nKnGmftPDMnm/odN3g8RHbWzW1YfTjT68P8jLMdJ
	 V8HlGxLO1WWItHsLrdh9kd/7LFFkYkWub7p+v0nakXNanO0pqdbwPuU/8RfEVtdcCa
	 zBbV1bp5Pf6mMqM1Fya0+Ak7CZDYEKVdwvvfSZw6L6Q2iL3OFMCdu0fttNCJ9x3yd9
	 ReiidbLXkvlaw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 1/5] phy: fsl-imx8mq-usb: fix typec switch leak on
 probe error path
To: "Xu Yang" <xu.yang_2@oss.nxp.com>
Cc: Frank.Li@kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, imx@lists.linux.dev, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260605-imx8mp-usb-phy-improvement-v4-1-b2ddf2f3862c@nxp.com>
References: <20260605-imx8mp-usb-phy-improvement-v4-1-b2ddf2f3862c@nxp.com>
Date: Fri, 05 Jun 2026 11:22:12 +0000
Message-Id: <20260605112212.AB5831F00893@smtp.kernel.org>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBSYWNlIGNvbmRpdGlvbiBkdXJpbmcgcHJvYmUgbGVhZGluZyB0byBOVUxMIHBvaW50
ZXIgZGVyZWZlcmVuY2UuCi0gW0hpZ2hdIFVzZS1BZnRlci1GcmVlIChVQUYpIG9mIHByb3ZpZGVy
IGRyaXZlciBkYXRhIG9uIG1hbnVhbCB1bmJpbmQuCi0tCgpjb21taXQgOWRkZTVkZWRiNGZiZGVm
MWI5M2U3ZTk2Y2NkYjIyZmM5NDA3ZjJjYwpBdXRob3I6IEZlbGl4IEd1IDx1c3RjLmd1QGdtYWls
LmNvbT4KCnBoeTogZnNsLWlteDhtcS11c2I6IGZpeCB0eXBlYyBzd2l0Y2ggbGVhayBvbiBwcm9i
ZSBlcnJvciBwYXRoCgpUaGlzIGNvbW1pdCBmaXhlcyBhIG1lbW9yeSBsZWFrIG9mIHRoZSBUeXBl
LUMgc3dpdGNoIG9uIHRoZSBwcm9iZSBlcnJvcgpwYXRoIGJ5IHVzaW5nIGRldm1fYWRkX2FjdGlv
bl9vcl9yZXNldCgpIGZvciBjbGVhbnVwLiBUaGlzIGVuc3VyZXMgdGhlCnN3aXRjaCBpcyB1bnJl
Z2lzdGVyZWQgb24gYm90aCBwcm9iZSBmYWlsdXJlIGFuZCBkcml2ZXIgcmVtb3ZhbC4KCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlteDhtcS11c2IuYyBiL2Ry
aXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlteDhtcS11c2IuYwo+IGluZGV4IGIwNWQ4MGU4
NDlhMTQuLjg4YjgwNGIyYzk4MmIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvZnJlZXNjYWxl
L3BoeS1mc2wtaW14OG1xLXVzYi5jCj4gKysrIGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1m
c2wtaW14OG1xLXVzYi5jCgpbIC4uLiBdCgo+IEBAIC0yNDgsNiArMjQ4LDcgQEAgc3RhdGljIHN0
cnVjdCB0Y2FfYmxrICppbXg5NV91c2JfcGh5X2dldF90Y2Eoc3RydWN0IHBsYXRmb3JtX2Rldmlj
ZSAqcGRldiwKPiAgCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4gIAlzdHJ1Y3Qg
cmVzb3VyY2UgKnJlczsKPiAgCXN0cnVjdCB0Y2FfYmxrICp0Y2E7Cj4gKwlpbnQgcmV0Owo+ICAK
PiAgCXJlcyA9IHBsYXRmb3JtX2dldF9yZXNvdXJjZShwZGV2LCBJT1JFU09VUkNFX01FTSwgMSk7
Cj4gIAlpZiAoIXJlcykKPiBAQCAtMjY2LDE3ICsyNjcsMTEgQEAgc3RhdGljIHN0cnVjdCB0Y2Ff
YmxrICppbXg5NV91c2JfcGh5X2dldF90Y2Eoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiwK
PiAgCXRjYS0+b3JpZW50YXRpb24gPSBUWVBFQ19PUklFTlRBVElPTl9OT1JNQUw7Cj4gIAl0Y2Et
PnN3ID0gdGNhX2Jsa19nZXRfdHlwZWNfc3dpdGNoKHBkZXYsIGlteF9waHkpOwoKW1NldmVyaXR5
OiBIaWdoXQpUaGlzIGlzIGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgZG9lcyB0aGlzIGNyZWF0
ZSBhIHJhY2UgY29uZGl0aW9uCmR1cmluZyBwcm9iZT8KCldoZW4gdGNhX2Jsa19nZXRfdHlwZWNf
c3dpdGNoKCkgcmVnaXN0ZXJzIHRoZSBUeXBlLUMgc3dpdGNoLCBpdCBiZWNvbWVzCmV4cG9zZWQg
dG8gdGhlIHN1YnN5c3RlbS4gSWYgYSBjb25zdW1lciBiaW5kcyBhc3luY2hyb25vdXNseSBpbiB0
aGlzIG5hcnJvdwp3aW5kb3cgYW5kIGludm9rZXMgdGhlIC5zZXQgY2FsbGJhY2ssIGNvdWxkIGl0
IGRlcmVmZXJlbmNlIGlteF9waHktPnRjYQpiZWZvcmUgaXQgZ2V0cyBhc3NpZ25lZCBiYWNrIGlu
IGlteDhtcV91c2JfcGh5X3Byb2JlKCk/Cgpkcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1p
bXg4bXEtdXNiLmM6dGNhX2Jsa190eXBlY19zd2l0Y2hfc2V0KCkgewoJc3RydWN0IGlteDhtcV91
c2JfcGh5ICppbXhfcGh5ID0gdHlwZWNfc3dpdGNoX2dldF9kcnZkYXRhKHN3KTsKCXN0cnVjdCB0
Y2FfYmxrICp0Y2EgPSBpbXhfcGh5LT50Y2E7CgkuLi4KCWlmICh0Y2EtPm9yaWVudGF0aW9uID09
IG9yaWVudGF0aW9uKQoJCS4uLgp9CgpXb3VsZCBpdCBiZSBzYWZlciB0byBhc3NpZ24gaW14X3Bo
eS0+dGNhIGJlZm9yZSByZWdpc3RlcmluZyB0aGUKVHlwZS1DIHN3aXRjaD8KCj4gLQlyZXR1cm4g
dGNhOwo+IC19Cj4gLQo+IC1zdGF0aWMgdm9pZCBpbXg5NV91c2JfcGh5X3B1dF90Y2Eoc3RydWN0
IGlteDhtcV91c2JfcGh5ICppbXhfcGh5KQo+IC17Cj4gLQlzdHJ1Y3QgdGNhX2JsayAqdGNhID0g
aW14X3BoeS0+dGNhOwo+IC0KPiAtCWlmICghdGNhKQo+IC0JCXJldHVybjsKPiArCXJldCA9IGRl
dm1fYWRkX2FjdGlvbl9vcl9yZXNldCgmcGRldi0+ZGV2LCB0Y2FfYmxrX3B1dF90eXBlY19zd2l0
Y2gsIHRjYS0+c3cpOwoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlzIGFsc28gYSBwcmUtZXhpc3Rp
bmcgaXNzdWUsIGJ1dCBjYW4gdGhpcyBsZWFkIHRvIGEgVXNlLUFmdGVyLUZyZWUKaWYgdGhlIGRy
aXZlciBpcyBtYW51YWxseSB1bmJvdW5kPwoKSWYgdGhlIGRyaXZlciBpcyB1bmJvdW5kIHZpYSBz
eXNmcywgZGV2cmVzIHdpbGwgYXV0b21hdGljYWxseSBmcmVlIHRoZQppbXhfcGh5IGFuZCB0Y2Eg
c3RydWN0dXJlcyBzaW5jZSB0aGV5IHdlcmUgYWxsb2NhdGVkIHdpdGggZGV2bV9remFsbG9jKCku
Ckhvd2V2ZXIsIGlmIHR5cGVjX3N3aXRjaF91bnJlZ2lzdGVyKCkgZG9lc24ndCByZXZva2UgZXhp
c3RpbmcgY29uc3VtZXIKcmVmZXJlbmNlcywgY291bGQgYSBjb25zdW1lciBzdWJzZXF1ZW50bHkg
Y2FsbCB0eXBlY19zd2l0Y2hfc2V0KCkgYW5kCmFjY2VzcyB0aGUgYWxyZWFkeSBmcmVlZCBpbXhf
cGh5IGFuZCB0Y2Egc3RydWN0dXJlcz8KCmRyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlt
eDhtcS11c2IuYzp0Y2FfYmxrX3R5cGVjX3N3aXRjaF9zZXQoKSB7CglzdHJ1Y3QgaW14OG1xX3Vz
Yl9waHkgKmlteF9waHkgPSB0eXBlY19zd2l0Y2hfZ2V0X2RydmRhdGEoc3cpOwoJc3RydWN0IHRj
YV9ibGsgKnRjYSA9IGlteF9waHktPnRjYTsKCS4uLgoJaWYgKHRjYS0+b3JpZW50YXRpb24gPT0g
b3JpZW50YXRpb24pCgkJLi4uCn0KCj4gKwlpZiAocmV0KQo+ICsJCXJldHVybiBFUlJfUFRSKHJl
dCk7Cj4gIAo+IC0JdGNhX2Jsa19wdXRfdHlwZWNfc3dpdGNoKHRjYS0+c3cpOwo+ICsJcmV0dXJu
IHRjYTsKPiAgfQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYv
Iy9wYXRjaHNldC8yMDI2MDYwNS1pbXg4bXAtdXNiLXBoeS1pbXByb3ZlbWVudC12NC0wLWIyZGRm
MmYzODYyY0BueHAuY29tP3BhcnQ9MQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
