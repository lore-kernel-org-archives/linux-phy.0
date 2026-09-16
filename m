Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CACAC88E5C
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 10:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wtCLTSKs4wwedH5R2FUGkeyUVAhHovMvDOqKMheuGHY=; b=MPUs+eobFZ4z/b
	2RckooeLs6nyYMXmVf85KjRDXl0WpZoPEaNXcC11Vfqot8bOFe209V2WRPL+2fG4idXKZF7f8RpRz
	jiRgYmTZ1VP36j2gRdHD8cw772YHSmZlR5IQdolDSu3R9zU8l6MG6pP4jgHag+yO1jtDBi/T5R3JZ
	QDjkaO4YzIyjyO/Uj6qkkhQeFXupSh65osVbn6H87OLTHE0XztYLTVu9eXFjfCykDkuAPYO25Rq38
	QpJ6p86NicWeB4T7rPJavaq1lUmHOPnhaEWA0PjNO85YEn7ljsVk1Jk/ptWojqosPAK5HbTmfKjqV
	CXiTruMxKqwoz4TGtHVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6n2w-00000008zdA-0wfw;
	Wed, 16 Sep 2026 10:39:22 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6n2u-00000008zcj-2l6q
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 10:39:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3009342DE3;
	Wed, 16 Sep 2026 10:39:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6A781F0089D;
	Wed, 16 Sep 2026 10:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789555160;
	bh=xXuF4ts6C5rRFSmgXBKj7pP5DmLJ7pInvJEhHuliPdY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=OR2pjRqGOi3ZaNc5R3RaqiVDf4toKqbxT2dlhfPm3KdPJV0njjLbgq0rzyBDuDaMw
	 ajqTRT7M8X4fqOWhPCor/zG6CxYkbbqUsUayNULgT1XcQx7PMfJ9JmfoLwpH+cm3XD
	 n6jmFNwThsJPLmhYWen3598ejs89RbVL1aCAoftvKkqS6Zv/GlDKVyh4uLverNxT+K
	 KgRTSUD0/AcI/qZt7mVHu949EOVpZD8u2EsKgq6xAthN577FiEULACLrvszkIJrh4n
	 NJ6QIYoLeLKQTMEl79IoZi0aNvk/vBtIgxDkPI4+SwdVcyv9xXV4Y2ShgxvBO3PXYd
	 LJIfmrqF/s0fA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: qcs8300: Add qref and refgen
 supply for PCIe PHYs
To: "Ziyue Zhang" <ziyue.zhang@oss.qualcomm.com>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260916102023.2054761-4-ziyue.zhang@oss.qualcomm.com>
References: <20260916102023.2054761-1-ziyue.zhang@oss.qualcomm.com>
 <20260916102023.2054761-4-ziyue.zhang@oss.qualcomm.com>
Date: Wed, 16 Sep 2026 10:39:19 +0000
Message-Id: <20260916103919.B6A781F0089D@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIHBjaWU6IHByb2JlIGZh
aWx1cmUgb24gU0E4Nzc1cCBkdWUgdG8gdW5jb25kaXRpb25hbGx5IHJlcXVpcmVkIFFDUzgzMDAg
d29ya2Fyb3VuZCByZWd1bGF0b3IKLS0KCmNvbW1pdCAxYzdhMTFiZWFjOTA4MGE1YWZmYjA2MGMy
ZjBiOGMyMDExY2UxMDliCkF1dGhvcjogWml5dWUgWmhhbmcgPHppeXVlLnpoYW5nQG9zcy5xdWFs
Y29tbS5jb20+ClN1YmplY3Q6IGFybTY0OiBkdHM6IHFjb206IHFjczgzMDA6IEFkZCBxcmVmIGFu
ZCByZWZnZW4gc3VwcGx5IGZvciBQQ0llIFBIWXMKClRoaXMgY29tbWl0IGFkZHMgdmRkYS1xcmVm
LXN1cHBseSBhbmQgdmRkYS1yZWZnZW4tc3VwcGx5IHRvIGJvYXJkIERUUyBmaWxlcyBhbmQKcmVm
Z2VuLXN1cHBseSB0byB0aGUgU29DIERUU0kgZm9yIFFDUzgzMDAgZHVlIHRvIGhhcmR3YXJlIHJl
cXVpcmVtZW50cyBmb3IKc3RhYmxlIG9wZXJhdGlvbi4gSXQgYWxzbyB1cGRhdGVzIHRoZSBkcml2
ZXIgdG8gdm90ZSBmb3IgcmVmZ2VuIGFzIGEKd29ya2Fyb3VuZCBmb3IgYSBRQ1M4MzAwIGhhcmR3
YXJlIGlzc3VlLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20t
cW1wLXBjaWUuYyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLmMKPiBp
bmRleCBkYTgzMzU4Yzk3ZWFkLi5hYjgxYzZlNTg0YTg0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
cGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLmMKPiArKysgYi9kcml2ZXJzL3BoeS9xdWFs
Y29tbS9waHktcWNvbS1xbXAtcGNpZS5jCj4gQEAgLTQwOTQsNiArNDA5NCwxMCBAQCBzdGF0aWMg
Y29uc3QgY2hhciAqIGNvbnN0IHNtODU1MF9xbXBfcGh5X3ZyZWdfbFtdID0gewo+ICAJInZkZGEt
cGh5IiwgInZkZGEtcGxsIiwgInZkZGEtcXJlZiIsCj4gIH07Cj4gIAo+ICtzdGF0aWMgY29uc3Qg
Y2hhciAqIGNvbnN0IHNhODc3NXBfcW1wX3BoeV92cmVnX2xbXSA9IHsKPiArCSJ2ZGRhLXBoeSIs
ICJ2ZGRhLXBsbCIsICJ2ZGRhLXFyZWYiLCAidmRkYS1yZWZnZW4iLCAicmVmZ2VuIiwKPiArfTsK
PiArCgpbU2V2ZXJpdHk6IEhpZ2hdCkRvZXMgdGhpcyB1bmNvbmRpdGlvbmFsbHkgcmVxdWlyZSB0
aGUgcmVmZ2VuIHN1cHBseSBmb3IgYW55IGNvbmZpZ3VyYXRpb24KdXNpbmcgc2E4Nzc1cF9xbXBf
cGh5X3ZyZWdfbCBpbiBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNpZS5jPwoK
QWNjb3JkaW5nIHRvIHRoZSBEVCBiaW5kaW5ncywgcmVmZ2VuLXN1cHBseSBpcyBhIGhhcmR3YXJl
IHdvcmthcm91bmQgcmVxdWlyZWQKb25seSBmb3IgUUNTODMwMCwgYW5kIFNBODc3NVAgZGV2aWNl
IHRyZWVzIGNvcnJlY3RseSBkbyBub3QgZGVmaW5lIGl0LgoKV2hlbiBxbXBfcGNpZV92cmVnX2lu
aXQoKSBjYWxscyBkZXZtX3JlZ3VsYXRvcl9idWxrX2dldCgpIG9uIFNBODc3NVAgYm9hcmRzLApp
dCB3aWxsIGZhaWwgdG8gZmluZCByZWZnZW4sIHdoaWNoIHdpbGwgYWJvcnQgdGhlIFBIWSBwcm9i
ZSBhbmQgY29tcGxldGVseSBicmVhawpQQ0llIGZ1bmN0aW9uYWxpdHkgb24gU0E4Nzc1UC4KCj4g
IC8qIGxpc3Qgb2YgcmVzZXRzICovCj4gIHN0YXRpYyBjb25zdCBjaGFyICogY29uc3QgaXBxODA3
NF9wY2llcGh5X3Jlc2V0X2xbXSA9IHsKWyAuLi4gXQo+IEBAIC01MzI0LDggKzUzMjgsOCBAQCBz
dGF0aWMgY29uc3Qgc3RydWN0IHFtcF9waHlfY2ZnIHNhODc3NXBfcW1wX2dlbjR4Ml9wY2llcGh5
X2NmZyA9IHsKPiAgCj4gIAkucmVzZXRfbGlzdAkJPSBzZG04NDVfcGNpZXBoeV9yZXNldF9sLAo+
ICAJLm51bV9yZXNldHMJCT0gQVJSQVlfU0laRShzZG04NDVfcGNpZXBoeV9yZXNldF9sKSwKPiAt
CS52cmVnX2xpc3QJCT0gcW1wX3BoeV92cmVnX2wsCj4gLQkubnVtX3ZyZWdzCQk9IEFSUkFZX1NJ
WkUocW1wX3BoeV92cmVnX2wpLAo+ICsJLnZyZWdfbGlzdAkJPSBzYTg3NzVwX3FtcF9waHlfdnJl
Z19sLAo+ICsJLm51bV92cmVncwkJPSBBUlJBWV9TSVpFKHNhODc3NXBfcW1wX3BoeV92cmVnX2wp
LAoKW1NldmVyaXR5OiBIaWdoXQpXaWxsIHRoZSBzYTg3NzVwX3FtcF9nZW40eDJfcGNpZXBoeV9j
ZmcgY29uZmlndXJhdGlvbiBpbmNvcnJlY3RseSBpbmhlcml0IHRoZSAKcmVxdWlyZW1lbnQgZm9y
IHRoZSBRQ1M4MzAwLXNwZWNpZmljIHJlZmdlbiBzdXBwbHkgYnkgdXNpbmcgdGhpcyBzaGFyZWQg
bGlzdD8KCj4gIAkucmVncwkJCT0gcGNpZXBoeV92NV9yZWdzX2xheW91dCwKPiAgCj4gIAkucHdy
ZG5fY3RybAkJPSBTV19QV1JETiB8IFJFRkNMS19EUlZfRFNCTCwKWyAuLi4gXQo+IEBAIC01MzY1
LDggKzUzNjksOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHFtcF9waHlfY2ZnIHNhODc3NXBfcW1w
X2dlbjR4NF9wY2llcGh5X2NmZyA9IHsKPiAgCj4gIAkucmVzZXRfbGlzdAkJPSBzZG04NDVfcGNp
ZXBoeV9yZXNldF9sLAo+ICAJLm51bV9yZXNldHMJCT0gQVJSQVlfU0laRShzZG04NDVfcGNpZXBo
eV9yZXNldF9sKSwKPiAtCS52cmVnX2xpc3QJCT0gcW1wX3BoeV92cmVnX2wsCj4gLQkubnVtX3Zy
ZWdzCQk9IEFSUkFZX1NJWkUocW1wX3BoeV92cmVnX2wpLAo+ICsJLnZyZWdfbGlzdAkJPSBzYTg3
NzVwX3FtcF9waHlfdnJlZ19sLAo+ICsJLm51bV92cmVncwkJPSBBUlJBWV9TSVpFKHNhODc3NXBf
cW1wX3BoeV92cmVnX2wpLAoKW1NldmVyaXR5OiBIaWdoXQpDb3VsZCB0aGUgc2E4Nzc1cF9xbXBf
Z2VuNHg0X3BjaWVwaHlfY2ZnIGNvbmZpZ3VyYXRpb24gYWxzbyBiZSBhZmZlY3RlZCBieQp0aGlz
IHJlcXVpcmVtZW50IHRocm91Z2ggdGhlIHNoYXJlZCBsaXN0PwoKPiAgCS5yZWdzCQkJPSBwY2ll
cGh5X3Y1X3JlZ3NfbGF5b3V0LAoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2Fz
aGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDkxNjEwMjAyMy4yMDU0NzYxLTEteml5dWUuemhhbmdA
b3NzLnF1YWxjb21tLmNvbT9wYXJ0PTMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
