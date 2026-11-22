Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D195606A320
	for <linux-phy@archiver.kernel.org>; Sun, 22 Nov 2026 03:08:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=DitUjOY3;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=TEONfliw
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=0uJbkkFNO7vbK37Btkr3JGg11nINw4M5vKAhyi2r+Yc=; b=DitUjOY3bSIh/cxSCqxH8WZrGQ
	lV4Hwl0YNmGa+0bZ7odwIFH1ai/fZHUOuqcadSPPHSwe3A4KLuUC+49Zt9O59cve8hZOGj3viaqNv
	PjkfO4BR/jJAX8xpBEHKE0KoXOCArcCbqUITuSQ0fxOKRJUjFVLhlrOxnBgRgGpFijcWs022dwCvU
	WTBI5yZ+VHe9+h3McZ83aA9JQ5VolX74b4g4IfsHyHlc3rewkkO2HEyen2HoKO7Wy7hu/R+77mw4s
	6TiBy/J8hz2IHPLcHV/49xvt5/z4ga2hO8AMXB37atSA3CFhgRq34ow1gS+yw69dl9JdeuhblFLh9
	blqlLpqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUxwc-00000000hiR-1KmU;
	Sun, 22 Nov 2026 03:08:46 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUxwb-00000000hiE-2Qbl
	for linux-phy@lists.infradead.org;
	Sun, 22 Nov 2026 03:08:45 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A65486127A;
	Sun, 22 Nov 2026 03:08:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F38351F000C4;
	Sun, 22 Nov 2026 03:08:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795316924;
	bh=EvCqLTtWxekyY1rDCREt5XLzuU0zepZ0+JMeYxIFsdA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=TEONfliwJG3+Ff2zmTo9L704IRHCmrpAfO8irg8sh1mkwmWjZAoHiYAnQuN73hQ75
	 duJBxg6FnFQgc8RxNXYuct1rrnyvmAmjmG6YJtkHPt8ENqFTO6U0ZF1XC0WWy3EFEm
	 RshUtkFgU4QGYJeNfe1Hnkn1GnNtNAmH/Tra4NkVawz5qNPsaEVE/IZxuE6038Kwp9
	 lS/cKq03aIfvWuvL30tNfvl36SZPdX/PNGk2IkE79x7+PZTpH2wThnoJU0iUGy/OAr
	 DTWhYRX2ZUwfTnpnoq2vkjuUw8pMd64ltF8BKQOzkw8tES2Z2U8gPr1KiBrCk1giie
	 854/TiFrvpOmQ==
Message-ID: <sashiko-outbox-227665@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 02/11] PCI: qcom-ep: Add MSI-X support
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261122-nord_ep-v1-2-6d8839ffa9aa@oss.qualcomm.com>
References: <20261122-nord_ep-v1-0-6d8839ffa9aa@oss.qualcomm.com>
 <20261122-nord_ep-v1-2-6d8839ffa9aa@oss.qualcomm.com>
Date: Sun, 22 Nov 2026 03:08:43 +0000
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFBDSTogcWNvbS1lcDogbW9k
cG9zdCBlcnJvciBvbiB1bmV4cG9ydGVkCiAgZHdfcGNpZV9lcF9yYWlzZV9tc2l4X2lycV9kb29y
YmVsbCgpCi0tCgpjb21taXQgMmQ2ZDIzZWExNWM3ZTdkNDkzODFjNjc4NTUxZTQ5NTkwZDUzYzVi
MwpBdXRob3I6IEFudml0YSBUIDxhbnZpdGEudEBvc3MucXVhbGNvbW0uY29tPgoKUENJOiBxY29t
LWVwOiBBZGQgTVNJLVggc3VwcG9ydAoKVGhpcyBjb21taXQgYWRkcyBNU0ktWCBzdXBwb3J0IHRv
IHRoZSBRdWFsY29tbSBQQ0llIEVuZHBvaW50IGRyaXZlciBieQppbnRyb2R1Y2luZyBhbiBtc2l4
X2NhcGFibGUgU29DIGNvbmZpZyBmbGFnIGFuZCByb3V0aW5nIFBDSV9JUlFfTVNJWApyZXF1ZXN0
cyB0byBkd19wY2llX2VwX3JhaXNlX21zaXhfaXJxX2Rvb3JiZWxsKCkuCgo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20tZXAuYyBiL2RyaXZlcnMvcGNp
L2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS1lcC5jCj4gaW5kZXggYWJiZjZiNzM4YzM4MC4uMzM1
MjA3ZGU4ZjBjYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ll
LXFjb20tZXAuYwo+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS1l
cC5jClsgLi4uIF0KPiBAQCAtODA3LDYgKzgwOSw4IEBAIHN0YXRpYyBpbnQgcWNvbV9wY2llX2Vw
X3JhaXNlX2lycShzdHJ1Y3QgZHdfcGNpZV9lcCAqZXAsIHU4IGZ1bmNfbm8sCj4gIAkJcmV0dXJu
IGR3X3BjaWVfZXBfcmFpc2VfaW50eF9pcnEoZXAsIGZ1bmNfbm8pOwo+ICAJY2FzZSBQQ0lfSVJR
X01TSToKPiAgCQlyZXR1cm4gZHdfcGNpZV9lcF9yYWlzZV9tc2lfaXJxKGVwLCBmdW5jX25vLCBp
bnRlcnJ1cHRfbnVtKTsKPiArCWNhc2UgUENJX0lSUV9NU0lYOgo+ICsJCXJldHVybiBkd19wY2ll
X2VwX3JhaXNlX21zaXhfaXJxX2Rvb3JiZWxsKGVwLCBmdW5jX25vLCBpbnRlcnJ1cHRfbnVtKTsK
PiAgCWRlZmF1bHQ6Cj4gIAkJZGV2X2VycihwY2ktPmRldiwgIlVua25vd24gSVJRIHR5cGVcbiIp
Owo+ICAJCXJldHVybiAtRUlOVkFMOwoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIGJ1aWxkaW5nIHdp
dGggQ09ORklHX1BDSUVfUUNPTV9FUD1tIGZhaWwgYXQgbW9kcG9zdCB3aXRoIGFuIHVuZGVmaW5l
ZApyZWZlcmVuY2UgdG8gZHdfcGNpZV9lcF9yYWlzZV9tc2l4X2lycV9kb29yYmVsbCgpPwoKQ09O
RklHX1BDSUVfUUNPTV9FUCBpcyB0cmlzdGF0ZSBhbmQgc2VsZWN0cyB0aGUgYm9vbCBzeW1ib2wK
Q09ORklHX1BDSUVfRFdfRVAsIGJ1dCB1bmxpa2UgZHdfcGNpZV9lcF9yYWlzZV9pbnR4X2lycSgp
IGFuZApkd19wY2llX2VwX3JhaXNlX21zaV9pcnEoKSwgZHdfcGNpZV9lcF9yYWlzZV9tc2l4X2ly
cV9kb29yYmVsbCgpIGluCmRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdud2Fy
ZS1lcC5jIGxhY2tzIEVYUE9SVF9TWU1CT0xfR1BMKCkuCgotLSAKU2FzaGlrbyBBSSByZXZpZXcg
wrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYxMTIyLW5vcmRfZXAtdjEtMC02
ZDg4MzlmZmE5YWFAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTIKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
