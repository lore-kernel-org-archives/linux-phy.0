Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D980C61DD3
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 20:11:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y/yf4YU6g7Bn++G5DYBP+QXMHMwa1xa8wOfW0+k+kvY=; b=3JHnvBLtaPuv6d
	iOYPqr933VBvaWuUHRAOQR4nveXnpWxpNgVqf0gJ86WIRyTw7C2smb5yEAi4XK4ZdVXiftCv5qVQ0
	srXbGX1tH24FVpoORfqRgszZIJ1E/1eZ3zDr7KHG2slRjNcGHAcrlOHZr+IrxD6pYHZ3INhHLghPf
	88bZ7aLCQw5AGnI5TiA4zqSzQu7Cpqu8ctxJ3woFTFGmpf2aRW5ozgwMs1bpm+CZa9I3PUzbbUh05
	ZKx8CGqfE1ZUSy0ZsQ5zBLc6yoU1vgIx6t5MKQzhQXhqpLpnwoQHD0QFc4TsViXZq1K8XpG60CAqO
	TkMRJtEUehsiaX7bx6tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1UpZ-0000000DIZO-0YRh;
	Tue, 01 Sep 2026 20:11:41 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1UpX-0000000DIZC-362i
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 20:11:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 21F9F43D18;
	Tue,  1 Sep 2026 20:11:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABF0B1F000E9;
	Tue,  1 Sep 2026 20:11:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788293499;
	bh=kNCszW78WWHXjrGqNMGTtwkRKu5WVVPN0Xw/55w6jXU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SLJ/+yHDvhtuac6cu3XhXhehCyE3jORH4R/BWX9+XlvZTNpnXJUk3D6Z8XOQ9jzzS
	 coXBN9WxK1gzYasybNM1oe67Q4lAdqm7f+YJkI8GdvgUAulM2OQjthiM/sCQCZsjya
	 hDZOx0uC26TxOk8vFfVUtHmUkQ2VMgt9r4WLnNoc1jzCyOTsBI23Iw4t9FLwxgBFxP
	 2pKmJbuV5altu5xcqq1a9uCb37u6r9+CZ3VJ3UodBk+rey+Ed0SA/kF9G22tLL/BqT
	 Agyha3R3MXLZj3f20yCcC8l+30p+aOy/szvVXXoY3erZgfIrXP5/PnLSK8qc9iOx1F
	 z1ZonAZKjXmuw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/3] phy: rockchip: samsung-hdptx: Handle PHY config
 after module reload
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org
In-Reply-To: <20260901-hdptx-ffe-v2-2-3a5922c76fc5@collabora.com>
References: <20260901-hdptx-ffe-v2-0-3a5922c76fc5@collabora.com>
 <20260901-hdptx-ffe-v2-2-3a5922c76fc5@collabora.com>
Date: Tue, 01 Sep 2026 20:11:38 +0000
Message-Id: <20260901201138.ABF0B1F000E9@smtp.kernel.org>
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
IFtIaWdoXSBUaGUgZHJpdmVyIGRlbGliZXJhdGVseSBmb3JjZXMgYSByZXF1ZXN0ZWQgcmF0ZSBv
ZiAwIHRvIGJ5cGFzcyBDQ0YncyByYXRlLWNoYW5nZSBza2lwcGluZywgYnJlYWtpbmcgdGhlIEND
RiBub3RpZmllciBzdGF0ZSBtYWNoaW5lIGFuZCBwb3NpbmcgYSBmYXRhbCBkaXZpZGUtYnktemVy
byByaXNrIGZvciBzdGFuZGFyZCBkb3duc3RyZWFtIGRpdmlkZXJzLgotLQoKY29tbWl0IDc4NWY5
MWE5YmU2NmIxNjU2OTVhODU0NmVmODY4MmYzODc5MDIwMmUKQXV0aG9yOiBDcmlzdGlhbiBDaW9j
YWx0ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29tPgoKcGh5OiByb2NrY2hpcDog
c2Ftc3VuZy1oZHB0eDogSGFuZGxlIFBIWSBjb25maWcgYWZ0ZXIgbW9kdWxlIHJlbG9hZAoKVGhp
cyBjb21taXQgbW9kaWZpZXMgdGhlIHBsbF9jb25maWdfZGlydHkgbWVjaGFuaXNtIHRvIGZpcnN0
IGNvbXB1dGUgdGhlCnRhcmdldCByYXRlIGZyb20gdGhlIEhETUkgbGluayBjb25maWd1cmF0aW9u
IGJlZm9yZSBkZWNpZGluZyB3aGV0aGVyIHRvCmludmFsaWRhdGUgdGhlIHJlcXVlc3RlZCByYXRl
LiBJdCBub3cgemVyb3Mgb3V0IHJlcS0+cmF0ZSBvbmx5IGlmIGl0Cm1hdGNoZXMgdGhlIENvbW1v
biBDbG9jayBGcmFtZXdvcmsncyBjYWNoZWQgcmF0ZS4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
cGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zYW1zdW5nLWhkcHR4LmMgYi9kcml2ZXJzL3BoeS9y
b2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jCj4gLS0tIGEvZHJpdmVycy9waHkv
cm9ja2NoaXAvcGh5LXJvY2tjaGlwLXNhbXN1bmctaGRwdHguYwo+ICsrKyBiL2RyaXZlcnMvcGh5
L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zYW1zdW5nLWhkcHR4LmMKWyAuLi4gXQo+IEBAIC0yMzQ2
LDE0ICsyMzQ2LDE2IEBAIHN0YXRpYyBpbnQgcmtfaGRwdHhfcGh5X2Nsa19kZXRlcm1pbmVfcmF0
ZShzdHJ1Y3QgY2xrX2h3ICpodywKPiAgCSAqIHRvIGVuc3VyZSBya19oZHB0eF9waHlfY2xrX3Nl
dF9yYXRlKCkgd2lsbCBiZSBhbHdheXMgaW52b2tlZC4KPiAgCSAqIE90aGVyd2lzZSwgcmVzdHJp
Y3QgdGhlIHJhdGUgYWNjb3JkaW5nIHRvIHRoZSBQSFkgbGluayBzZXR1cC4KPiAgCSAqLwo+IC0J
aWYgKGhkcHR4LT5wbGxfY29uZmlnX2RpcnR5KQo+IC0JCXJlcS0+cmF0ZSA9IDA7Cj4gLQllbHNl
IGlmIChoZHB0eC0+aGRtaV9jZmcubW9kZSA9PSBQSFlfSERNSV9NT0RFX0ZSTCkKPiArCj4gKwlp
ZiAoaGRwdHgtPmhkbWlfY2ZnLm1vZGUgPT0gUEhZX0hETUlfTU9ERV9GUkwpCj4gIAkJcmVxLT5y
YXRlID0gaGRwdHgtPmhkbWlfY2ZnLnJhdGU7Cj4gIAllbHNlCj4gIAkJcmVxLT5yYXRlID0gRElW
X1JPVU5EX0NMT1NFU1RfVUxMKGhkcHR4LT5oZG1pX2NmZy5yYXRlICogOCwKPiAgCQkJCQkJICBo
ZHB0eC0+aGRtaV9jZmcuYnBjKTsKPiAgCj4gKwlpZiAoaGRwdHgtPnBsbF9jb25maWdfZGlydHkg
JiYgcmVxLT5yYXRlID09IGNsa19od19nZXRfcmF0ZShodykpCj4gKwkJcmVxLT5yYXRlID0gMDsK
CltTZXZlcml0eTogSGlnaF0KVGhpcyBpcyBhIHByZS1leGlzdGluZyBpc3N1ZSwgYnV0IGRvZXMg
c2V0dGluZyB0aGUgcmVxdWVzdGVkIHJhdGUgdG8gMApwb3NlIGEgcmlzayBvZiBhIGRpdmlkZS1i
eS16ZXJvIGV4Y2VwdGlvbiBpbiBkb3duc3RyZWFtIGNsb2Nrcz8KCldoZW4gQ0NGIHByb3BhZ2F0
ZXMgdGhpcyBuZXdfcmF0ZSA9IDAgdG8gY2hpbGQgY2xvY2tzLCBpZiBhIGNoaWxkIGNsb2NrCnVz
ZXMgc3RhbmRhcmQgY2xrX2RpdmlkZXJfb3BzLCBpdHMgY2xrX2RpdmlkZXJfc2V0X3JhdGUoKSBj
YWxsYmFjawpleGVjdXRlcyBkaXZpZGVyX2dldF92YWwoKSwgd2hpY2ggZXZhbHVhdGVzOgoKRElW
X1JPVU5EX1VQX1VMTChwYXJlbnRfcmF0ZSwgcmF0ZSkKClNpbmNlIHJhdGUgaXMgMCwgdGhpcyBj
YXVzZXMgYSBmYXRhbCBkaXZpZGUtYnktemVybyBleGNlcHRpb24uCgpBZGRpdGlvbmFsbHksIGJl
Y2F1c2UgdGhlIGRyaXZlciBwcm9ncmFtcyB0aGUgUEhZIHRvIHRoZSBhY3R1YWwgcmF0ZSAoZS5n
LiwKMTQ4LjVNSHopIGFuZCBjbGtfcmVjYWxjKCkgcmV0dXJucyB0aGlzIGFjY3VyYXRlIHJhdGUs
IENDRiBvYnNlcnZlcwpvbGRfcmF0ZSA9PSBjb3JlLT5yYXRlIGluIGNsa19jaGFuZ2VfcmF0ZSgp
IGFuZCBza2lwcyBmaXJpbmcgdGhlClBPU1RfUkFURV9DSEFOR0Ugbm90aWZpZXIuCgpEb2VzIHRo
aXMgbGVhdmUgYW55IGNvbnN1bWVycyB0aGF0IHByZXBhcmVkIHN0YXRlIGR1cmluZyBQUkVfUkFU
RV9DSEFOR0UKcGVybWFuZW50bHkgc3R1Y2s/IFRoaXMgcGF0aCBhcHBlYXJzIHJlYWNoYWJsZSBi
eSB1bnByaXZpbGVnZWQgdXNlcnNwYWNlCnZpYSBzdGFuZGFyZCBEUk0vS01TIHJlc29sdXRpb24g
Y2hhbmdlcyB0aGF0IHJlY29uZmlndXJlIHRoZSBQSFkgd2hpbGUKcmV0YWluaW5nIHRoZSBzYW1l
IGNsb2NrIGZyZXF1ZW5jeS4KCj4gKwo+ICAJcmV0dXJuIDA7Cj4gIH0KPgoKLS0gClNhc2hpa28g
QUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDkwMS1oZHB0
eC1mZmUtdjItMC0zYTU5MjJjNzZmYzVAY29sbGFib3JhLmNvbT9wYXJ0PTIKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
