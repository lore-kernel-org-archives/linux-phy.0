Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D5B8C43458
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jul 2026 21:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tkwT/Anii04dG60laIvnWVO6AaL+CgYG3RsHTgn3990=; b=ewGTneIW/9hX2b
	ojivWKKFYuk4SFbUL+fkEs8x3fx4jXYT6j9U0xdMqJYZYSwzNlc8LqHqM05fVILU3YE//Q0dJt+uR
	oVBLMFS9yJ5QSQ7GLNI+YetBue8WwO5WwCv53ZeN+eheoLA8ikg1CfpGxzIVieixZ6k2TohGk4a8/
	QxVKV/2VGWgvaCeCJP2rAGkTnIXrFt7nUChmsu1FMuNd+JChMlDouXZxbdS04SN0QO7cVDSMzBUr9
	1/QqCVw7Cl/JNZmHnxUIAsH/k1lU+riPJhXuC7eGlL88RjjARgMcARejngt26d/wCzsJKJUiHJVmn
	Tcts/0dKE3vgnnrX1FKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIZc-00000005mpG-3Xqi;
	Fri, 10 Jul 2026 21:15:52 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIZa-00000005mov-37Qs
	for linux-phy@lists.infradead.org;
	Fri, 10 Jul 2026 21:15:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8128E42A22;
	Fri, 10 Jul 2026 21:15:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 002EC1F000E9;
	Fri, 10 Jul 2026 21:15:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783718150;
	bh=S4w/WzBaC7XVHQOu7BfUI05BFXtmiNaIGkXXpWGnD8Y=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bW1nQwT867HW/ulHPL3M9leiG9e+sWZtus+lPvDFb1ttCR43sjNI7sBbnrb7r/NsC
	 BC390hqYIC70H1NYocMiVJEFXyEuP3G9i10v4sFtYK+9i0tnliiOTJaTdlvKJIjeWs
	 757dAEtU28PqfmKU48az24/x1Ma5Eh+AWdvXH7yVfJ3hQFuFEZ8EISOnF8WshNYThe
	 /g2DT8t45X9KGDbeLN71ZZH0YwtKnPFiyDoauNYkYCwawMZYiVNKHmGnGuxYqavpcQ
	 T1G38GcZqvgdJ1QIRhg1Tja/X3kO9Z43c+TpgorOA50C22caSCLBGBzeb0TVTwojAZ
	 UogJQQxoBY2KA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 19/36] phy: rockchip: usbdp: Re-init the PHY on
 orientation change
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: robh@kernel.org, vkoul@kernel.org, conor+dt@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org
In-Reply-To: <20260710-rockchip-usbdp-cleanup-v12-19-8b41a9a9bef0@collabora.com>
References: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
 <20260710-rockchip-usbdp-cleanup-v12-19-8b41a9a9bef0@collabora.com>
Date: Fri, 10 Jul 2026 21:15:49 +0000
Message-Id: <20260710211550.002EC1F000E9@smtp.kernel.org>
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
IFtIaWdoXSBEZWZlcnJlZCBoYXJkd2FyZSBpbml0aWFsaXphdGlvbiB2aWEgYHBoeV9uZWVkc19y
ZWluaXRgIGZpeGVzIERpc3BsYXlQb3J0IGJ1dCBsZWF2ZXMgVVNCLW9ubHkgcmVwbHVncyBicm9r
ZW4gaWYgdGhlIFVTQiBQSFkgcmVtYWlucyBwb3dlcmVkIG9uLgotIFtNZWRpdW1dIFRoZSBmdW5j
dGlvbiBgcmtfdWRwaHlfZHBfcGh5X2NvbmZpZ3VyZWAgYWNjZXNzZXMgc2hhcmVkIHN0YXRlcyBs
b2NrbGVzc2x5LCBsZWFkaW5nIHRvIGEgZGF0YSByYWNlIHdpdGggY29uY3VycmVudCBvcmllbnRh
dGlvbiBzd2l0Y2hlcy4KLS0KCi0tLSBQYXRjaCBbMTldOiBbUEFUQ0ggdjEyIDE5LzM2XSBwaHk6
IHJvY2tjaGlwOiB1c2JkcDogUmUtaW5pdCB0aGUgUEhZIG9uIG9yaWVudGF0aW9uIGNoYW5nZSAt
LS0KY29tbWl0IGM0NWQzNDE5YTZmNGI5NTA5YjQxNmZmZDc5NjVhOTE4ZTdmYWQ4ZTQKQXV0aG9y
OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KCnBo
eTogcm9ja2NoaXA6IHVzYmRwOiBSZS1pbml0IHRoZSBQSFkgb24gb3JpZW50YXRpb24gY2hhbmdl
CgpDaGFuZ2luZyB0aGUgY2FibGUgb3JpZW50YXRpb24gcmVjb25maWd1cmVzIHRoZSBsYW5lIG11
eGluZywgd2hpY2ggcmVxdWlyZXMKcmUtaW5pdGlhbGl6aW5nIHRoZSBQSFkuIFRoZSBwYXRjaCBp
bnRyb2R1Y2VzIGEgZmxhZyB0byB0cmlnZ2VyIFBIWQpyZS1pbml0aWFsaXphdGlvbiB1cG9uIG9y
aWVudGF0aW9uIGNoYW5nZS4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3Bo
eS1yb2NrY2hpcC11c2JkcC5jIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVz
YmRwLmMKPiBpbmRleCBlNDRkMTljOWQxMTkzLi40YjQ1NDc5OGM0ZWQ0IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gKysrIGIvZHJpdmVy
cy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiBAQCAtNjIwLDYgKzYyMCw3IEBA
IHN0YXRpYyBpbnQgcmtfdWRwaHlfb3JpZW5fc3dfc2V0KHN0cnVjdCB0eXBlY19zd2l0Y2hfZGV2
ICpzdywKPiAgCQkJCSBlbnVtIHR5cGVjX29yaWVudGF0aW9uIG9yaWVuKQo+ICB7Cj4gIAlzdHJ1
Y3QgcmtfdWRwaHkgKnVkcGh5ID0gdHlwZWNfc3dpdGNoX2dldF9kcnZkYXRhKHN3KTsKPiArCWJv
b2wgZmxpcHBlZCA9IG9yaWVuID09IFRZUEVDX09SSUVOVEFUSU9OX1JFVkVSU0U7Cj4gIAo+ICAJ
bXV0ZXhfbG9jaygmdWRwaHktPm11dGV4KTsKPiAgCgpbIC4uLiBdCgo+IEBAIC02MzEsNyArNjMy
LDEwIEBAIHN0YXRpYyBpbnQgcmtfdWRwaHlfb3JpZW5fc3dfc2V0KHN0cnVjdCB0eXBlY19zd2l0
Y2hfZGV2ICpzdywKPiAgCQlnb3RvIHVubG9ja19yZXQ7Cj4gIAl9Cj4gIAo+IC0JdWRwaHktPmZs
aXAgPSBvcmllbiA9PSBUWVBFQ19PUklFTlRBVElPTl9SRVZFUlNFOwo+ICsJaWYgKHVkcGh5LT5m
bGlwICE9IGZsaXBwZWQpCj4gKwkJdWRwaHktPnBoeV9uZWVkc19yZWluaXQgPSB0cnVlOwoKW1Nl
dmVyaXR5OiBIaWdoXQpUaGlzIGlzIGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgZG9lcyB0aGlz
IGRlZmVycmVkIGluaXRpYWxpemF0aW9uIGhhbmRsZQpVU0Itb25seSByZXBsdWdzIGNvcnJlY3Rs
eSBpZiB0aGUgVVNCIFBIWSByZW1haW5zIHBvd2VyZWQgb24/CgpXaGVuIGEgdXNlciB1bnBsdWdz
IGFuZCByZXBsdWdzIGEgVHlwZS1DIGNhYmxlLCB0aGlzIHNldHMKdWRwaHktPnBoeV9uZWVkc19y
ZWluaXQgPSB0cnVlLiBIb3dldmVyLCBpbiBjb25maWd1cmF0aW9ucyB3aGVyZSB0aGUgRFdDMwpj
b250cm9sbGVyIHJlbWFpbnMgYWN0aXZlIChlLmcuLCBmaXhlZCBob3N0IG1vZGUpIG9yIGR1cmlu
ZyByYXBpZCByZXBsdWdzLAp0aGUgVVNCIGNvbnRyb2xsZXIgZG9lc24ndCByZXN0YXJ0IGFuZCB0
aHVzIG5ldmVyIGNhbGxzIHBoeV9pbml0KCkgYWdhaW4uCgpCZWNhdXNlIHJrX3VkcGh5X3VzYjNf
cGh5X29wcyBvbmx5IGltcGxlbWVudHMgLmluaXQgYW5kIGhhcyBubyAucG93ZXJfb24KY2FsbGJh
Y2ssIHJrX3VkcGh5X3Bvd2VyX29uKCkgaXMgbmV2ZXIgaW52b2tlZCB0byBwcm9jZXNzIHRoZSBk
ZWZlcnJlZAppbml0aWFsaXphdGlvbiBmbGFnOgoKZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJv
Y2tjaGlwLXVzYmRwLmM6cmtfdWRwaHlfcG93ZXJfb24oKSB7CiAgICAuLi4KCX0gZWxzZSBpZiAo
dWRwaHktPnBoeV9uZWVkc19yZWluaXQpIHsKCQkuLi4KCQlyZXQgPSBya191ZHBoeV9pbml0KHVk
cGh5KTsKICAgIC4uLgp9CgpXaWxsIHRoaXMgY2F1c2UgdGhlIFVTQiBTdXBlclNwZWVkIGNvbm5l
Y3Rpb24gdG8gZmFpbCB0byB0cmFpbiBpZiB0aGUKY2FibGUgaXMgaW5zZXJ0ZWQgaW4gcmV2ZXJz
ZSBvcmllbnRhdGlvbj8KCj4gKwo+ICsJdWRwaHktPmZsaXAgPSBmbGlwcGVkOwo+ICAJcmtfdWRw
aHlfc2V0X3R5cGVjX2RlZmF1bHRfbWFwcGluZyh1ZHBoeSk7CgpbU2V2ZXJpdHk6IE1lZGl1bV0K
VGhpcyBpcyBhIHByZS1leGlzdGluZyBpc3N1ZSwgYnV0IGNhbiB0aGlzIGxlYWQgdG8gYSBkYXRh
IHJhY2Ugd2l0aCBjb25jdXJyZW50Cm9yaWVudGF0aW9uIHN3aXRjaGVzPwoKV2hpbGUgcmtfdWRw
aHlfb3JpZW5fc3dfc2V0KCkgYWNxdWlyZXMgdWRwaHktPm11dGV4IGFuZCB1cGRhdGVzIHRoZSBz
aGFyZWQgbGFuZQphbmQgbXV4IHNlbGVjdGlvbnMgaGVyZSB2aWEgcmtfdWRwaHlfc2V0X3R5cGVj
X2RlZmF1bHRfbWFwcGluZygpLApya191ZHBoeV9kcF9waHlfY29uZmlndXJlKCkgaXRlcmF0ZXMg
b3ZlciBhbmQgYWNjZXNzZXMgdGhlIHNoYXJlZCBsYW5lIHN0YXRlCmxvY2tsZXNzbHk6Cgpkcml2
ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYzpya191ZHBoeV9kcF9waHlfY29u
ZmlndXJlKCkgewogICAgLi4uCgkJZm9yIChpID0gMDsgaSA8IHVkcGh5LT5sYW5lczsgaSsrKSB7
CgkJCWxhbmUgPSB1ZHBoeS0+ZHBfbGFuZV9zZWxbaV07CiAgICAuLi4KCQkJCQkJICAgdWRwaHkt
PmxhbmVfbXV4X3NlbFtsYW5lXSkpOwogICAgLi4uCn0KCkNvdWxkIHRoaXMgY2F1c2UgcmtfdWRw
aHlfZHBfcGh5X2NvbmZpZ3VyZSgpIHRvIHJlYWQgcGFydGlhbGx5IHVwZGF0ZWQgYXJyYXlzCmlm
IHRoZSBEUCBjb250cm9sbGVyIHRyaWdnZXJzIGxpbmsgdHJhaW5pbmcgY29uY3VycmVudGx5IHdp
dGggYW4gb3JpZW50YXRpb24KY2hhbmdlPwoKPiAgCXJrX3VkcGh5X3VzYl9idmFsaWRfZW5hYmxl
KHVkcGh5LCB0cnVlKTsKPgoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlr
by5kZXYvIy9wYXRjaHNldC8yMDI2MDcxMC1yb2NrY2hpcC11c2JkcC1jbGVhbnVwLXYxMi0wLThi
NDFhOWE5YmVmMEBjb2xsYWJvcmEuY29tP3BhcnQ9MTkKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
