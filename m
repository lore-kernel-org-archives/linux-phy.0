Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49D61CD4F26
	for <linux-phy@archiver.kernel.org>; Fri, 19 Jun 2026 15:43:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KtbNqRpT3WMmmNr21CpoLvC3ks1lGRuFc6KyskZGACY=; b=iDhLL/DXSiGAXr
	MxiOCk89Ixjay5tLDnrp57UCL9Ug/D285t2fpfeNV+MSG62p25Jyv2Hcby25M/zvvpRRqVOEde5nD
	geneho1lNFBxv7A3vNKxovjZPc6T0ABvx+7ySktKuRfcWdpbC0o6ezaES+kRYNIWETHNEHNJPBJnh
	AdU42eAPJxJBCAFShcgIkNVzXNeO/tWrgKlqWPFZNRM0093vDukCGsOEUNSyzougwboDidPp71Nkp
	omVOnGLKvlnOW1sQtvYRwmtf03NJPBmGylZB1PqjIgWFb1aP3KLFtIwJEna05YnA46HYcEdY7EwjK
	1w/t/ASGqKQUhPzDmFvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wabNm-00000002iPk-3oYS;
	Fri, 19 Jun 2026 15:43:50 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wabNl-00000002iPd-3DDX
	for linux-phy@lists.infradead.org;
	Fri, 19 Jun 2026 15:43:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8711143A5C;
	Fri, 19 Jun 2026 15:43:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 071321F000E9;
	Fri, 19 Jun 2026 15:43:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781883829;
	bh=fyBH5aldO8sRIuALawQfQb8xw7cN0FNGojZKcuhi0w4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VYnjZ+jPebkwPoIJnGg2Ogn4aUMdQM+/Jg0XrVbT1kqr/KL730xiqVrQ/XjgQmyGn
	 icdLbIiqGEu5vAfFXDhHsKLbHgk9Qtwr8czgzJtzvHcso+8SFg7izESvYbdifJWov1
	 i82lLVYgKuubLRPsMMQ2ElOdWuBSC4Z7EG9gEhml65BJi5qOTFCiNdGPrF8MLueHWj
	 AUjp0oRbcMdMBjnPj1dhxA2rOBqCeV4o4nrCctwjaDrYGOvrmi3pQ4QdiPdmXxRiPI
	 jbahEa5iCSxfaVDI7m4+bOih77qfrfRJLFiAJueZJ4vm55Qu7HAWAodoD6b7t9+KKd
	 1uknW0gFr+rRg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 04/23] phy: rockchip: usbdp: Fix
 devm_clk_bulk_get_all check
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: conor+dt@kernel.org, vkoul@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, robh@kernel.org
In-Reply-To: <20260619-rockchip-usbdp-cleanup-v6-4-3bb1f54b3f35@collabora.com>
References: <20260619-rockchip-usbdp-cleanup-v6-0-3bb1f54b3f35@collabora.com>
 <20260619-rockchip-usbdp-cleanup-v6-4-3bb1f54b3f35@collabora.com>
Date: Fri, 19 Jun 2026 15:43:48 +0000
Message-Id: <20260619154349.071321F000E9@smtp.kernel.org>
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
IFtIaWdoXSBUaGUgZGV2aWNlIHRyZWUgcGFyc2luZyBsb2dpYyBpcyB2dWxuZXJhYmxlIHRvIGEg
TlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIGlmICdjbG9jay1uYW1lcycgaXMgbWlzc2luZyBvciBp
bmNvbXBsZXRlLgotLQoKY29tbWl0IDVlNWE3YTRmNmRiMGE0NGE0YmFjNDMwMDFlYTRkMTc5YzM3
OThjNmQKQXV0aG9yOiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFi
b3JhLmNvbT4KCnBoeTogcm9ja2NoaXA6IHVzYmRwOiBGaXggZGV2bV9jbGtfYnVsa19nZXRfYWxs
IGNoZWNrCgpUaGlzIGNvbW1pdCBmaXhlcyB0aGUgcmV0dXJuIHZhbHVlIGNoZWNrIGZvciBkZXZt
X2Nsa19idWxrX2dldF9hbGwoKQpzbyB0aGF0IGRlZmVycmVkIHByb2JlIGVycm9ycyBhcmUgcHJv
cGVybHkgcHJvcGFnYXRlZCBpbnN0ZWFkIG9mIGJlaW5nCm1hc2tlZC4KCkxpbms6IGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL2xpbnV4LXBoeS8yMDI2MDYxMjE2NDEwNy5DN0RCMjFGMDAwRTlAc210
cC5rZXJuZWwub3JnLwoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJv
Y2tjaGlwLXVzYmRwLmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAu
Ywo+IGluZGV4IDEyZGZkZDQ3MGE3ODIuLjI4NDVhMDEyZWFmY2MgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiArKysgYi9kcml2ZXJzL3Bo
eS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+IEBAIC00MjcsOCArNDI3LDggQEAgc3Rh
dGljIGludCBya191ZHBoeV9jbGtfaW5pdChzdHJ1Y3QgcmtfdWRwaHkgKnVkcGh5LCBzdHJ1Y3Qg
ZGV2aWNlICpkZXYpCj4gIAlpbnQgaTsKPiAgCj4gIAl1ZHBoeS0+bnVtX2Nsa3MgPSBkZXZtX2Ns
a19idWxrX2dldF9hbGwoZGV2LCAmdWRwaHktPmNsa3MpOwo+IC0JaWYgKHVkcGh5LT5udW1fY2xr
cyA8IDEpCj4gLQkJcmV0dXJuIC1FTk9ERVY7Cj4gKwlpZiAodWRwaHktPm51bV9jbGtzIDwgMCkK
PiArCQlyZXR1cm4gdWRwaHktPm51bV9jbGtzOwo+ICAKPiAgCS8qIHVzZWQgZm9yIGNvbmZpZ3Vy
ZSBwaHkgcmVmZXJlbmNlIGNsb2NrIGZyZXF1ZW5jeSAqLwo+ICAJZm9yIChpID0gMDsgaSA8IHVk
cGh5LT5udW1fY2xrczsgaSsrKSB7CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXMgYSBwcmUtZXhp
c3RpbmcgaXNzdWUsIGJ1dCBjb3VsZCB0aGlzIGNhdXNlIGEgbnVsbCBwb2ludGVyIGRlcmVmZXJl
bmNlCmlmIHRoZSBkZXZpY2UgdHJlZSBpcyBtaXNzaW5nIHRoZSAnY2xvY2stbmFtZXMnIHByb3Bl
cnR5PwoKTG9va2luZyBhdCBkZXZtX2Nsa19idWxrX2dldF9hbGwoKSwgaXQgcmVsaWVzIG9uIG9m
X2Nsa19idWxrX2dldCgpLCB3aGljaAppbml0aWFsaXplcyBjbGtzW2ldLmlkIHRvIGEgbnVsbCBw
b2ludGVyLiBJZiB0aGUgZGV2aWNlIHRyZWUgc3BlY2lmaWVzCidjbG9ja3MnIGJ1dCBvbWl0cyAn
Y2xvY2stbmFtZXMnIChvciBoYXMgZmV3ZXIgbmFtZXMgdGhhbiBjbG9ja3MpLCB0aGUgaWQKZmll
bGQgYXBwZWFycyB0byByZW1haW4gbnVsbC4KClNpbmNlIHN0cm5jbXAoKSBkb2VzIG5vdCBzYWZl
bHkgaGFuZGxlIG51bGwgcG9pbnRlcnMsIHBhc3NpbmcgaXQgZGlyZWN0bHkKbWlnaHQgdHJpZ2dl
ciBhbiBvb3BzIGR1cmluZyBkcml2ZXIgcHJvYmU6Cgpya191ZHBoeV9jbGtfaW5pdCgpCiAgZGV2
bV9jbGtfYnVsa19nZXRfYWxsKCkKICAvLyB1ZHBoeS0+Y2xrc1tpXS5pZCBpcyBwb3RlbnRpYWxs
eSBudWxsCiAgLi4uCiAgc3RybmNtcCh1ZHBoeS0+Y2xrc1tpXS5pZCwgInJlZmNsayIsIDYpCgpX
b3VsZCBpdCBtYWtlIHNlbnNlIHRvIHZlcmlmeSB1ZHBoeS0+Y2xrc1tpXS5pZCBpcyB2YWxpZCBi
ZWZvcmUgY29tcGFyaW5nIGl0PwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2Fz
aGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDYxOS1yb2NrY2hpcC11c2JkcC1jbGVhbnVwLXY2LTAt
M2JiMWY1NGIzZjM1QGNvbGxhYm9yYS5jb20/cGFydD00CgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
