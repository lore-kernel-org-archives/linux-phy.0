Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57E85C44501
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jul 2026 19:26:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XFY0cnP6I0wbdOd/W5M4dB8hwG6bwIAg3I4qDzMUTLA=; b=2wYxsZc6GZvWeK
	23L8Wy0FQ+DtewDciBVNiVay9hboz8jwEZ4xh+PzyePpjMDDGLD+Y/Eh92hsTmBJA8S5NsupmRMwm
	eU/VQM/3D5LmsfutYUhfNiFa8TU2j6OUwKz1CB77Nhy7Av18kF06u4VMhbc5OZQj+oKSOPHNl2CZm
	kMypuJ75vUO+qEjKcot8JGxTm84nl8xDrBppKu1yXFwdS+SIrMA0f6UVkUDkeoQ80TY7aSDXdwxGf
	OBTYN5aWmD85ABwfCCrlIwCP2tcays04m9Eq+XIi4rL5kSiWZpZejAjHDWiJmAYA0RWaavL3uvtkC
	GfM/2n2VMvS5n5Yma58A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whuOB-00000003Sot-0XJr;
	Thu, 09 Jul 2026 19:26:27 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whuO9-00000003SoT-2doY
	for linux-phy@lists.infradead.org;
	Thu, 09 Jul 2026 19:26:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E5F586137D;
	Thu,  9 Jul 2026 19:26:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 294D81F000E9;
	Thu,  9 Jul 2026 19:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783625184;
	bh=f/V8UmMi87TKTb0msRzTC4tzI6eIXmFO3rct+enhaR4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BJaA6s9ldubRTi8sBBVSjcXqwrp1+tDAGjtMp6Bl72CuNERtPKPhfWyNTUCK5cYga
	 fLUsOfL4ORYZ2I4jIVtY/Gby7Sp4bR1p3/QZpE0IMO+648L4UYC3WYH0eZbVBGTI6S
	 r01zQfSraIWKgc+yWn1eYXgHWd8Zsb+fmhV9uIIIrXMV1qhh2d5lcpoOmHsR3dznRD
	 4ruNPKY+20lTu/j5ZrpV24W2EWMyX7NweLWeFs7LYFE2et2AKYZrFdMxwkvHG4brkq
	 CRaaQyeDxjcG/igIpITGiaoNkHVKWEQ3VCqJ9E40AHxaf5ESfy/3Xyq6k3k3rBi8/D
	 +HvC17jhthx/A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 19/36] phy: rockchip: usbdp: Re-init the PHY on
 orientation change
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: devicetree@vger.kernel.org, olteanv@gmail.com, robh@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org
In-Reply-To: <20260709-rockchip-usbdp-cleanup-v11-19-a149ac60f76c@collabora.com>
References: <20260709-rockchip-usbdp-cleanup-v11-0-a149ac60f76c@collabora.com>
 <20260709-rockchip-usbdp-cleanup-v11-19-a149ac60f76c@collabora.com>
Date: Thu, 09 Jul 2026 19:26:23 +0000
Message-Id: <20260709192624.294D81F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBUaGUgVVNCIDMuMCBQSFkgaGFyZHdhcmUgaXMgbm90IHJlLWluaXRpYWxpemVkIGR1
cmluZyBhbiBvcmllbnRhdGlvbiBzd2l0Y2ggZm9yIFVTQi1vbmx5IGRldmljZXMsIGNhdXNpbmcg
VVNCIDMuMCB0byBzaWxlbnRseSBmYWlsLgotLQoKLS0tIFBhdGNoIFsxOV06IFtQQVRDSCB2MTEg
MTkvMzZdIHBoeTogcm9ja2NoaXA6IHVzYmRwOiBSZS1pbml0IHRoZSBQSFkgb24gb3JpZW50YXRp
b24gY2hhbmdlIC0tLQpjb21taXQgNjhjYjUyYzE3OGM3ZGI3ZDYzYmJlM2Q5ZWQxYmYzNzNkM2Mw
NDBiZQpBdXRob3I6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJv
cmEuY29tPgoKcGh5OiByb2NrY2hpcDogdXNiZHA6IFJlLWluaXQgdGhlIFBIWSBvbiBvcmllbnRh
dGlvbiBjaGFuZ2UKClRoaXMgY29tbWl0IHVwZGF0ZXMgdGhlIFR5cGUtQyBvcmllbnRhdGlvbiBz
d2l0Y2ggY2FsbGJhY2sgdG8gdHJhY2sgY2FibGUKb3JpZW50YXRpb24gY2hhbmdlcy4gSXQgc2V0
cyBhIGZsYWcgdG8gdHJpZ2dlciBQSFkgcmUtaW5pdGlhbGl6YXRpb24gd2hlbgp0aGUgY2FibGUg
aXMgZmxpcHBlZCB0byBmaXggRGlzcGxheVBvcnQgZnVuY3Rpb25hbGl0eS4KCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jIGIvZHJpdmVycy9w
aHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2Nr
Y2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3Bo
eS1yb2NrY2hpcC11c2JkcC5jCj4gQEAgLTYyMCw2ICs2MjAsNyBAQCBzdGF0aWMgaW50IHJrX3Vk
cGh5X29yaWVuX3N3X3NldChzdHJ1Y3QgdHlwZWNfc3dpdGNoX2RldiAqc3csCj4gIAkJCQkgZW51
bSB0eXBlY19vcmllbnRhdGlvbiBvcmllbikKPiAgewo+ICAJc3RydWN0IHJrX3VkcGh5ICp1ZHBo
eSA9IHR5cGVjX3N3aXRjaF9nZXRfZHJ2ZGF0YShzdyk7Cj4gKwlib29sIGZsaXBwZWQgPSBvcmll
biA9PSBUWVBFQ19PUklFTlRBVElPTl9SRVZFUlNFOwo+ICAKPiAgCW11dGV4X2xvY2soJnVkcGh5
LT5tdXRleCk7Cj4gIAo+IEBAIC02MzEsNyArNjMyLDEwIEBAIHN0YXRpYyBpbnQgcmtfdWRwaHlf
b3JpZW5fc3dfc2V0KHN0cnVjdCB0eXBlY19zd2l0Y2hfZGV2ICpzdywKPiAgCQlnb3RvIHVubG9j
a19yZXQ7Cj4gIAl9Cj4gIAo+IC0JdWRwaHktPmZsaXAgPSBvcmllbiA9PSBUWVBFQ19PUklFTlRB
VElPTl9SRVZFUlNFOwo+ICsJaWYgKHVkcGh5LT5mbGlwICE9IGZsaXBwZWQpCj4gKwkJdWRwaHkt
PnBoeV9uZWVkc19yZWluaXQgPSB0cnVlOwoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlzIGEgcHJl
LWV4aXN0aW5nIGlzc3VlLCBidXQgZG9lcyB0aGlzIGFjdHVhbGx5IGZpeCB0aGUgb3JpZW50YXRp
b24gc3dhcApmb3IgZmFzdCByZXBsdWdzIG9uIFVTQi1vbmx5IGRldmljZXM/CgpJZiBhIHVzZXIg
cmFwaWRseSB1bnBsdWdzIGFuZCByZXBsdWdzIGEgVHlwZS1DIGNhYmxlIHVwc2lkZSBkb3duLCB0
aGUgRFdDMwpjb250cm9sbGVyJ3MgNS1zZWNvbmQgcnVudGltZSBQTSBhdXRvc3VzcGVuZCBkZWxh
eSBtZWFucyB0aGUgUEhZIGFjdGl2ZSBzdGF0ZQppcyBub3QgZHluYW1pY2FsbHkgY3ljbGVkIHZp
YSBwaHlfaW5pdCBvciBwaHlfcG93ZXJfb24uCgpCZWNhdXNlIHJrX3VkcGh5X29yaWVuX3N3X3Nl
dCgpIG9ubHkgc2V0cyBhIGRlZmVycmVkIHBoeV9uZWVkc19yZWluaXQgZmxhZywKdGhlIGhhcmR3
YXJlIGxhbmUgbXV4aW5nIHdpbGwgcmVtYWluIHN0dWNrIGluIHRoZSBvbGQgb3JpZW50YXRpb24g
aWYgdGhlIFBIWQppcyBhbHJlYWR5IGFjdGl2ZS4gVGhpcyBjYXVzZXMgVVNCIDMuMCBjb25uZWN0
aW9ucyB0byBzaWxlbnRseSBmYWlsIGFuZCBmYWxsCmJhY2sgdG8gVVNCIDIuMCBzcGVlZHMuCgpJ
cyB0aGVyZSBhIG1lY2hhbmlzbSB0byBmb3JjZSB0aGUgaGFyZHdhcmUgcmUtaW5pdGlhbGl6YXRp
b24gaW1tZWRpYXRlbHkgaWYKdGhlIFBIWSBpcyBjdXJyZW50bHkgYWN0aXZlIGR1cmluZyB0aGlz
IHN3YXA/Cgo+ICsKPiArCXVkcGh5LT5mbGlwID0gZmxpcHBlZDsKPiAgCXJrX3VkcGh5X3NldF90
eXBlY19kZWZhdWx0X21hcHBpbmcodWRwaHkpOwo+ICAJcmtfdWRwaHlfdXNiX2J2YWxpZF9lbmFi
bGUodWRwaHksIHRydWUpOwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlr
by5kZXYvIy9wYXRjaHNldC8yMDI2MDcwOS1yb2NrY2hpcC11c2JkcC1jbGVhbnVwLXYxMS0wLWEx
NDlhYzYwZjc2Y0Bjb2xsYWJvcmEuY29tP3BhcnQ9MTkKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
