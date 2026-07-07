Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DC8EC44501
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 14:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iNUcM/UV+BJs2pyHq/upYabxM7tA8zeHfG3qSBiCAiw=; b=iXttTQsKHkX2K5
	/SMowIzubgHhEzFfSHVVHZQY+e5cqqjiLNnzHQP6c/tcKVAbVx0doqxhJeUsMwqBg4SNv4A13Ia7J
	Lz5d/NK99P+bVFDS1Mi35JQV0tZ8ZDv+pkCndp94P0LSbGq9f1Aqdsfivt9sa/c1tgqPiCnjysChu
	prB3BTBuwn0DDaeoAKsGhZqBlFtPGbYBEGqiDKL11wwEhiBzZec3P/UcUkg8VJzvYqdNkQ2JFSuEX
	K98UvZwQk8mRGq3m6d3ZC21ifUK/eYt9Z8jhBUFLS3Zw+qm+6NW/CvO1SkNbYn5FJ+Ygk1oz5nDu/
	pFs/xsYjVUgYIZ940tpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh6mZ-0000000FBAj-14ML;
	Tue, 07 Jul 2026 14:28:19 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh6mY-0000000FBAP-0NRx
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 14:28:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 32F636138A;
	Tue,  7 Jul 2026 14:28:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 695821F00A3A;
	Tue,  7 Jul 2026 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783434496;
	bh=Nms9/XZgwR9douNdc28TyXxyzdrvEOBewOrL1S/fLgI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CtTgMoTiDmUKRF+AunWWAqJT/IJh/zgOfsCeWoSL4Jewbx9slF4TKppyZR2uLVgy6
	 skc3zofrZAZFq0AOuw/LermFiV38jHg2emZIjUMvkOFKN2rxwh0+ah/fAGcLCvSfFe
	 ntubjONyryzm1SZc8LnHpfT7+V53KcMyo8wSUaWfyKASRsa+aj5dyfnGiqCDfYUmJf
	 bO6mbBIe5puaJ+GNxtEyI3N4WHTsr5x2KZK3lAZbwasii0J1NSPQlZ5+fkh2LMOIXM
	 OEEC/7i++JSaSfLdkzv1nUIY0rQ7mT9wUvH0z3ToH5aIiPPwWF35FP/pSzkzGCbPZ/
	 eTpi/hPtTjyxQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 09/12] phy: phy-mtk-dp: Rewrite and document default
 driving param macros
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: dri-devel@lists.freedesktop.org, vkoul@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260707141931.191172-10-angelogioacchino.delregno@collabora.com>
References: <20260707141931.191172-1-angelogioacchino.delregno@collabora.com>
 <20260707141931.191172-10-angelogioacchino.delregno@collabora.com>
Date: Tue, 07 Jul 2026 14:28:15 +0000
Message-Id: <20260707142816.695821F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIHBhdGNoIHVzZXMg
YEZJRUxEX1BSRVBfQ09OU1RgIChhbmQgZWFybGllciBwYXRjaGVzIGluIHRoZSBzZXJpZXMgdXNl
IGBGSUVMRF9QUkVQYCkgd2l0aG91dCBleHBsaWNpdGx5IGluY2x1ZGluZyBgPGxpbnV4L2JpdGZp
ZWxkLmg+YC4KLS0KCi0tLSBQYXRjaCBbOV06IFtQQVRDSCB2MiAwOS8xMl0gcGh5OiBwaHktbXRr
LWRwOiBSZXdyaXRlIGFuZCBkb2N1bWVudCBkZWZhdWx0IGRyaXZpbmcgcGFyYW0gbWFjcm9zIC0t
LQpjb21taXQgZTY4MmZjNDk4OWIzN2VhYTAwM2FjMDNkNGQyYTlhNjliMzA2YTYzYgpBdXRob3I6
IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNv
bGxhYm9yYS5jb20+CgpwaHk6IHBoeS1tdGstZHA6IFJld3JpdGUgYW5kIGRvY3VtZW50IGRlZmF1
bHQgZHJpdmluZyBwYXJhbSBtYWNyb3MKClRoaXMgY29tbWl0IHJld3JpdGVzIHRoZSBkZWZhdWx0
IGRyaXZpbmcgcGFyYW1ldGVycyBmb3IgdGhlIFBIWSB1c2luZwpGSUVMRF9QUkVQX0NPTlNULiBJ
dCBhbHNvIGFkZHMgZGVmaW5pdGlvbnMgYW5kIGNvbW1lbnRzIHRvIGV4cGxhaW4gd2hhdAp0aGVz
ZSBwYXJhbWV0ZXJzIGFyZSBzdXBwb3NlZCB0byBzZXQuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3BoeS9tZWRpYXRlay9waHktbXRrLWRwLmMgYi9kcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRr
LWRwLmMKPiBpbmRleCBkMGVmOGU4ZjY2NzBjLi45YTgwMGQ2YjkxYzNmIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L21l
ZGlhdGVrL3BoeS1tdGstZHAuYwo+IEBAIC04NSw1MSArODUsNDcgQEAKClsgLi4uIF0KCj4gKyNk
ZWZpbmUgWFRQX0xOX1RYX0xDVFhDX1NXMl9QUkUxCUdFTk1BU0soNSwgMCkKPiArI2RlZmluZSBY
VFBfTE5fVFhfTENUWENfU1czX1BSRTAJR0VOTUFTSygxMywgOCkKPiArCj4gKyNkZWZpbmUgQlVJ
TERfRFJJVklOR19QQVJBTV8wKHN3MF9wcmUwLCBzdzBfcHJlMSwgc3cwX3ByZTIsIHN3MF9wcmUz
KSAoCVwKPiArCUZJRUxEX1BSRVBfQ09OU1QoWFRQX0xOX1RYX0xDVFhDX1NXMF9QUkUwLCBzdzBf
cHJlMCkgfAkJXAoKW1NldmVyaXR5OiBMb3ddClRoaXMgaXNuJ3QgYSBidWcsIGJ1dCBzaG91bGQg
bGludXgvYml0ZmllbGQuaCBiZSBleHBsaWNpdGx5IGluY2x1ZGVkIHNpbmNlCnRoaXMgY29kZSBu
b3cgdXNlcyBGSUVMRF9QUkVQX0NPTlNUPyAKClJlbHlpbmcgb24gaW1wbGljaXQgaW5jbHVzaW9u
cyBjYW4gY2F1c2UgYnVpbGQgYnJlYWthZ2VzIGluIHRoZSBmdXR1cmUgaWYgYQpoZWFkZXIgbGlr
ZSBsaW51eC9waHkvcGh5Lmggb3IgbGludXgvcmVnbWFwLmggc3RvcHMgaW5jbHVkaW5nIGl0LgoK
PiArCUZJRUxEX1BSRVBfQ09OU1QoWFRQX0xOX1RYX0xDVFhDX1NXMF9QUkUxLCBzdzBfcHJlMSkg
fAkJXAo+ICsJRklFTERfUFJFUF9DT05TVChYVFBfTE5fVFhfTENUWENfU1cwX1BSRTIsIHN3MF9w
cmUyKSB8CQlcCj4gKwlGSUVMRF9QUkVQX0NPTlNUKFhUUF9MTl9UWF9MQ1RYQ19TVzBfUFJFMywg
c3cwX3ByZTMpCQlcCj4gKykKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hp
a28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MDcxNDE5MzEuMTkxMTcyLTEtYW5nZWxvZ2lvYWNjaGlu
by5kZWxyZWdub0Bjb2xsYWJvcmEuY29tP3BhcnQ9OQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
