Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72A22C5CFC1
	for <linux-phy@archiver.kernel.org>; Fri, 14 Aug 2026 05:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tNCSz4Oh58S6Gs7J1saEpiAtishqeGzvJ+Ux4yQ3shY=; b=A12l+m5p0NylUn
	REcv7wy2M8A5Rc5c9D1nvIkO2xA36T9KMaUrLJDBF6vK7IU2VGZPqEUnFiWhh8tBThbQfDI6gXZVo
	f1y0w7cMaOQI95GMORkNyejTZebDA8Ug/5osmA+3TXvbo3H42xJlUtI5zdWyJr6mH6fG99H7Z9LXZ
	h7P71CbcI2bej0RclOeDvqn74F9nGnER2gMFacqrb1eOVrCTwHQwrnmpAbqB3H5zeqwJkcXLq4Oe1
	luK29EPC4owM1Gjm0V6q1A9UTNsX5VERwdZVvLAC02/2Fk7UGyiYFQ/JaeVidXhynr90T/PCHcchC
	cZHx0eH64fKuDcfuGg8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wukMs-00000001yRY-0iUz;
	Fri, 14 Aug 2026 05:22:10 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wukMq-00000001yRO-3OfB
	for linux-phy@lists.infradead.org;
	Fri, 14 Aug 2026 05:22:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2695043E4D;
	Fri, 14 Aug 2026 05:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CB591F000E9;
	Fri, 14 Aug 2026 05:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786684928;
	bh=6a6P7CsSBem5EZ6nRrdno+qrJxbQ7T6Q1QTl9N8EXYM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=m3f+n18f5SrihziYzRDCddGQlhY0Wa19tQZWrHWIvaGaw6rNnIZSkDfZ+8Q/ywDd2
	 r+89LFMpA46z5rcU4vT75sDNRGgO+oOzOjF8XzAQQHL3GInIbAbwWz/PLWlCbKrXO9
	 PvX1cH5HypK0H+dKuLn/xbehLvsWgyVt321E/8xfn73PXU4QNmnktMwORcbQuNLN63
	 kOWPDYrDm38BFGxxSSvdXj07YMriJTR6b5Ay8o0ErBS+kt/bLVMZXY88DxU+2xmiiw
	 4NHlxdWNeXKXTm+QZHS7aBicmtOPI3xCP3DodelhPOqDE25tjMvj+lDkjKi+q0oS0S
	 eCcEIuP29784A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v14 29/38] usb: dwc3: rockchip: introduce glue driver
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: neil.armstrong@linaro.org, robh@kernel.org, vkoul@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, olteanv@gmail.com
In-Reply-To: <20260813-rockchip-usbdp-cleanup-v14-29-b5ad9c68fa11@collabora.com>
References: <20260813-rockchip-usbdp-cleanup-v14-0-b5ad9c68fa11@collabora.com>
 <20260813-rockchip-usbdp-cleanup-v14-29-b5ad9c68fa11@collabora.com>
Date: Fri, 14 Aug 2026 05:22:06 +0000
Message-Id: <20260814052207.8CB591F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVW5jb25kaXRpb25hbCBh
c3NpZ25tZW50IG9mIGNvbmRpdGlvbmFsbHkgY29tcGlsZWQgYC5jb21wbGV0ZWAgYW5kIGAucHJl
cGFyZWAgUE0gY2FsbGJhY2tzIGluIGBkd2MzX3JvY2tjaGlwX2Rldl9wbV9vcHNgIGNhdXNlcyBh
IGJ1aWxkIGZhaWx1cmUgd2hlbiBgQ09ORklHX1BNX1NMRUVQYCBpcyBkaXNhYmxlZC4KLS0KCi0t
LSBQYXRjaCBbMjldOiBbUEFUQ0ggdjE0IDI5LzM4XSB1c2I6IGR3YzM6IHJvY2tjaGlwOiBpbnRy
b2R1Y2UgZ2x1ZSBkcml2ZXIgLS0tCmNvbW1pdCAwOWFiY2JjMDY1OTM0YWQ0YmZiYTM0OTliMjRl
MWJkODg4ODgxYzlkCkF1dGhvcjogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVs
QGNvbGxhYm9yYS5jb20+Cgp1c2I6IGR3YzM6IHJvY2tjaGlwOiBpbnRyb2R1Y2UgZ2x1ZSBkcml2
ZXIKCkludHJvZHVjZSBSb2NrY2hpcCBzcGVjaWZpYyBnbHVlIGNvZGUgZm9yIHRoZSBTeW5vcHN5
cyBEV0MzIFVTQiBkcml2ZXIuCkZvciBub3cgdGhpcyBoYW5kbGVzIHRoaW5ncyBpZGVudGljYWwg
dG8gdGhlIGRlZmF1bHQgZ2x1ZS4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdXNiL2R3YzMvZHdj
My1yb2NrY2hpcC5jIGIvZHJpdmVycy91c2IvZHdjMy9kd2MzLXJvY2tjaGlwLmMKPiBuZXcgZmls
ZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLjFkZjMzNjI1YjY5ZjgKPiAtLS0g
L2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy91c2IvZHdjMy9kd2MzLXJvY2tjaGlwLmMKWyAuLi4g
XQo+ICtzdGF0aWMgdm9pZCBkd2MzX3JvY2tjaGlwX2NvbXBsZXRlKHN0cnVjdCBkZXZpY2UgKmRl
dikKPiArewo+ICsJZHdjM19wbV9jb21wbGV0ZShkZXZfZ2V0X2RydmRhdGEoZGV2KSk7Cj4gK30K
PiArCj4gK3N0YXRpYyBpbnQgZHdjM19yb2NrY2hpcF9wcmVwYXJlKHN0cnVjdCBkZXZpY2UgKmRl
dikKPiArewo+ICsJcmV0dXJuIGR3YzNfcG1fcHJlcGFyZShkZXZfZ2V0X2RydmRhdGEoZGV2KSk7
Cj4gK30KPiArI2VuZGlmCj4gKwo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGRldl9wbV9vcHMgZHdj
M19yb2NrY2hpcF9kZXZfcG1fb3BzID0gewo+ICsJU0VUX1NZU1RFTV9TTEVFUF9QTV9PUFMoZHdj
M19yb2NrY2hpcF9zdXNwZW5kLCBkd2MzX3JvY2tjaGlwX3Jlc3VtZSkKPiArCS5jb21wbGV0ZSA9
IGR3YzNfcm9ja2NoaXBfY29tcGxldGUsCj4gKwkucHJlcGFyZSA9IGR3YzNfcm9ja2NoaXBfcHJl
cGFyZSwKCltTZXZlcml0eTogTG93XQpXaWxsIHRoaXMgY2F1c2UgYSBidWlsZCBmYWlsdXJlIHdo
ZW4gQ09ORklHX1BNX1NMRUVQIGlzIGRpc2FibGVkPwoKVGhlIGZ1bmN0aW9ucyBkd2MzX3JvY2tj
aGlwX2NvbXBsZXRlKCkgYW5kIGR3YzNfcm9ja2NoaXBfcHJlcGFyZSgpIGFyZQpkZWZpbmVkIGlu
c2lkZSBhbiAjaWZkZWYgQ09ORklHX1BNX1NMRUVQIGJsb2NrLCBidXQgdGhleSBhcmUgcmVmZXJl
bmNlZAp1bmNvbmRpdGlvbmFsbHkgaGVyZSBpbiBkd2MzX3JvY2tjaGlwX2Rldl9wbV9vcHMuCgpU
aGlzIHdvdWxkIGxlYXZlIHRoZW0gdW5kZWNsYXJlZCBpZiBzbGVlcCBzdXBwb3J0IGlzIG5vdCBj
b25maWd1cmVkLgoKPiArCS8qCj4gKwkgKiBSdW50aW1lIHN1c3BlbmQgaGFsdHMgdGhlIGNvbnRy
b2xsZXIgb24gZGlzY29ubmVjdGlvbi4gSXQgcmVsaWVzIG9uCj4gKwkgKiBwbGF0Zm9ybXMgd2l0
aCBjdXN0b20gY29ubmVjdGlvbiBub3RpZmljYXRpb24gdG8gc3RhcnQgdGhlIGNvbnRyb2xsZXIK
PiArCSAqIGFnYWluLgo+ICsJICovCj4gKwlTRVRfUlVOVElNRV9QTV9PUFMoZHdjM19yb2NrY2hp
cF9ydW50aW1lX3N1c3BlbmQsIGR3YzNfcm9ja2NoaXBfcnVudGltZV9yZXN1bWUsCj4gKwkJCSAg
IGR3YzNfcm9ja2NoaXBfcnVudGltZV9pZGxlKQo+ICt9OwoKLS0gClNhc2hpa28gQUkgcmV2aWV3
IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDgxMy1yb2NrY2hpcC11c2Jk
cC1jbGVhbnVwLXYxNC0wLWI1YWQ5YzY4ZmExMUBjb2xsYWJvcmEuY29tP3BhcnQ9MjkKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
