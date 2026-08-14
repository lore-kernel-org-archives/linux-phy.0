Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7ABBBC5CFC1
	for <linux-phy@archiver.kernel.org>; Fri, 14 Aug 2026 04:53:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8wVIHWMLS0UnMfgK8fZuIKpwxztoT/ne7uVCDC1vYPA=; b=FdxAvVV0AwBdh/
	Xj5S8aJTqNVRPl0BaMYjqsjFn7JbpjnycvUrXUaZf2HY9lMe0zQp02n+9SzFMKFmL1kR/VS1SSKnA
	QzAqyTNQyHDUIALmpJA6I7jaOlQPy1ipAjfHGObDyJj/gRnsDGOBWlULpVg6Plm6V+INdWKxQ6ETT
	ZTlM2GZgA53dztXIsaRmAoI3jkCgS94YncGuCZqBWi6SHAaw4NdDUWT/+0Dn34zOuBGusKLf9O+kV
	BSQP3BZDGreugt2/BmG0Evl1Odb7yJj6aeiOTLyFNwZytyt9DFuHm9+BqaeR9huQabhuAzWuNzOZq
	mIug6LMprfxDU2PmIzpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wujuh-00000001wn2-3Tkr;
	Fri, 14 Aug 2026 04:53:03 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wujuf-00000001wmw-2tUW
	for linux-phy@lists.infradead.org;
	Fri, 14 Aug 2026 04:53:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2620141207;
	Fri, 14 Aug 2026 04:53:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7CD631F000E9;
	Fri, 14 Aug 2026 04:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786683181;
	bh=LWo/Iwk1pAe7b8ebfLJ1YqTGdKxen3/2b6UlCECV1YY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KKj+laIIijVJ+VT1fL9Yc3/ALQhApeVXAS/GT1a1jLX63inEgsnIPDWpXz4ba20/r
	 USjm1qoOwplWaeV67ySUd6uS51oQFouFDkR0KgbPEcWs04uw9xcEaF6aMqleNpRCRh
	 9GOZgM0p6Ydziwb/CVpB5/B+ia9BiXEVZkVG/FW0LDZuwQgYlIn3DJ/ZntNUG9DpQP
	 +5rsHzdkSIRH2tfa7nu42q/SeEyt0wbd9La5Mjvq8007UC1J4nyi+0ISRysVHjK7y4
	 Z+jc9oQsqe3IHv15ti64hdO28fKVzsrryHiLQnD65UfpmHJQuOgzarI7XqwtL2/YHY
	 0ddUcodnPlkPA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v14 25/38] phy: rockchip: usbdp: Avoid xHCI SErrors
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org
In-Reply-To: <20260813-rockchip-usbdp-cleanup-v14-25-b5ad9c68fa11@collabora.com>
References: <20260813-rockchip-usbdp-cleanup-v14-0-b5ad9c68fa11@collabora.com>
 <20260813-rockchip-usbdp-cleanup-v14-25-b5ad9c68fa11@collabora.com>
Date: Fri, 14 Aug 2026 04:52:59 +0000
Message-Id: <20260814045300.7CD631F000E9@smtp.kernel.org>
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
IFtIaWdoXSBUaGUgaW5pdGlhbCBwb3dlci1vbiBwYXRoIChgdWRwaHktPnN0YXR1cyA9PSBVRFBI
WV9NT0RFX05PTkVgKSBpbiBgcmtfdWRwaHlfcG93ZXJfb25gIGZhaWxzIHRvIHZlcmlmeSBgIXVk
cGh5LT5oc2AgYmVmb3JlIHJlLWVuYWJsaW5nIHRoZSBVMyBwb3J0LCB3aGljaCBjYW4gaW5jb3Jy
ZWN0bHkgZW5hYmxlIHRoZSBVU0IzIHBvcnQgZm9yIGhpZ2gtc3BlZWQtb25seSBjb25maWd1cmF0
aW9ucy4KLS0KCi0tLSBQYXRjaCBbMjVdOiBbUEFUQ0ggdjE0IDI1LzM4XSBwaHk6IHJvY2tjaGlw
OiB1c2JkcDogQXZvaWQgeEhDSSBTRXJyb3JzIC0tLQpjb21taXQgYTZhOTgyYmYxNGNlN2IxZDMx
ODYzODZhZmQ5NzFkNWZjYWRhODhiNApBdXRob3I6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3Rp
YW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgoKcGh5OiByb2NrY2hpcDogdXNiZHA6IEF2b2lkIHhI
Q0kgU0Vycm9ycwoKVGhlIFVTQkRQIFBIWSBwcm92aWRlcyB0aGUgUElQRSBjbG9jayB0byB0aGUg
VVNCMyBjb250cm9sbGVyLCB3aGljaAptZWFucyB0aGUgUEhZIG11c3QgYmUgZnVsbHkgcnVubmlu
ZyB3aGVuIGFueXRoaW5nIHRyaWVzIHRvIGFjY2Vzcwp0aGUgeEhDSSByZWdpc3RlcnMuIFRoaXMg
cGF0Y2ggYXZvaWRzIHRoZSBwcm9ibGVtcyBieSBkaXNhYmxpbmcgdGhlIFVTQjMKcG9ydCBiZWZv
cmUgcmUtaW5pdGlhbGl6aW5nIGl0LgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2No
aXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2No
aXAtdXNiZHAuYwo+IGluZGV4IGU2N2MxZGY3OTJlZDIuLmM3ZjA5MDQwMTg1YjYgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiArKysgYi9k
cml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+IEBAIC0xMDAwLDEyICsx
MDAwLDE1IEBAIHN0YXRpYyBpbnQgcmtfdWRwaHlfcG93ZXJfb24oc3RydWN0IHJrX3VkcGh5ICp1
ZHBoeSwgdTggbW9kZSkKPiAgCQkJcmtfdWRwaHlfdTNfcG9ydF9kaXNhYmxlKHVkcGh5LCBmYWxz
ZSk7CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXMgYSBwcmUtZXhpc3RpbmcgaXNzdWUsIGJ1dCBk
b2VzIHRoaXMgYnJhbmNoIGFsc28gbmVlZCB0byBjaGVjayBmb3IKIXVkcGh5LT5ocyBiZWZvcmUg
cmUtZW5hYmxpbmcgdGhlIFUzIHBvcnQ/CgpJZiBhIHN5c3RlbSBpcyByZXN0cmljdGVkIHRvIGhp
Z2gtc3BlZWQgYW5kIHRoZSBEaXNwbGF5UG9ydCBQSFkgcG93ZXJzIG9uCndoaWxlIHVkcGh5LT5z
dGF0dXMgaXMgVURQSFlfTU9ERV9OT05FLCBjb3VsZCB0aGlzIGluY29ycmVjdGx5IGVuYWJsZSB0
aGUKVVNCMyBwb3J0IGFuZCBjYXVzZSB4SENJIFNFcnJvcnM/CgpUaGUgcGF0Y2ggY29ycmVjdGx5
IGFkZHMgdGhlICF1ZHBoeS0+aHMgY2hlY2sgdG8gdGhlIHJlLWluaXQgYnJhbmNoIGJlbG93LApi
dXQgaXQgYXBwZWFycyB0byBiZSBtaXNzaW5nIGhlcmUgaW4gdGhlIGluaXRpYWwgc2V0dXAgYnJh
bmNoIG9mCnJrX3VkcGh5X3Bvd2VyX29uKCkuCgo+ICAJCXVkcGh5LT5waHlfbmVlZHNfcmVpbml0
ID0gZmFsc2U7Cj4gIAl9IGVsc2UgaWYgKHVkcGh5LT5waHlfbmVlZHNfcmVpbml0KSB7Cj4gLQkJ
aWYgKHVkcGh5LT5tb2RlID09IFVEUEhZX01PREVfRFApCj4gLQkJCXJrX3VkcGh5X3UzX3BvcnRf
ZGlzYWJsZSh1ZHBoeSwgdHJ1ZSk7Cj4gKwkJcmtfdWRwaHlfdTNfcG9ydF9kaXNhYmxlKHVkcGh5
LCB0cnVlKTsKPiArCQl1ZGVsYXkoMTApOwo+ICAKPiAgCQlyZXQgPSBya191ZHBoeV9pbml0KHVk
cGh5KTsKPiAgCQlpZiAocmV0KQo+ICAJCQlyZXR1cm4gcmV0Owo+ICsKPiArCQlpZiAoIXVkcGh5
LT5ocyAmJiB1ZHBoeS0+bW9kZSAmIFVEUEhZX01PREVfVVNCKQo+ICsJCQlya191ZHBoeV91M19w
b3J0X2Rpc2FibGUodWRwaHksIGZhbHNlKTsKPiAgCQl1ZHBoeS0+cGh5X25lZWRzX3JlaW5pdCA9
IGZhbHNlOwo+ICAJfQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5k
ZXYvIy9wYXRjaHNldC8yMDI2MDgxMy1yb2NrY2hpcC11c2JkcC1jbGVhbnVwLXYxNC0wLWI1YWQ5
YzY4ZmExMUBjb2xsYWJvcmEuY29tP3BhcnQ9MjUKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
