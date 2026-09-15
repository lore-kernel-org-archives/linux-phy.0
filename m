Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB868C88E7F
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 15:42:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f8tdsJN0IO8smdBaNBT5SNadMxsuwM3hM2/4ENFNwSU=; b=BlJTRHvEPZdLAz
	9LXEh2uns6WHibNBHMudHsOJg6ntom92T0S4hXjKnWD7dEJcxl9rU8zjz8Rs6o3BONmfLmK83wBPk
	IJC9167TlaQqH5dMSLCt4aRN5EIbDcXLiXfb2YGVX7Fvd5Kem5yXhImyrF+7aN1e0ivNHpbKjg4GC
	kX4pPB6VoytMN0CvNnJ+s5ybglG+e2gMIUw5LTbecdy7J/rMV/4HgKSNSmJXhdtrBXWDaVOGCFxVZ
	LHKM0aWgT/HS52xAl/XOdlMK36fI7uD4uoaitSnPvQ5SAWVRosUBO9+C6NUnSBb1Se9jyO86fNOLl
	kwjDxynYUYycnad+IJ8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VJ1-00000007GKz-2ER5;
	Tue, 15 Sep 2026 15:42:47 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VIz-00000007GKj-42I1
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 15:42:45 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 6974E43D3D;
	Tue, 15 Sep 2026 15:42:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB10A1F000FF;
	Tue, 15 Sep 2026 15:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789486965;
	bh=AX4ZPiwoECjWJdEGXj/MDeda6bu8zZxZKkmx2AN2TIw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HzElr28TA2A6t61nW10Ne++osJPTsbGCzMP8PxZf9TkC22tkHny0PUmSm0mrtYt5E
	 qHrRn7WdlXIwcaCevu0vhmJGc+5VykOc8MyhsU3XyFKth17SAel0jzGLEJj6ZG8exv
	 /dNFWFRK3elx2rM9FqC73f5K9JBOG4DNgGL29T/IPLaTxkzC+IL5JwnCI0nkOuPO4e
	 zAtvJN5aXHAGjeJjLmxFi0NOmpAXGv7p96FCR1EezQID5mW02/o/czyqNEWziabbOU
	 qyanKfDkT2ppY+LZY0QS/AVpCJgusZrkbj+QMH2qqle12F2WMC1p1HI5yr1bJ+fbRS
	 JWwThRNRNl+Fw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 15/20] drm/bridge: starfive: Add JH7110 HDMI
 controller driver
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: olteanv@gmail.com, robh@kernel.org, devicetree@vger.kernel.org, linux-clk@vger.kernel.org, dri-devel@lists.freedesktop.org, lee@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, mfd@lists.linux.dev, linux-phy@lists.infradead.org, vkoul@kernel.org
In-Reply-To: <20260915-jh7110-clean-send-v4-15-f0e4fd6f2cc8@samsung.com>
References: <20260915-jh7110-clean-send-v4-0-f0e4fd6f2cc8@samsung.com>
 <CGME20260915153241eucas1p292a3312a0ca8aed99cc416c0e01c3b66@eucas1p2.samsung.com>
 <20260915-jh7110-clean-send-v4-15-f0e4fd6f2cc8@samsung.com>
Date: Tue, 15 Sep 2026 15:42:43 +0000
Message-Id: <20260915154243.EB10A1F000FF@smtp.kernel.org>
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

PiBBZGQgdGhlIEhETUkgY29udHJvbGxlciAoYnJpZGdlKSBkcml2ZXIgZm9yIHRoZSBTdGFyRml2
ZSBKSDcxMTAuCj4gCj4gVGhpcyBkcml2ZXIgYmluZHMgdG8gdGhlIHN0YXJmaXZlLGpoNzExMC1p
bm5vLWhkbWktY29udHJvbGxlciBub2RlLiBJdAo+IGdldHMgaXRzIHJlZ2lzdGVyIGFjY2Vzcywg
bW9kdWxlIGFuZCBidXMgY2xvY2tzIGZyb20gdm91dGNyZywgYW5kCj4gY29uc3VtZXMgdGhlIHBp
eGVsIGNsb2NrIGFuZCB0aGUgUEhZIGZyb20gaXRzIGhkbWlfcGh5IHNpYmxpbmcuCj4gCj4gVGhl
IGRyaXZlciBjYWxscyB0aGUgZ2VuZXJpYyBpbm5vX2hkbWlfcHJvYmUgZnVuY3Rpb24sIHdoaWNo
IHBpY2tzIHVwCj4gdGhlIHJlZ21hcCBzaGFyZWQgd2l0aCB0aGUgUEhZIGZyb20gdGhlIHBhcmVu
dCBkZXZpY2UgYW5kIHJlZ2lzdGVycyBhCj4gRFJNIGJyaWRnZS4gVGhlIC5lbmFibGUgaG9vayBp
cyByZXNwb25zaWJsZSBmb3Igc2V0dGluZyB0aGUgUEhZJ3MgcGl4ZWwKPiBjbG9jayByYXRlIHZp
YSBjbGtfc2V0X3JhdGUoKSBhbmQgcG93ZXJpbmcgb24gdGhlIFBIWSB2aWEKPiBwaHlfcG93ZXJf
b24oKS4KPiAKPiBUaGUgREM4MjAwIGhhcyB0d28gcGFuZWxzLCBlYWNoIGV4cG9zaW5nIGEgRFAg
YW5kIGEgRFBJIGludGVyZmFjZSwgYW5kIGEKPiBtdXggaW4gdGhlIHZpZGVvIG91dHB1dCBzeXN0
ZW0gY29udHJvbGxlciBwaWNrcyB3aGljaCBvZiB0aGVtIGRyaXZlcyB0aGUKPiBIRE1JIHRyYW5z
bWl0dGVyLiBJdCBjb21lcyBvdXQgb2YgcmVzZXQgb24gcGFuZWwgMCAvIERQSSwgd2hpY2ggaGFw
cGVucwo+IFsgLi4uIF0KPiBkZXZtX2RybV9icmlkZ2VfYWRkKCkuIFJlbGVhc2luZyB0aGVtIGlu
IC5yZW1vdmUgcnVucyBiZWZvcmUgZGV2cmVzCj4gdW53aW5kcyBhbmQgd291bGQgbGVhdmUgdGhl
IGJyaWRnZSByZWdpc3RlcmVkIHdpdGggaXRzIGNsb2NrcyBhbHJlYWR5Cj4gZ2F0ZWQuCj4gCj4g
U2lnbmVkLW9mZi1ieTogTWljaGFsIFdpbGN6eW5za2kgPG0ud2lsY3p5bnNraUBzYW1zdW5nLmNv
bT4KClNhc2hpa28gaGFzIHJldmlld2VkIHRoaXMgcGF0Y2ggYW5kIGZvdW5kIG5vIGlzc3Vlcy4g
SXQgbG9va3MgZ3JlYXQhCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtv
LmRldi8jL3BhdGNoc2V0LzIwMjYwOTE1LWpoNzExMC1jbGVhbi1zZW5kLXY0LTAtZjBlNGZkNmYy
Y2M4QHNhbXN1bmcuY29tP3BhcnQ9MTUKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
