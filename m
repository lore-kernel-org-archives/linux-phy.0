Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27EF1C531CC
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jul 2026 19:57:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/fgVG1vozSkHtaqpviDhhAHScc54JxkyofO4F0/dpww=; b=qqAldOE69PLCoF
	ZfjkbI9+JeyjWXk+DrKD+E68wXTsirx4/E6+BEl/Kpa/YVci15JEnVvsdYvt3+f+ar/oTVrQw0NbL
	C/coa6vQypscOQYEOqi2f7wois5MXgCuPnveG/A2zdPhUquup9AWi9n0ewoPNdkelYijeb90dRhTx
	Vfbh+UUT45XhMQuwIQk3xvguCaBMSAdr6TNyYtaI7h75R/XdWvx6BYT1AjsEhLPdILWTylhBK7GW0
	IWNUUTDTd/YfWK/Pb4BLSJ0umStU13+yAawzPFHv430ijtfAkKMzG2CTFaAK5lpT87KGqjKvSGo6n
	wqOqB+eYScvlpGUvtAtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmzXk-0000000F0hT-3UXD;
	Thu, 23 Jul 2026 19:57:20 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmzXi-0000000F0hF-41jM
	for linux-phy@lists.infradead.org;
	Thu, 23 Jul 2026 19:57:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 313F0600AD;
	Thu, 23 Jul 2026 19:57:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E1AC1F00A3D;
	Thu, 23 Jul 2026 19:57:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784836637;
	bh=DAC7S7GD0phaIw/M8N9jkqOvSwLyHwN632HUuyb+IIw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kyk6IikevV5Zryoc66GGjs98Q5N0GyeMEqToLFuw2GdBDQSgUbWXj+DYL9NGJAjnj
	 0Aro1ZukPWF9NYzHA4vCXn0yg/svsm6aZcY+l2ehsfvMGGxV6t/20wq9vGND0YDzBi
	 SPQ2eGw3z070KFCm5MilS1QKbNug4d9Dwa8ri8EBe27F9JOYqNrz1UXSU3ikl/zf3x
	 ACB5oQJcGaaiXzV5xulzmCGecIxu7Z17rXxwcXF2Qd55IH98vOY/fpQOILqow35cG3
	 9IPDUEA5mgprDiugcq5iMWiZyzTlABDxY4+GMPDJV2yCJtpbGuWYJgx5pzCPNS+INY
	 RuczFVJc7c8zg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 03/10] phy: rockchip: samsung-hdptx: Guard against
 clk rate integer underflow
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Cc: olteanv@gmail.com, neil.armstrong@linaro.org, vkoul@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260723-hdptx-clk-fixes-v5-3-8e786067865f@collabora.com>
References: <20260723-hdptx-clk-fixes-v5-0-8e786067865f@collabora.com>
 <20260723-hdptx-clk-fixes-v5-3-8e786067865f@collabora.com>
Date: Thu, 23 Jul 2026 19:57:17 +0000
Message-Id: <20260723195717.8E1AC1F00A3D@smtp.kernel.org>
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
IFtIaWdoXSBya19oZHB0eF9waHlfY2xrX2RldGVybWluZV9yYXRlKCkgaW5jb3JyZWN0bHkgcmV0
dXJucyBhIGNsb2NrIHJhdGUgZGlyZWN0bHkgaW5zdGVhZCBvZiAwIG9uIHN1Y2Nlc3MsIHZpb2xh
dGluZyB0aGUgQ0NGIEFQSS4KLS0KCi0tLSBQYXRjaCBbM106IFtQQVRDSCB2NSAwMy8xMF0gcGh5
OiByb2NrY2hpcDogc2Ftc3VuZy1oZHB0eDogR3VhcmQgYWdhaW5zdCBjbGsgcmF0ZSBpbnRlZ2Vy
IHVuZGVyZmxvdyAtLS0KY29tbWl0IGNmNjg2MDNlNjYyNWNiMzlhOTg0MThlOWY3OTJhNGUyZTM3
M2RmY2QKQXV0aG9yOiBDcmlzdGlhbiBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xs
YWJvcmEuY29tPgoKcGh5OiByb2NrY2hpcDogc2Ftc3VuZy1oZHB0eDogR3VhcmQgYWdhaW5zdCBj
bGsgcmF0ZSBpbnRlZ2VyIHVuZGVyZmxvdwoKVGhpcyBjb21taXQgYWRkcyBhIGNoZWNrIHRvIGF2
b2lkIGFuIGludGVnZXIgdW5kZXJmbG93IGluIHRoZSBST1BMTApoYXJkd2FyZSBzdGF0ZSBjYWxj
dWxhdGlvbi4gQnkgdmFsaWRhdGluZyB0aGF0IHRoZSBjb21wdXRlZCBzaWdtYS1kZWx0YQptb2R1
bGF0b3Igb2Zmc2V0IGRvZXMgbm90IGV4Y2VlZCB0aGUgYmFzZSBmcmVxdWVuY3ksIGl0IHByZXZl
bnRzCnJldHVybmluZyBleGNlc3NpdmVseSBoaWdoIGNsb2NrIHJhdGVzIHRvIHRoZSBDb21tb24g
Q2xvY2sgRnJhbWV3b3JrLgoKQ2xvc2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAy
NjA2MTEyMzU3MDIuMEU5NjkxRjAwMEU5QHNtdHAua2VybmVsLm9yZy8KCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zYW1zdW5nLWhkcHR4LmMgYi9kcml2
ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jCj4gaW5kZXggNDRl
OTkzNDNmMjQ5OS4uZmNmMDRlOTgxNGNjNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2Nr
Y2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jCj4gKysrIGIvZHJpdmVycy9waHkvcm9j
a2NoaXAvcGh5LXJvY2tjaGlwLXNhbXN1bmctaGRwdHguYwo+IEBAIC0yMjgwLDEwICsyMjgwLDE2
IEBAIHN0YXRpYyB1NjQgcmtfaGRwdHhfcGh5X2Nsa19jYWxjX3JhdGVfZnJvbV9wbGxfY2ZnKHN0
cnVjdCBya19oZHB0eF9waHkgKmhkcHR4KQo+ICAJCXNkbSA9IGRpdl91NjQoUExMX1JFRl9DTEsg
KiByb3BsbF9ody5zZGNfZGVubyAqCj4gIAkJCSAgICAgIHJvcGxsX2h3LnBtc19tZGl2ICogcm9w
bGxfaHcuc2RtX251bSwgdmFsKTsKPiAgCj4gLQkJaWYgKHJvcGxsX2h3LnNkbV9udW1fc2lnbikK
PiArCQlpZiAocm9wbGxfaHcuc2RtX251bV9zaWduKSB7Cj4gKwkJCWlmIChzZG0gPiBmb3V0KSB7
Cj4gKwkJCQlkZXZfZGJnKGhkcHR4LT5kZXYsICJJbnZhbGlkIFJPUExMIGh3IHN0YXRlOiBzZG0g
PiBmb3V0XG4iKTsKPiArCQkJCXJldHVybiAwOwo+ICsJCQl9Cj4gKwo+ICAJCQlmb3V0ID0gZm91
dCAtIHNkbTsKPiAtCQllbHNlCj4gKwkJfSBlbHNlIHsKPiAgCQkJZm91dCA9IGZvdXQgKyBzZG07
Cj4gKwkJfQo+ICAJfQo+ICAKPiAgCXJldHVybiBESVZfUk9VTkRfQ0xPU0VTVF9VTEwoZm91dCAq
IDIgKiA4LCByb3BsbF9ody5wbXNfc2RpdiAqIDEwICogYnBjKTsKPiAgfQoKW1NldmVyaXR5OiBI
aWdoXQpUaGlzIGlzIGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgSSBub3RpY2VkIGEgcG90ZW50
aWFsIHByb2JsZW0gaW4KcmtfaGRwdHhfcGh5X2Nsa19kZXRlcm1pbmVfcmF0ZSgpIGxvY2F0ZWQg
bmVhcmJ5IGluIHRoZSBzYW1lIGZpbGU6Cgpkcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2No
aXAtc2Ftc3VuZy1oZHB0eC5jOnJrX2hkcHR4X3BoeV9jbGtfZGV0ZXJtaW5lX3JhdGUoKSB7Cglz
dHJ1Y3QgcmtfaGRwdHhfcGh5ICpoZHB0eCA9IHRvX3JrX2hkcHR4X3BoeShodyk7CgoJaWYgKGhk
cHR4LT5oZG1pX2NmZy5tb2RlID09IFBIWV9IRE1JX01PREVfRlJMKQoJCXJldHVybiBoZHB0eC0+
aGRtaV9jZmcucmF0ZTsKCS4uLgp9CgpEb2VzIHRoaXMgdmlvbGF0ZSB0aGUgQ29tbW9uIENsb2Nr
IEZyYW1ld29yayBBUEkgY29udHJhY3QgZm9yCi5kZXRlcm1pbmVfcmF0ZSBjYWxsYmFja3M/CgpU
aGUgLmRldGVybWluZV9yYXRlIGNhbGxiYWNrIGlzIGV4cGVjdGVkIHRvIHVwZGF0ZSByZXEtPnJh
dGUgYW5kIHJldHVybiAwCm9uIHN1Y2Nlc3MuIEJ5IHJldHVybmluZyB0aGUgcmF0ZSBkaXJlY3Rs
eSwgaXQgYXBwZWFycyB0aGlzIGZhaWxzIHRvIHVwZGF0ZQp0aGUgcmVxdWVzdCBhbmQgaW5zdGVh
ZCByZXR1cm5zIGEgbWFzc2l2ZSBpbnRlZ2VyLgoKRm9yIEZSTF84RzRMX1JBVEUgKDMsMjAwLDAw
MCwwMDApLCBjYXN0aW5nIGl0IHRvIGEgMzItYml0IHNpZ25lZCBpbnQgd291bGQKd3JhcCBhcm91
bmQgdG8gYSBuZWdhdGl2ZSB2YWx1ZSAoLTEsMDk0LDk2NywyOTYpLgoKV2hlbiB0aGUgY2xvY2sg
cmF0ZSBpcyBuZWdvdGlhdGVkIG9yIHNldCBmb3IgOEdicHMgRlJMIG1vZGUsIENDRiBjb3VsZApy
ZWNlaXZlIHRoaXMgd3JhcHBlZCBuZWdhdGl2ZSB2YWx1ZSwgaW50ZXJwcmV0IGl0IGFzIGFuIGVy
cm9yIGNvZGUsIGFuZApjYXVzZSBjbGtfc2V0X3JhdGUoKSB0byBmYWlsIGVudGlyZWx5LgoKRXZl
biBmb3Igc21hbGxlciByYXRlcyB0aGF0IGRvIG5vdCB3cmFwLCBsZWF2aW5nIHJlcS0+cmF0ZSB1
bm1vZGlmaWVkIG1pZ2h0CmJ5cGFzcyByb3VuZGluZyBhbmQgY2F1c2UgZG93bnN0cmVhbSBmYWls
dXJlcyBpbiBIRE1JIGNvbmZpZ3VyYXRpb24uCgpTaG91bGQgdGhpcyBpbnN0ZWFkIHVwZGF0ZSBy
ZXEtPnJhdGUgYW5kIHJldHVybiAwPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8v
c2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcyMy1oZHB0eC1jbGstZml4ZXMtdjUtMC04ZTc4
NjA2Nzg2NWZAY29sbGFib3JhLmNvbT9wYXJ0PTMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
