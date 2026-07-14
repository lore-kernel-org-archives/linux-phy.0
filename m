Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2CACC44507
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jul 2026 20:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3jwke5o71vRjfJVV3AWxFcmzVuxOZbGjWNDXKEzbZOY=; b=JkHpJ5twtRdZxx
	jkD1zYHy775RWupg8LN/YlcSgxVfj0dOLrDK0iMfTCxkqSyKgiDL7268aFgLBlWjIYceFyukH8//q
	WC1Ergt1lGBfkACrNm/EARo14NBJgsjCDSN2xjVb8H8ogMmxO+TF1ht9Q2cgncBgb0wlqpL4fxPHi
	6D92Qme7ggQhxCH3zxM1vA8ZpEzYSxTxAZsh4tU9MsVfoj/GtxeCsF4MvqjDc5ITHWz0uS0cLsCvN
	Tu0CA9hpBMA9L1Y0mNN0elUXO8FuqO10e0NwNgXfdrxphez6ui01fgeIhe4aJF7S9Ps442jfe2UXm
	wgu0Ai6AeIa4BIXbslbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjjIb-0000000DB6M-1XC0;
	Tue, 14 Jul 2026 20:00:13 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjjIa-0000000DB6C-00ai
	for linux-phy@lists.infradead.org;
	Tue, 14 Jul 2026 20:00:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1DC3360103;
	Tue, 14 Jul 2026 20:00:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 577BA1F000E9;
	Tue, 14 Jul 2026 20:00:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784059209;
	bh=o5xU0pMTO/MxS+6hNzLwtvewHPhm9jPPmO/D1RepThs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ngSbY1/SwnmidRX7pEkd1QLbkKA9tO/XoZPrtZdjbk2qpxr88rC6yoOExxry3CctX
	 OmMecKFv/UE6ji6IFR+7gwG2EocKW+thUo6wQ+aC9xYcajNLR3TkIoTt8Wr4v+0Vvr
	 1n7eChodCnQ1bddV0Jt9bl6CNu+7qr/90XzwFQoi866UIgN+uzpH3A7QqBqh0A1L69
	 ZlrpRaXMaaL0Dgw6THZUUDiBSTn5L/HCzHM0UGFNhcO6P4Y57WRzim/zpg6iIvsyr2
	 1OVtXBZfgMq7Fd4axQikWE1sWQD2XIEpT5JMyQlzHZDU5kT5zf7Wh/lYytcIjyOPAb
	 ymVvzpEP2fG3w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 05/35] phy: rockchip: usbdp: Handle missing
 clock-names DT property gracefully
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, olteanv@gmail.com
In-Reply-To: <20260714-rockchip-usbdp-cleanup-v13-5-6cb3e769d4c5@collabora.com>
References: <20260714-rockchip-usbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com>
 <20260714-rockchip-usbdp-cleanup-v13-5-6cb3e769d4c5@collabora.com>
Date: Tue, 14 Jul 2026 20:00:08 +0000
Message-Id: <20260714200009.577BA1F000E9@smtp.kernel.org>
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
IFtIaWdoXSBNaXNzaW5nIE5VTEwgcG9pbnRlciBjaGVja3MgZm9yIGNsb2NrIElEIHN0cmluZ3Mg
Y2F1c2Uga2VybmVsIHBhbmljcyBvbiBub24tY29tcGxpYW50IGRldmljZSB0cmVlcy4KLS0KCi0t
LSBQYXRjaCBbNV06IFtQQVRDSCB2MTMgMDUvMzVdIHBoeTogcm9ja2NoaXA6IHVzYmRwOiBIYW5k
bGUgbWlzc2luZyBjbG9jay1uYW1lcyBEVCBwcm9wZXJ0eSBncmFjZWZ1bGx5IC0tLQpjb21taXQg
MDFhYmUyYzM0MTdkZjMwMjQxMDRhYzExNmQxNGE5MzA4OTFkMDUwMApBdXRob3I6IFNlYmFzdGlh
biBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgoKcGh5OiByb2NrY2hp
cDogdXNiZHA6IEhhbmRsZSBtaXNzaW5nIGNsb2NrLW5hbWVzIERUIHByb3BlcnR5IGdyYWNlZnVs
bHkKClRoZSBjb21taXQgZml4ZXMgYSBOVUxMIHBvaW50ZXIgZGVyZWZlcmVuY2UgaW4gcmtfdWRw
aHlfY2xrX2luaXQoKSB0aGF0Cm9jY3VycyBpZiBhIGRldmljZSB0cmVlIGhhcyBhIGNsb2NrcyBw
cm9wZXJ0eSBidXQgbm8gY2xvY2stbmFtZXMKcHJvcGVydHkuIEl0IGRvZXMgdGhpcyBieSBza2lw
cGluZyBjbG9ja3Mgd2l0aCBhIE5VTEwgaWQgc3RyaW5nLgoKQ2xvc2VzOiBodHRwczovL3Nhc2hp
a28uZGV2LyMvbWVzc2FnZS8yMDI2MDYxOTE1NDM0OS4wNzEzMjFGMDAwRTklNDBzbXRwLmtlcm5l
bC5vcmcKCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11
c2JkcC5jIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiBpbmRl
eCAyODQ1YTAxMmVhZmNjLi4zZmM4MjIyZmNhZWMyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5
L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gKysrIGIvZHJpdmVycy9waHkvcm9ja2No
aXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiBAQCAtNDMyLDYgKzQzMiw5IEBAIHN0YXRpYyBpbnQg
cmtfdWRwaHlfY2xrX2luaXQoc3RydWN0IHJrX3VkcGh5ICp1ZHBoeSwgc3RydWN0IGRldmljZSAq
ZGV2KQo+ICAKPiAgCS8qIHVzZWQgZm9yIGNvbmZpZ3VyZSBwaHkgcmVmZXJlbmNlIGNsb2NrIGZy
ZXF1ZW5jeSAqLwo+ICAJZm9yIChpID0gMDsgaSA8IHVkcGh5LT5udW1fY2xrczsgaSsrKSB7Cj4g
KwkJaWYgKCF1ZHBoeS0+Y2xrc1tpXS5pZCkKPiArCQkJY29udGludWU7Cj4gKwo+ICAJCWlmICgh
c3RybmNtcCh1ZHBoeS0+Y2xrc1tpXS5pZCwgInJlZmNsayIsIDYpKSB7CgpbU2V2ZXJpdHk6IEhp
Z2hdClRoaXMgaXMgYSBwcmUtZXhpc3RpbmcgaXNzdWUsIGJ1dCBkb2VzIHRoaXMgc2FtZSB2dWxu
ZXJhYmlsaXR5IGV4aXN0IGluIG90aGVyCmRyaXZlcnMgdGhhdCBwYXJzZSBkZXZtX2Nsa19idWxr
X2dldF9hbGwoKSByZXN1bHRzPwoKQSBtYWxmb3JtZWQgZGV2aWNlIHRyZWUgd2l0aG91dCBjbG9j
ay1uYW1lcyB3aWxsIHJlc3VsdCBpbiBOVUxMIGlkIHBvaW50ZXJzLAp3aGljaCBjYXVzZSBrZXJu
ZWwgcGFuaWNzIHdoZW4gcGFzc2VkIGRpcmVjdGx5IHRvIHN0cm5jbXAoKS4gVGhpcyBwYXR0ZXJu
CmFwcGVhcnMgdG8gc3RpbGwgYmUgcHJlc2VudCBpbiBzZXZlcmFsIG90aGVyIHBsYWNlczoKCmRy
aXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLXVzYjIuYzoKcm9ja2NoaXBfdXNi
MnBoeV9jbGs0ODBtX3JlZ2lzdGVyKCkgewogICAgLi4uCiAgICBpZiAoIXN0cm5jbXAocnBoeS0+
Y2xrc1tpXS5pZCwgInBoeWNsayIsIDYpKSB7CiAgICAuLi4KfQoKZHJpdmVycy9waHkvcm9ja2No
aXAvcGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LmM6CnJvY2tjaGlwX2NvbWJwaHlfcGFyc2Vf
ZHQoKSB7CiAgICAuLi4KICAgIGlmICghc3RybmNtcChwcml2LT5jbGtzW2ldLmlkLCAicmVmIiwg
MykpIHsKICAgIC4uLgp9Cgpkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ktaW14Ni5jOmlt
eF9wY2llX3Byb2JlKCkgewogICAgLi4uCiAgICBpZiAoc3RybmNtcChpbXhfcGNpZS0+Y2xrc1tp
XS5pZCwgImV4dHJlZiIsIDYpID09IDApCiAgICAuLi4KfQoKZHJpdmVycy9wY2kvY29udHJvbGxl
ci9kd2MvcGNpLWlteDYuYzppbXhfc2V0dXBfcGh5X21wbGwoKSB7CiAgICAuLi4KICAgIGlmIChz
dHJuY21wKGNsa3NbaV0uaWQsICJwY2llX3BoeSIsIDgpID09IDApCiAgICAuLi4KfQoKU2hvdWxk
IHRoZXNlIGRyaXZlcnMgYmUgdXBkYXRlZCB3aXRoIHNpbWlsYXIgTlVMTCBjaGVja3MgdG8gcHJl
dmVudApncmFjZWZ1bCBwcm9iZSBmYWlsdXJlcyBmcm9tIGJlY29taW5nIHVuaGFuZGxlZCBrZXJu
ZWwgcGFuaWNzPwoKPiAgCQkJdWRwaHktPnJlZmNsayA9IHVkcGh5LT5jbGtzW2ldLmNsazsKPiAg
CQkJYnJlYWs7Cj4gIAkJfQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlr
by5kZXYvIy9wYXRjaHNldC8yMDI2MDcxNC1yb2NrY2hpcC11c2JkcC1jbGVhbnVwLXYxMy0wLTZj
YjNlNzY5ZDRjNUBjb2xsYWJvcmEuY29tP3BhcnQ9NQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
