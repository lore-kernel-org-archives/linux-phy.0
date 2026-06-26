Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4B6AC43458
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jun 2026 21:12:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=76GXCHApIA9y4Ul36X4eTjdDZQEYc7hkBmAaWpG/6eY=; b=g+V9K+puPFzk5b
	T8E3aYJrQkzMNoyYTClzA/275icMRl5kIOk43szV5mO3bVsw/SdOdRfkzns+wRZH3GwPbz7aW+x7R
	NFn84iIKRG31Ed5hpVouGLcoHPo2Tp1W4pVP9ltQylOByuKtfKDU2Ti5Q1L2yw50qlSmb1jDInoJ0
	Wqwb95pxdqHJFHr1rTyCugMn+GIE7ULpHAE6yugco7k6rL7j3n/SPKnrt69QMdmh4J/P2iRAAfYar
	RwRVB/uWJ3uZEV6p+qbDDyGvqPjXiEKMgkveZHuVf2T6+tawDHEzq1ZWp5JkfD0Eske06Vb+u6SsF
	Hk4lE3ncf52l4YduMc4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdDr5-0000000BtcR-1qjo;
	Fri, 26 Jun 2026 21:12:55 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdDr4-0000000BtcH-1KsJ
	for linux-phy@lists.infradead.org;
	Fri, 26 Jun 2026 21:12:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 326CA600AA;
	Fri, 26 Jun 2026 21:12:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E4BF1F000E9;
	Fri, 26 Jun 2026 21:12:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782508372;
	bh=jAzKw3sYNsEZPrktY99qprlST9OPPx+mTpJe43RxvGo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WFqeo51YNT8iH297xKh1QgaKS+okorFjPgQzSu8qXd2f3TcnszaZIg9+LKtDMDhIE
	 NRTdQViCnmaM8FxyL+knr6Ch62gIj+tOgc9pXeFdzWE7WgRf5KX4XxFE9HQWnjPw5s
	 TUnLDOPx9e8dPmMvDufeQQEjNGoD9IdfXDsJkaLS4tHiO+PQKFVmBnWQxScualKMXE
	 gasuIuwIJkKW3FM3UO23F/tCFTMIikZ3SmdtLiOxrCGtsZHG6DwcJ1dh2NGEzl8+Qn
	 y8kHBZp6W1JFpHAsR3qgPhfUFwVv7KLz94UdxvK/DHTxdn0PnqtqibL2OaVrv0v1Hp
	 gaMQrOC1fA77Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 05/29] phy: rockchip: usbdp: Handle missing
 clock-names DT property gracefully
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: neil.armstrong@linaro.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, olteanv@gmail.com, robh@kernel.org
In-Reply-To: <20260626-rockchip-usbdp-cleanup-v8-5-47f682987895@collabora.com>
References: <20260626-rockchip-usbdp-cleanup-v8-0-47f682987895@collabora.com>
 <20260626-rockchip-usbdp-cleanup-v8-5-47f682987895@collabora.com>
Date: Fri, 26 Jun 2026 21:12:51 +0000
Message-Id: <20260626211252.5E4BF1F000E9@smtp.kernel.org>
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
IFtIaWdoXSBJbmNvbXBsZXRlIGZpeDogTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIG9uIG1pc3Np
bmcgYGNsb2NrLW5hbWVzYCBkZXZpY2UgdHJlZSBwcm9wZXJ0eSByZW1haW5zIHVucGF0Y2hlZCBp
biBzaWJsaW5nIHJvY2tjaGlwIFBIWSBkcml2ZXJzLgotLQoKY29tbWl0IDc2NDIzZjJhNWMwNWM5
NmY5NmE2YTBhYzMyODY0NmJkMzg5YWI0OWMKQXV0aG9yOiBTZWJhc3RpYW4gUmVpY2hlbCA8c2Vi
YXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KCnBoeTogcm9ja2NoaXA6IHVzYmRwOiBIYW5k
bGUgbWlzc2luZyBjbG9jay1uYW1lcyBEVCBwcm9wZXJ0eSBncmFjZWZ1bGx5CgpUaGlzIGNvbW1p
dCBmaXhlcyBhIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZSBpbiB0aGUgcm9ja2NoaXAgdXNiZHAg
UEhZIGRyaXZlcgp0aGF0IG9jY3VycyB3aGVuIHRoZSBkZXZpY2UgdHJlZSBzcGVjaWZpZXMgY2xv
Y2tzIGJ1dCBvbWl0cyBjbG9jay1uYW1lcy4gSXQKYWRkcyBhIGNoZWNrIHRvIGVuc3VyZSB0aGUg
Y2xvY2sgSUQgc3RyaW5nIGlzIHNldCBiZWZvcmUgcGFzc2luZyBpdCB0bwpzdHJuY21wKCkuCgpD
bG9zZXM6IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9tZXNzYWdlLzIwMjYwNjE5MTU0MzQ5LjA3MTMy
MUYwMDBFOSU0MHNtdHAua2VybmVsLm9yZwoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9j
a2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9j
a2NoaXAtdXNiZHAuYwo+IGluZGV4IDI4NDVhMDEyZWFmY2MuLjNmYzgyMjJmY2FlYzIgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiArKysg
Yi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+IEBAIC00MzIsNiAr
NDMyLDkgQEAgc3RhdGljIGludCBya191ZHBoeV9jbGtfaW5pdChzdHJ1Y3QgcmtfdWRwaHkgKnVk
cGh5LCBzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gIAo+ICAJLyogdXNlZCBmb3IgY29uZmlndXJlIHBo
eSByZWZlcmVuY2UgY2xvY2sgZnJlcXVlbmN5ICovCj4gIAlmb3IgKGkgPSAwOyBpIDwgdWRwaHkt
Pm51bV9jbGtzOyBpKyspIHsKPiArCQlpZiAoIXVkcGh5LT5jbGtzW2ldLmlkKQo+ICsJCQljb250
aW51ZTsKPiArCgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXMgYSBwcmUtZXhpc3RpbmcgaXNzdWUs
IGJ1dCBkb2VzIHRoaXMgc2FtZSBtaXNzaW5nIGNsb2NrLW5hbWVzCnZ1bG5lcmFiaWxpdHkgbmVl
ZCB0byBiZSBhZGRyZXNzZWQgaW4gc2libGluZyByb2NrY2hpcCBQSFkgZHJpdmVycz8KCkxvb2tp
bmcgYXQgcGh5LXJvY2tjaGlwLWlubm8tdXNiMi5jIGluIHJvY2tjaGlwX3VzYjJwaHlfY2xrNDgw
bV9yZWdpc3RlcigpLAp0aGUgc2FtZSBwYXR0ZXJuIGFwcGVhcnM6CgoJZm9yIChpID0gMDsgaSA8
IHJwaHktPm51bV9jbGtzOyBpKyspIHsKCQlpZiAoIXN0cm5jbXAocnBoeS0+Y2xrc1tpXS5pZCwg
InBoeWNsayIsIDYpKSB7CgkJCS4uLgoKU2ltaWxhcmx5LCBpbiBwaHktcm9ja2NoaXAtbmFuZW5n
LWNvbWJwaHkuYyBpbiByb2NrY2hpcF9jb21icGh5X3BhcnNlX2R0KCk6CgoJZm9yIChpID0gMDsg
aSA8IHByaXYtPm51bV9jbGtzOyBpKyspIHsKCQlpZiAoIXN0cm5jbXAocHJpdi0+Y2xrc1tpXS5p
ZCwgInJlZiIsIDMpKSB7CgkJCS4uLgoKSWYgdGhlIGRldmljZSB0cmVlIG9taXRzIGNsb2NrLW5h
bWVzIGZvciB0aGVzZSBkcml2ZXJzLCB3b24ndApkZXZtX2Nsa19idWxrX2dldF9hbGwoKSBsZWF2
ZSB0aGUgaWQgZmllbGQgYXMgTlVMTCBhbmQgY2F1c2UgYSBOVUxMIHBvaW50ZXIKZGVyZWZlcmVu
Y2UgZHVyaW5nIHN0cm5jbXAoKSBqdXN0IGxpa2UgaXQgZGlkIGhlcmU/Cgo+ICAJCWlmICghc3Ry
bmNtcCh1ZHBoeS0+Y2xrc1tpXS5pZCwgInJlZmNsayIsIDYpKSB7Cj4gIAkJCXVkcGh5LT5yZWZj
bGsgPSB1ZHBoeS0+Y2xrc1tpXS5jbGs7Cj4gIAkJCWJyZWFrOwoKLS0gClNhc2hpa28gQUkgcmV2
aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDYyNi1yb2NrY2hpcC11
c2JkcC1jbGVhbnVwLXY4LTAtNDdmNjgyOTg3ODk1QGNvbGxhYm9yYS5jb20/cGFydD01CgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
