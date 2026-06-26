Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9B56C43458
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jun 2026 21:13:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6rA57xcRGMRy+UdeW+fIYFaSOWolc2jLSJ/Titt0L2Y=; b=OmVGn089ZUPBJ/
	KgehZgLmXJpaxsTWEwlQfUOCydtlus3hYPzqHDuzTYjwZLQqAF1QL4IzMWflLjoISQuZ+ni9gWW2Q
	ZLD/NOpZl43LY42KSxpLR/PbDAWa0W+FULW0s0lPfN1lS4BUkdXyxL6PSBSQYRams0Zli/02yrtrL
	1RWqnQhSc1wyri5I1Enx1HG0nU44cuF1dIJg3bkZ2twQNisDhgWUgoruFVPWgqO62Y03iy3TSA2Uu
	87w5ludKRWZoe3nRtK9ZebqNTWTxVonyZ42NFnsBWRUnPitVmQxnSeI0RZinGvLRUNCEYCb9Bf1DS
	J6+9BZAGk1rjaVup78oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdDrt-0000000Btdi-2DCS;
	Fri, 26 Jun 2026 21:13:45 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdDrs-0000000Btdc-29xH
	for linux-phy@lists.infradead.org;
	Fri, 26 Jun 2026 21:13:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3B0464088E;
	Fri, 26 Jun 2026 21:13:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 960D81F00A3D;
	Fri, 26 Jun 2026 21:13:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782508424;
	bh=g9GbCtiqzx1giQMGE7ut17CFSso9a+Jr7vjSmvD4jvc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=GQ1EoEhN5nGNAqkSV82exf9DR00iTCMbOAqdd/siLamxkazoTCEm4eAfOM5JhoFe9
	 S1O5kWwkWEGd4sq4ptb8Fjw5vmJTXpGop5TlnolgZhahdm7SQU1xBm60cooqL66/P5
	 mN09GmPcrhwsSlEIguRqoxe3RgSwXtzUKhyJ7ypne2G4FQzb41T/83e+W5Yvg0eoVg
	 NejjatdxuWK4PTxaFGoF7CwnTI6gBbY1AE+FHftey590le+EiC2wWfRFdn8PP82eMY
	 NyUO/T//kDyUmlf4FEPvHrApqFxGPisdFhqIetmgHN4tZwkOnrpTg2pf/8eDLwJZE6
	 rp3JAvPr9ClVw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 01/29] dt-bindings: phy: rockchip-usbdp: add improved
 ports scheme
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: neil.armstrong@linaro.org, devicetree@vger.kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, conor+dt@kernel.org, vkoul@kernel.org, robh@kernel.org
In-Reply-To: <20260626-rockchip-usbdp-cleanup-v8-1-47f682987895@collabora.com>
References: <20260626-rockchip-usbdp-cleanup-v8-0-47f682987895@collabora.com>
 <20260626-rockchip-usbdp-cleanup-v8-1-47f682987895@collabora.com>
Date: Fri, 26 Jun 2026 21:13:43 +0000
Message-Id: <20260626211343.960D81F00A3D@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gTWlzc2luZyBtdXR1
YWwgZXhjbHVzaW9uIGJldHdlZW4gYHBvcnRgIGFuZCBgcG9ydHNgIGluIGRldmljZSB0cmVlIHNj
aGVtYQotLQoKY29tbWl0IGJlZjYwOWZhOGY5NjAxOGM1OTM4NzU0NGU1MGVkMWU1ODE4ZmFhN2EK
QXV0aG9yOiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNv
bT4KCmR0LWJpbmRpbmdzOiBwaHk6IHJvY2tjaGlwLXVzYmRwOiBhZGQgaW1wcm92ZWQgcG9ydHMg
c2NoZW1lCgpUaGlzIGNvbW1pdCBpbnRyb2R1Y2VzIGEgZG9jdW1lbnRlZCBwb3J0IHNjaGVtZSBm
b3IgdGhlIFJvY2tjaGlwIFVTQkRQIFBIWSwKbW9kZWxlZCBhZnRlciB0aGUgUXVhbGNvbW0gUU1Q
IFVTQjQtVVNCMy1EUCBQSFkgY29udHJvbGxlciBiaW5kaW5nLiBJdCBhZGRzCmEgdG9wLWxldmVs
IHBvcnRzIG5vZGUgd2l0aCBzcGVjaWZpYyBlbmRwb2ludHMgZm9yIFVTQiwgRGlzcGxheVBvcnQs
IGFuZApTQlUgY29ubmVjdGlvbnMgdG8gcHJvcGVybHkgc3VwcG9ydCBVU0ItQyBEUCBBbHRNb2Rl
LgoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9w
aHktcm9ja2NoaXAtdXNiZHAueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9waHkvcGh5LXJvY2tjaGlwLXVzYmRwLnlhbWwKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvcGh5L3BoeS1yb2NrY2hpcC11c2JkcC55YW1sCj4gKysrIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHktcm9ja2NoaXAtdXNiZHAueWFtbAo+
IEBAIC0xMTQsNiArMTE0LDI5IEBAIHByb3BlcnRpZXM6Cj4gICAgICAgIEEgcG9ydCBub2RlIHRv
IGxpbmsgdGhlIFBIWSB0byBhIFR5cGVDIGNvbnRyb2xsZXIgZm9yIHRoZSBwdXJwb3NlIG9mCj4g
ICAgICAgIGhhbmRsaW5nIG9yaWVudGF0aW9uIHN3aXRjaGluZy4KPiAgCj4gKyAgcG9ydHM6Cj4g
KyAgICAkcmVmOiAvc2NoZW1hcy9ncmFwaC55YW1sIy9wcm9wZXJ0aWVzL3BvcnRzCgpbU2V2ZXJp
dHk6IE1lZGl1bV0KU2hvdWxkIHRoZXJlIGJlIGEgbXV0dWFsIGV4Y2x1c2lvbiBjb25zdHJhaW50
IGJldHdlZW4gdGhlIG5ld2x5IGFkZGVkCnBvcnRzIHByb3BlcnR5IGFuZCB0aGUgcHJlLWV4aXN0
aW5nIHBvcnQgcHJvcGVydHk/CgpJZiBhIGRldmljZSB0cmVlIG5vZGUgZGVmaW5lcyBib3RoIGEg
dG9wLWxldmVsIHBvcnQgYW5kIGEgcG9ydHMgbm9kZQpzaW11bHRhbmVvdXNseSwgaXQgY3VycmVu
dGx5IHBhc3NlcyBzY2hlbWEgdmFsaWRhdGlvbi4gSG93ZXZlciwgc3RhbmRhcmQKT0YgZ3JhcGgg
cGFyc2luZyBmdW5jdGlvbnMgbGlrZSBvZl9ncmFwaF9nZXRfbmV4dF9lbmRwb2ludCgpIHdpbGwg
c2lsZW50bHkKaWdub3JlIHRoZSB0b3AtbGV2ZWwgcG9ydCBpZiBhIHBvcnRzIG5vZGUgaXMgcHJl
c2VudCwgY3JlYXRpbmcgYSBzaGFkb3dpbmcKY29uZmxpY3QuCgpDb3VsZCB0aGlzIGJlIHByZXZl
bnRlZCBieSBhZGRpbmcgYSBvbmVPZiBtdXR1YWwgZXhjbHVzaW9uIGNvbnN0cmFpbnQ/CgpbIC4u
LiBdCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNo
c2V0LzIwMjYwNjI2LXJvY2tjaGlwLXVzYmRwLWNsZWFudXAtdjgtMC00N2Y2ODI5ODc4OTVAY29s
bGFib3JhLmNvbT9wYXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
