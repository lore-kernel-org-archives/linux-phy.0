Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0692EC43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 10:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Bi/iINPoqui0lRvyg3rAQf+Vk0Pjv0vKBR00NHnunY=; b=lS0R72/meMhZJb
	JvatfdnkBAQIoWmdvT3NwxcW4KIZFvG78ZdUrTDW/piic+yU9fdjj2oArWIT7TRS5qqUrFj/Rsnu0
	h3SCWs+5GOrkZyTWHGzfGmFfVGKYYz8FxZauUnHy9yLxXDAkGyaX8Nlzkid7QxnrjVGTBEYAnFwr3
	6Ku337YwMK1uDT3fNj7CUmCWFcrdV3mXTkOUj1Hk4bW2wwL+FOBmoHOhHjrHuzfF2AreAoNAPmD4S
	JF6JV/w4/Bcyt9kTUeBKEBU+GSBeg9LElKi/8bjXVq9xPm42322MBF3JHabsHqZsdsDAmSHNWdKXs
	GMlmZxSyehP7Pl1aAoGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weVkg-0000000GerJ-2OJv;
	Tue, 30 Jun 2026 10:31:38 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weVke-0000000Gepb-2bN7
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 10:31:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4BF2C41358;
	Tue, 30 Jun 2026 10:31:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BECBC1F000E9;
	Tue, 30 Jun 2026 10:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782815496;
	bh=b14d/IpRs75D1LuW5UO7rbgBPeqHh4b7fdVDGwyJqXs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CmQ88Nsp4KhnTTOW9nm4kpBlaHaqUM5oBB2/jjBU8lljPxQHNymEnUbieXpObwEG4
	 GU5wHAOZ9NBZJjqUiQ4NIN0B2eN3FoHVkGPkTLVT9MRWeQxCjI3RM9RMkzLYgBSRTK
	 MCkrm4KX8AUdYx92+Gs+l2Iih3LoCbnu7AR4Aa8btyVtk6p/ACl/GnB2wCq31T/TFh
	 YaRkcBvCqqpq0JeXShGEmSeq3yNa9hlWRs7ftkZ8PertR8qZIbM4RAazKq0v0iPhqH
	 ZrR7wNUco8yy/vT+s/GOxD7vuqF2taIADEcmWg49CtT6uCBPkkDiWOtRNhID4R+vdX
	 F74jW8HJOuQEw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 1/5] phy: fsl-imx8mq-usb: fix typec switch leak on
 probe error path
To: "Xu Yang" <xu.yang_2@oss.nxp.com>
Cc: linux-phy@lists.infradead.org, Frank.Li@kernel.org, vkoul@kernel.org, imx@lists.linux.dev, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260630-imx8mp-usb-phy-improvement-v5-1-25d616403844@nxp.com>
References: <20260630-imx8mp-usb-phy-improvement-v5-0-25d616403844@nxp.com>
 <20260630-imx8mp-usb-phy-improvement-v5-1-25d616403844@nxp.com>
Date: Tue, 30 Jun 2026 10:31:35 +0000
Message-Id: <20260630103135.BECBC1F000E9@smtp.kernel.org>
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
IFtIaWdoXSBSYWNlIGNvbmRpdGlvbiBjYXVzaW5nIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZSBk
dXJpbmcgZGV2aWNlIHByb2JlLgotIFtIaWdoXSBVc2UtQWZ0ZXItRnJlZSBvZiBkZXZtLWFsbG9j
YXRlZCBkcml2ZXIgZGF0YSBkdXJpbmcgZGV2aWNlIHVuYmluZC4KLS0KCmNvbW1pdCBkNjRmMzRj
ZmMxNWQyNmY1NzdlNWZmM2ExNzU3MmNmOTcxZTY1Njk2CkF1dGhvcjogRmVsaXggR3UgPHVzdGMu
Z3VAZ21haWwuY29tPgoKcGh5OiBmc2wtaW14OG1xLXVzYjogZml4IHR5cGVjIHN3aXRjaCBsZWFr
IG9uIHByb2JlIGVycm9yIHBhdGgKCklmIHByb2JlIGZhaWxzIGFmdGVyIGlteDk1X3VzYl9waHlf
Z2V0X3RjYSgpIHN1Y2NlZWRzLCB0aGUgdHlwZWMKc3dpdGNoIGxlYWtzIGJlY2F1c2UgdGhlIG9u
bHkgY2xlYW51cCBwYXRoIHdhcyBpbiAucmVtb3ZlLCB3aGljaApuZXZlciBydW5zIG9uIHByb2Jl
IGZhaWx1cmUuIFVzZSBkZXZtX2FkZF9hY3Rpb25fb3JfcmVzZXQoKSBzbyB0aGUKc3dpdGNoIGlz
IGNsZWFuZWQgdXAgb24gYm90aCBwcm9iZSBmYWlsdXJlIGFuZCBkcml2ZXIgcmVtb3ZhbC4KCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlteDhtcS11c2IuYyBi
L2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlteDhtcS11c2IuYwo+IC0tLSBhL2RyaXZl
cnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlteDhtcS11c2IuYwo+ICsrKyBiL2RyaXZlcnMvcGh5
L2ZyZWVzY2FsZS9waHktZnNsLWlteDhtcS11c2IuYwpbIC4uLiBdCj4gQEAgLTI2NiwxNyArMjY3
LDExIEBAIHN0YXRpYyBzdHJ1Y3QgdGNhX2JsayAqaW14OTVfdXNiX3BoeV9nZXRfdGNhKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYsCj4gIAl0Y2EtPm9yaWVudGF0aW9uID0gVFlQRUNfT1JJ
RU5UQVRJT05fTk9STUFMOwo+ICAJdGNhLT5zdyA9IHRjYV9ibGtfZ2V0X3R5cGVjX3N3aXRjaChw
ZGV2LCBpbXhfcGh5KTsKCltTZXZlcml0eTogSGlnaF0KVGhpcyBpcyBhIHByZS1leGlzdGluZyBp
c3N1ZSwgYnV0IGRvZXMgdGhpcyBjb2RlIGludHJvZHVjZSBhIHJhY2UKY29uZGl0aW9uIGR1cmlu
ZyBwcm9iZT8KCldoZW4gdGNhX2Jsa19nZXRfdHlwZWNfc3dpdGNoKCkgcmVnaXN0ZXJzIHRoZSBz
d2l0Y2gsIGl0IGlzIGltbWVkaWF0ZWx5CnZpc2libGUgdG8gY29uc3VtZXJzLiBIb3dldmVyLCBp
bXhfcGh5LT50Y2EgaGFzIG5vdCBiZWVuIGFzc2lnbmVkIHlldC4KSXQgaXMgb25seSBhc3NpZ25l
ZCBhZnRlciByZXR1cm5pbmcgZnJvbSBpbXg5NV91c2JfcGh5X2dldF90Y2EoKSBpbgppbXg4bXFf
dXNiX3BoeV9wcm9iZSgpLgoKSWYgYSBjb25zdW1lciBjb25jdXJyZW50bHkgZmluZHMgdGhlIHN3
aXRjaCBhbmQgY2FsbHMgdHlwZWNfc3dpdGNoX3NldCgpLAp0Y2FfYmxrX3R5cGVjX3N3aXRjaF9z
ZXQoKSB3aWxsIGFjY2VzcyBpbXhfcGh5LT50Y2EtPm9yaWVudGF0aW9uLApkZXJlZmVyZW5jaW5n
IGEgTlVMTCBwb2ludGVyLgoKPiAgCj4gLQlyZXR1cm4gdGNhOwo+IC19Cj4gLQo+IC1zdGF0aWMg
dm9pZCBpbXg5NV91c2JfcGh5X3B1dF90Y2Eoc3RydWN0IGlteDhtcV91c2JfcGh5ICppbXhfcGh5
KQo+IC17Cj4gLQlzdHJ1Y3QgdGNhX2JsayAqdGNhID0gaW14X3BoeS0+dGNhOwo+IC0KPiAtCWlm
ICghdGNhKQo+IC0JCXJldHVybjsKPiArCXJldCA9IGRldm1fYWRkX2FjdGlvbl9vcl9yZXNldCgm
cGRldi0+ZGV2LCB0Y2FfYmxrX3B1dF90eXBlY19zd2l0Y2gsIHRjYS0+c3cpOwoKW1NldmVyaXR5
OiBIaWdoXQpUaGlzIGlzIGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgY291bGQgdGhpcyBkZXZt
IGNsZWFudXAgbGVhZCB0byBhCnVzZS1hZnRlci1mcmVlIGR1cmluZyBkcml2ZXIgdW5iaW5kPwoK
VGhlIGlteF9waHkgYW5kIHRjYSBzdHJ1Y3R1cmVzIGFyZSBhbGxvY2F0ZWQgdmlhIGRldm1fa3ph
bGxvYygpLiBEdXJpbmcKdW5iaW5kLCB0aGlzIGRldnJlcyBhY3Rpb24gd2lsbCBleGVjdXRlIHRj
YV9ibGtfcHV0X3R5cGVjX3N3aXRjaCgpLCB3aGljaApjYWxscyB0eXBlY19zd2l0Y2hfdW5yZWdp
c3RlcigpLgoKV2hpbGUgdHlwZWNfc3dpdGNoX3VucmVnaXN0ZXIoKSB1bmxpbmtzIHRoZSBkZXZp
Y2UsIGlmIGEgY29uc3VtZXIgc3RpbGwKaG9sZHMgYSByZWZlcmVuY2UgdG8gdGhlIHN3aXRjaCwg
dGhlIG9iamVjdCBpdHNlbGYgd2lsbCBvdXRsaXZlIHRoZSBkcml2ZXIKdW5iaW5kLiBTaW5jZSBk
ZXZyZXMgaW1tZWRpYXRlbHkgZnJlZXMgaW14X3BoeSBhbmQgdGNhIGFmdGVyIHRoZSBhY3Rpb24K
cmV0dXJucywgYW55IHN1YnNlcXVlbnQgY2FsbCB0byB0Y2FfYmxrX3R5cGVjX3N3aXRjaF9zZXQo
KSBieSB0aGUgYWN0aXZlCmNvbnN1bWVyIHdpbGwgYWNjZXNzIGZyZWVkIG1lbW9yeS4KCj4gKwlp
ZiAocmV0KQo+ICsJCXJldHVybiBFUlJfUFRSKHJldCk7Cj4gIAo+IC0JdGNhX2Jsa19wdXRfdHlw
ZWNfc3dpdGNoKHRjYS0+c3cpOwo+ICsJcmV0dXJuIHRjYTsKPiAgfQoKLS0gClNhc2hpa28gQUkg
cmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDYzMC1pbXg4bXAt
dXNiLXBoeS1pbXByb3ZlbWVudC12NS0wLTI1ZDYxNjQwMzg0NEBueHAuY29tP3BhcnQ9MQoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
