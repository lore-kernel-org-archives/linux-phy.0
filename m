Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9844FC43458
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 00:12:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zd/zFpt1WLEQoITLjKO6vDel+LZin8AqcHv8yUnyIvU=; b=20r+aiVCH6JdgB
	p++tRzDfThkZLt6m4WubBlcGv013BxKx6+zX6RMWcS/ls+QT2VxbIgM1JDI3cArHqNCYRie/7gPt+
	UpLpRlmmUMWbFlxdV7wm2z+IcyFBlrjLotK5Y1khc0Ur35tnxv/hvHeZnWsr2xSD4h89kotoiMOPs
	dLX2EY4dqqpCOsZyvp/YnABnhSM/BD6QEwYaGjfwsJM6Zi8MLEwlYqJPmpYIKfdqpi5pcjoyyd/ak
	4XmIT3g3ucyzvgBSB3Sci/A+hq9ArVOtbAa4mjcZUH+hYD/4Odkz8fZc0LQ+EQ5VyU3suNvPnM3eq
	nGNSpxyj0eiY7NfemDOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf52N-00000003Gsu-1Z0S;
	Thu, 02 Jul 2026 00:12:15 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf52M-00000003Gso-0KUl
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 00:12:14 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 255016001D;
	Thu,  2 Jul 2026 00:12:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C2D91F000E9;
	Thu,  2 Jul 2026 00:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782951132;
	bh=T73oHlPSx5J6i0sPi8/MKT318vDDBC6kL8Kyz/7zLSw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=b1rFURwyBJXWt6TVGcS2pstypMI3pkol5MXCqAQ1Tex/G4tWhqC68z8L/u3t457Xn
	 /AVRudQI9htax8iBQOElsEp4W7fJaihbBJcC4YkbW3TQZWKzTAqUAOIJ0KLaAbPreC
	 7+ak2yBCjs+HoZgBdwDCz59chs3EP6psQdYhjdvfcHtOYRHiBxpwOOUNCGxUOXcSKE
	 3M1URRdUNkkM46xYmTh7SJaVVhVavEUGR2CmgT2LQtc11ccuwZeH3xlfMVXgaDaG1l
	 /WV20wYa0NcJ1jfMITXvbMhE0lG6pxRnPgjvIj/yEbGpY+t/3Hbu7T8a4T6EwF6SLz
	 gPluLRNJ864uQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 37/38] phy: rockchip: usbdp: Re-init PHY on mux
 change
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: devicetree@vger.kernel.org, vkoul@kernel.org, robh@kernel.org, conor+dt@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org
In-Reply-To: <20260702-rockchip-usbdp-cleanup-v9-37-e31efbb62d2e@collabora.com>
References: <20260702-rockchip-usbdp-cleanup-v9-0-e31efbb62d2e@collabora.com>
 <20260702-rockchip-usbdp-cleanup-v9-37-e31efbb62d2e@collabora.com>
Date: Thu, 02 Jul 2026 00:12:11 +0000
Message-Id: <20260702001212.1C2D91F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSByZXR1cm4gdmFs
dWUgb2YgYHJrX3VkcGh5X3VwZGF0ZV9wb3dlcl9zdGF0ZSgpYCBpcyBpZ25vcmVkIGluIGBya191
ZHBoeV90eXBlY19tdXhfc2V0KClgLCBzaWxlbnRseSBtYXNraW5nIGhhcmR3YXJlIGluaXRpYWxp
emF0aW9uIGZhaWx1cmVzIGZyb20gdGhlIFR5cGUtQyBmcmFtZXdvcmsuCi0gW0hpZ2hdIEEgbG9n
aWMgZmxhdyBpbiBgcmtfdWRwaHlfdXBkYXRlX3Bvd2VyX3N0YXRlKClgIGNhdXNlcyBhIHBlcm1h
bmVudCBjbG9jayByZWZlcmVuY2UgbGVhayBhbmQgUEhZIHN0YXRlIGRlc3luY2hyb25pemF0aW9u
IGlmIGEgbXV4IGNoYW5nZSBvY2N1cnMgd2hlbiBubyBQSFkgY29uc3VtZXJzIGFyZSBhY3RpdmUu
Ci0tCgpjb21taXQgNTNhNWNlY2YwYWFiYTNhMGRlNWViYTI0YWI4MTc3Mjg4YjhmZjNlYQpBdXRo
b3I6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgoK
cGh5OiByb2NrY2hpcDogdXNiZHA6IFJlLWluaXQgUEhZIG9uIG11eCBjaGFuZ2UKCkVuc3VyZSB0
aGF0IHRoZSByaWdodCBwYXJ0IG9mIHRoZSBQSFkgYXJlIHBvd2VyZWQgdXAgd2hlbiB0aGUKbW9k
ZSBjaGFuZ2VzLiBUaGlzIGVuc3VyZXMgdGhlIFBIWSBpcyByZS1pbml0aWFsaXplZCB3aGVuIGNh
YmxlCm9yaWVudGF0aW9uIGNoYW5nZXMgb3Igd2hlbiBzd2l0Y2hpbmcgZnJvbSBEUC1vbmx5IHRv
IGEgbW9kZSB3aXRoClVTQiBzdXBwb3J0LgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9j
a2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9j
a2NoaXAtdXNiZHAuYwo+IGluZGV4IDczNWNlMWJmYWM3YWYuLmQwNTZkYTUzY2IxYzggMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiArKysg
Yi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+IEBAIC0xMzcyLDYg
KzEzNzIsOCBAQCBzdGF0aWMgaW50IHJrX3VkcGh5X3R5cGVjX211eF9zZXQoc3RydWN0IHR5cGVj
X211eF9kZXYgKm11eCwKPiAgCj4gIAlya191ZHBoeV9zZXRfdHlwZWNfc3RhdGUodWRwaHksIHN0
YXRlLT5tb2RlKTsKPiAgCj4gKwlya191ZHBoeV91cGRhdGVfcG93ZXJfc3RhdGUodWRwaHkpOwo+
ICsKCltTZXZlcml0eTogSGlnaF0KSXMgaXQgc2FmZSB0byBpZ25vcmUgdGhlIHJldHVybiB2YWx1
ZSBvZiBya191ZHBoeV91cGRhdGVfcG93ZXJfc3RhdGUoKSBoZXJlPyAKCklmIGhhcmR3YXJlIHNl
dHVwIHN0ZXBzIGxpa2UgUExMIGxvY2sgdGltZW91dHMgb3IgY2xvY2sgZW5hYmxlbWVudCBmYWls
LCB0aGUKZXJyb3IgaXMgZGlzY2FyZGVkIGFuZCB0aGUgVHlwZS1DIGZyYW1ld29yayBpcyBsZWZ0
IHVuYXdhcmUuIENvdWxkIHRoaXMgbGVhZAp0byBhc3luY2hyb25vdXMgU0Vycm9ycyBvciBrZXJu
ZWwgcGFuaWNzIGlmIHRoZSBEV0MzIGNvbnRyb2xsZXIgaXMgYWNjZXNzZWQKd2hpbGUgdGhlIFBI
WSBpcyBicm9rZW4gb3IgZGlzYWJsZWQ/CgpbU2V2ZXJpdHk6IEhpZ2hdCkRvZXMgY2FsbGluZyB0
aGlzIGZ1bmN0aW9uIGR1cmluZyBhIG11eCBjaGFuZ2Ugd2hlbiBubyBQSFkgY29uc3VtZXJzCmFy
ZSBhY3RpdmUgbGVhZCB0byBhIHBlcm1hbmVudCBjbG9jayByZWZlcmVuY2UgbGVhaz8KCklmIGEg
VHlwZS1DIG11eCBvciBvcmllbnRhdGlvbiBjaGFuZ2Ugb2NjdXJzIHdoaWxlIG5vIFBIWSBjb25z
dW1lcnMgYXJlIGFjdGl2ZQooZm9yIGV4YW1wbGUsIHRoZSBEUCBkcml2ZXIgaXNuJ3QgYm91bmQg
b3IgVVNCIGlzIGluIHJ1bnRpbWUgc3VzcGVuZCksCnVkcGh5LT5zd19tb2RlIGlzIDAsIG1ha2lu
ZyB0YXJnZXRfbW9kZSAwLgoKTG9va2luZyBhdCBya191ZHBoeV91cGRhdGVfcG93ZXJfc3RhdGUo
KSwgaXQgYnlwYXNzZXMgdGhlIGVhcmx5IGV4aXQgYmVjYXVzZQp1ZHBoeS0+b3JpZW50YXRpb25f
Y2hhbmdlZCBpcyB0cnVlLiBTaW5jZSB1ZHBoeS0+c3RhdHVzIGlzIDAsIGl0IGNhbGxzCnJrX3Vk
cGh5X3NldHVwKCkgd2hpY2ggaW5jcmVtZW50cyBjbG9jayByZWZjb3VudHM6Cgpkcml2ZXJzL3Bo
eS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYzpya191ZHBoeV91cGRhdGVfcG93ZXJfc3Rh
dGUoKSB7CiAgICAuLi4KCWlmICh1ZHBoeS0+c3RhdHVzID09IFVEUEhZX01PREVfTk9ORSkgewoJ
CS8qIFBvd2VyIHVwIChpbmNsLiBjbG9ja3MpICovCgkJcmV0ID0gcmtfdWRwaHlfc2V0dXAodWRw
aHksIHRhcmdldF9tb2RlKTsKICAgIC4uLgp9CgpJdCB0aGVuIGFzc2lnbnMgdWRwaHktPnN0YXR1
cyA9IHRhcmdldF9tb2RlICh3aGljaCBpcyAwKS4gQmVjYXVzZSB0aGUgc3RhdHVzCnJlbWFpbnMg
MCBkZXNwaXRlIGNsb2NrcyBiZWluZyBlbmFibGVkLCB0aGUgbmV4dCB0aW1lIGEgY29uc3VtZXIg
YWN0aXZhdGVzCnRoZSBQSFksIHJrX3VkcGh5X3NldHVwKCkgaXMgY2FsbGVkIGFnYWluLCBkb3Vi
bGUtaW5jcmVtZW50aW5nIHRoZSBjbG9jawpyZWZjb3VudHMuIAoKRHVyaW5nIHRlYXJkb3duLCBy
a191ZHBoeV9kaXNhYmxlKCkgd291bGQgb25seSBiZSBjYWxsZWQgb25jZSwgcHJldmVudGluZyB0
aGUKU29DIGZyb20gZW50ZXJpbmcgZGVlcGVyIGxvdy1wb3dlciBzdGF0ZXMuIENhbiB0aGlzIGxv
Z2ljIGJlIGFkanVzdGVkIHRvCnByb3Blcmx5IHRyYWNrIHdoZW4gY2xvY2tzIGFyZSBlbmFibGVk
IG9yIGF2b2lkIGVuYWJsaW5nIHRoZW0gaWYgdGFyZ2V0X21vZGUKaXMgMD8KCj4gIAlyZXR1cm4g
MDsKPiAgfQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9w
YXRjaHNldC8yMDI2MDcwMi1yb2NrY2hpcC11c2JkcC1jbGVhbnVwLXY5LTAtZTMxZWZiYjYyZDJl
QGNvbGxhYm9yYS5jb20/cGFydD0zNwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
