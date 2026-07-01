Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79372C43458
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 12:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3020atC6rIEjBLv1JkmBHqYitWYqLx4qm33ILgpBNUs=; b=kbeWjN85AZQcZt
	h5KxVoxMF6TD1tFE8AbQolyjoFdbMzwD4ZXPYFgbl51apDWhc0FDDC5S18g9yckH7yCS8jpWbszRV
	lRsIUiomTrnJLoxwvo1QNH828aruipEAuR6Bn7mL1BRGy7cow2AarZ1MYqhLhLwE3RTMuhXpP8+vM
	qr9SXIjctUASvGy1BGxju/PvzWYOUqvG/Xaf/CQYtB6e35ibAtmeiaESfum9JqBEFRVPFncmRiyfC
	FUMXnPrzn0940MDgdN8yBJN29atp+mn/Klo9s3oIsz2t57rgeKN/M0CTF2EIkfNB69aV4hkossVFQ
	IvU58XA2eGDWILvwfsxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weu5s-000000020LL-17HW;
	Wed, 01 Jul 2026 12:31:08 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weu5r-000000020Ki-0pWV
	for linux-phy@lists.infradead.org;
	Wed, 01 Jul 2026 12:31:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A3F1F60138;
	Wed,  1 Jul 2026 12:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B5801F00A3E;
	Wed,  1 Jul 2026 12:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782909066;
	bh=RkQ36NxwB4OetEFBmYuS4HB1Opd6PUWhQXPYbKioANU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Xn5hvw/oqq+7IC3C7UNKMgZKnrWvmtyreWPMpXlcQf29+OljmiAqDyY9xYdGtxdH8
	 nIg1vppVv3q280yoFZ2p6kCwDpFJ8d6NOqwD0DLkePT/ZPa9iZMtjjWmsWM4B/Ge4p
	 bdzfmmr7v8PIbL34J5Gnm7hMzG5m/7iCGoEJ5cPQovKWa7J3nyDUWfidYv8zxpGVuo
	 qK08qGhEYzX08PRUz5BKI1WG+OLYbhGdwOZFF6zpWMMwqsQU7WDGx94zidm3N3zAQq
	 7Xx5u0umuYRvdXBi0mFNmDY09Pigujrho0OBdK+wXhxbYHeBu+o/4XmQKrMmmMjpPE
	 huiij0UE0+vsw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] phy: mediatek: phy-mtk-hdmi-mt8195: Fix PLL calc
 divisor overflow
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: dri-devel@lists.freedesktop.org, olteanv@gmail.com, vkoul@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org
In-Reply-To: <20260701121936.19407-2-angelogioacchino.delregno@collabora.com>
References: <20260701121936.19407-1-angelogioacchino.delregno@collabora.com>
 <20260701121936.19407-2-angelogioacchino.delregno@collabora.com>
Date: Wed, 01 Jul 2026 12:31:05 +0000
Message-Id: <20260701123106.1B5801F00A3E@smtp.kernel.org>
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
IFtIaWdoXSBDYWxjdWxhdGlvbnMgdXNpbmcgYDE0ODM1ICogTUVHQWAsIGA1ICogR0lHQWAsIGFu
ZCBgMTIgKiBHSUdBYCBzaWxlbnRseSBvdmVyZmxvdyAzMi1iaXQgYHVuc2lnbmVkIGxvbmdgIHR5
cGVzIG9uIDMyLWJpdCBhcmNoaXRlY3R1cmVzLCBjb21wbGV0ZWx5IGJyZWFraW5nIGNsb2NrIHRp
ZXJpbmcgYW5kIGJvdW5kYXJ5IGNoZWNrcy4KLS0KCmNvbW1pdCA4MTc5YTMyY2YxZGFjOGYxZDA4
MGU1N2JiY2U3OTI0NjY2MWI1MGViCkF1dGhvcjogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8g
PGFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4KCnBoeTogbWVkaWF0ZWs6
IHBoeS1tdGstaGRtaS1tdDgxOTU6IEZpeCBQTEwgY2FsYyBkaXZpc29yIG92ZXJmbG93CgpUaGlz
IGNvbW1pdCBmaXhlcyBhbiBpc3N1ZSB3aGVyZSBjYWxjdWxhdGluZyBhIFBMTCByYXRlIGZvciBo
aWdoIGRpc3BsYXkKcmVzb2x1dGlvbnMgcmVzdWx0cyBpbiBhIHBpeGVsIGNsb2NrIGV4Y2VlZGlu
ZyAzMiBiaXRzLCBidXQgdGhlIGRpZ2l0YWwKY2xvY2sgZGl2aWRlciBjYWxjdWxhdGlvbiB1c2Vz
IGRpdl91NjQoKSwgd2hpY2ggZXhwZWN0cyBhIDMyLWJpdCBkaXZpc29yLgpJdCByZXNvbHZlcyB0
aGlzIGJ5IHVzaW5nIGRpdjY0X3U2NCgpIGluc3RlYWQgdG8gcHJldmVudCBvdmVyZmxvdy4KCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstaGRtaS1tdDgxOTUuYyBi
L2RyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstaGRtaS1tdDgxOTUuYwo+IGluZGV4IDE0MjZh
MmRiOTg0ZDUuLmU2ZWU4ZTA4MDAyMjIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvbWVkaWF0
ZWsvcGh5LW10ay1oZG1pLW10ODE5NS5jCj4gKysrIGIvZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5
LW10ay1oZG1pLW10ODE5NS5jCj4gQEAgLTI5MCw3ICsyOTAsNyBAQCBzdGF0aWMgaW50IG10a19o
ZG1pX3BsbF9jYWxjKHN0cnVjdCBtdGtfaGRtaV9waHkgKmhkbWlfcGh5LCBzdHJ1Y3QgY2xrX2h3
ICpodywKCltTZXZlcml0eTogSGlnaF0KVGhpcyBpcyBhIHByZS1leGlzdGluZyBpc3N1ZSwgYnV0
IGRvIHRoZSBjb25zdGFudHMgaW4gdGhpcyBmdW5jdGlvbiBzaWxlbnRseQpvdmVyZmxvdyBvbiAz
Mi1iaXQgYXJjaGl0ZWN0dXJlcz8KCkVhcmxpZXIgaW4gbXRrX2hkbWlfcGxsX2NhbGMoKSwgdGhl
cmUgYXJlIHRpZXIgdGhyZXNob2xkIGNhbGN1bGF0aW9ucyBsaWtlOgoKICAgIGVsc2UgaWYgKCh0
bWRzX2NsayAqIDEwMCkgPj0gMTQ4MzUgKiBNRUdBICYmICh0bWRzX2NsayAqIDEwKSA8IDI5Njcg
KiBNRUdBKQoKYW5kIGxhdGVyIGJvdW5kYXJ5IGNoZWNrczoKCiAgICBpZiAobnNfaGRtaXBsbF9j
ayA+PSA1ICogR0lHQSAmJgogICAgICAgIG5zX2hkbWlwbGxfY2sgPD0gMTIgKiBHSUdBKQoKSWYg
TUVHQSBhbmQgR0lHQSBldmFsdWF0ZSBhcyAzMi1iaXQgdHlwZXMgb24gMzItYml0IHN5c3RlbXMs
IGEgbXVsdGlwbGljYXRpb24KbGlrZSAxNDgzNSAqIE1FR0EgZXZhbHVhdGVzIHRvIDE0LDgzNSww
MDAsMDAwLCB3aGljaCB3cmFwcyBhcm91bmQgbW9kdWxvIDJeMzIKdG8gMSw5NTAsMDk4LDExMiBi
ZWZvcmUgYmVpbmcgcHJvbW90ZWQgdG8gdTY0IGZvciB0aGUgY29tcGFyaXNvbiBhZ2FpbnN0CnRt
ZHNfY2xrICogMTAwLgoKU2ltaWxhcmx5LCA1ICogR0lHQSBhbmQgMTIgKiBHSUdBIHdvdWxkIG92
ZXJmbG93LCBwb3RlbnRpYWxseSByZW5kZXJpbmcgdGhlCnZhbGlkIFBMTCBjbG9jayByYW5nZSBt
YXRoZW1hdGljYWxseSB1bnJlYWNoYWJsZSBhbmQgZm9yY2luZyB0aGUgZnVuY3Rpb24gdG8KYWx3
YXlzIHJldHVybiAtRUlOVkFMIG9uIDMyLWJpdCBidWlsZHMuCgpTaG91bGQgdGhlc2UgY29uc3Rh
bnRzIGJlIGV4cGxpY2l0bHkgdHlwZWQgb3IgY2FzdCB0byB1NjQgdG8gZW5zdXJlIHRoZQpjb21w
YXJpc29ucyB3b3JrIGNvcnJlY3RseSBvbiAzMi1iaXQga2VybmVscz8KCj4gIAlwb3NkaXYyID0g
MTsKPiAgCj4gIAkvKiBEaWdpdGFsIGNsayBkaXZpZGVyLCBtYXggLzMyICovCj4gLQlkaWdpdGFs
X2RpdiA9IGRpdl91NjQobnNfaGRtaXBsbF9jaywgcG9zZGl2MSAqIHBvc2RpdjIgKiBwaXhlbF9j
bGspOwo+ICsJZGlnaXRhbF9kaXYgPSBkaXY2NF91NjQobnNfaGRtaXBsbF9jaywgcG9zZGl2MSAq
IHBvc2RpdjIgKiBwaXhlbF9jbGspOwo+ICAJaWYgKCEoZGlnaXRhbF9kaXYgPD0gMzIgJiYgZGln
aXRhbF9kaXYgPj0gMSkpCj4gIAkJcmV0dXJuIC1FSU5WQUw7Cj4KCi0tIApTYXNoaWtvIEFJIHJl
dmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MDExMjE5MzYuMTk0
MDctMS1hbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20/cGFydD0xCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
