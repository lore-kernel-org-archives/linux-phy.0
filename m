Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D15DBC88E75
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 14:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RCJ1NedPCpbLU0ZQlHEsBXIop9++/7yJZAidzfbIZcU=; b=5EdJJyo3oeWwhz
	p445ewo5qFxBLJFAC+cTV5BBtbzvXyGaYQzeP0CIDS9/FUpiC+pwTVXnzhGEl+adLTck7g7jwB8m/
	Ete2jamliPsZAguC0e5CLOKV7VyYtBxARIGt6ODttSCO86uhaDiSHVe5HqIQfCJVbLXwW5JjiywSc
	fdXl/VrvVVbkM50wmdqNkEMsL2Ztx5VdNvxBvs8WIH0Q83GruL2beaSM2G5ytKVBVvc3Z/3bsf412
	BVwQ33OCEfreCHlbHdG3JX3GZchTpUVQWNetKHjYnvzLE4s6H8PuKR6ORgCrEh+miBaodYF9NhsDb
	zN571gdFAeuT2618lUlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6Tl5-00000006rb3-1gJg;
	Tue, 15 Sep 2026 14:03:39 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6Tl4-00000006ral-45Vb
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 14:03:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6B420600D1;
	Tue, 15 Sep 2026 14:03:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C31661F000FF;
	Tue, 15 Sep 2026 14:03:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789481018;
	bh=WNivz6zoRX7tVHZc8jF5TKz+H/N85t38y1JGRxfFgDE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KSKMrDpK7kFHnOElon6p/mKYmWbzd4zizM2T4nD+0HTpOw5g50pLSk4zC5sfSden7
	 VfOYWwS4JO7OChQX4S15xWSBjDU45IxJ6fx64ua3ceT1ujrVy02rBoF+i2wEtYAMjK
	 PlFbczmRdKmCGWnpTAmfnR5XG1OhP+vnvE7Ny4W9r+6/tQwLlGyER6seYUZIzpVjNq
	 la8LS1wWgGsSfWHlLVoSc5Go34nrnqglAELMUvoNfu5csdoB6pYs5lRYtUHePAjkc8
	 SgVmFnfJHbVW8JiRzt7FxsNnClGLpQN2xgUgnbXz5DE2xccAMsU7nAQFsppF/0221j
	 BD+bQT48P+6JA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v15 11/16] phy: rockchip: usbdp: Support single-lane DP
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: olteanv@gmail.com, robh@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org
In-Reply-To: <20260915-rockchip-usbdp-cleanup-v15-11-80e2c11d1ce8@collabora.com>
References: <20260915-rockchip-usbdp-cleanup-v15-0-80e2c11d1ce8@collabora.com>
 <20260915-rockchip-usbdp-cleanup-v15-11-80e2c11d1ce8@collabora.com>
Date: Tue, 15 Sep 2026 14:03:37 +0000
Message-Id: <20260915140337.C31661F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiByb2NrY2hp
cDogdXNiZHA6IGVycmFudCBEUCBsYW5lIGVuYWJsZSBpbiBVU0Itb25seSBtb2RlCi0tCgpjb21t
aXQgZWFlYTdjMGUzNzFjNDFhYmM0NTg5YzBhYzE3Y2I1ZDdmZTdmMTE3OQpBdXRob3I6IFpoYW5n
IFl1YmluZyA8eXViaW5nLnpoYW5nQHJvY2stY2hpcHMuY29tPgoKcGh5OiByb2NrY2hpcDogdXNi
ZHA6IFN1cHBvcnQgc2luZ2xlLWxhbmUgRFAKClRoaXMgY29tbWl0IGltcGxlbWVudHMgc3VwcG9y
dCBmb3IgdXNpbmcganVzdCBhIHNpbmdsZSBEaXNwbGF5UG9ydCBsaW5lIGluCnRoZSByb2NrY2hp
cCB1c2JkcCBwaHkgZHJpdmVyLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAv
cGh5LXJvY2tjaGlwLXVzYmRwLmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAt
dXNiZHAuYwo+IGluZGV4IGI3MmRhZjgwYWYxNWYuLjRmY2U5Y2Q2NjQ3MzUgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiArKysgYi9kcml2
ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwoKWyAuLi4gXQoKPiBAQCAtMTA0
OSwxOCArMTAzOCwxNyBAQCBzdGF0aWMgaW50IHJrX3VkcGh5X2RwX3BoeV9wb3dlcl9vbihzdHJ1
Y3QgcGh5ICpwaHkpCj4gIHN0YXRpYyBpbnQgcmtfdWRwaHlfZHBfcGh5X3Bvd2VyX29uKHN0cnVj
dCBwaHkgKnBoeSkKPiAgewo+ICAJc3RydWN0IHJrX3VkcGh5ICp1ZHBoeSA9IHBoeV9nZXRfZHJ2
ZGF0YShwaHkpOwo+IC0JaW50IHJldCwgZHBfbGFuZXM7Cj4gKwlpbnQgcmV0Owo+ICAKPiAgCW11
dGV4X2xvY2soJnVkcGh5LT5tdXRleCk7Cj4gIAo+IC0JZHBfbGFuZXMgPSBya191ZHBoeV9kcGxh
bmVfZ2V0KHVkcGh5KTsKPiAtCXBoeV9zZXRfYnVzX3dpZHRoKHBoeSwgZHBfbGFuZXMpOwo+ICsJ
cGh5X3NldF9idXNfd2lkdGgocGh5LCB1ZHBoeS0+ZHBfbGFuZXMpOwo+ICAKPiAgCXJldCA9IHJr
X3VkcGh5X3Bvd2VyX29uKHVkcGh5LCBVRFBIWV9NT0RFX0RQKTsKPiAgCWlmIChyZXQpCj4gIAkJ
Z290byB1bmxvY2s7Cj4gIAo+IC0JcmtfdWRwaHlfZHBsYW5lX2VuYWJsZSh1ZHBoeSwgZHBfbGFu
ZXMpOwo+ICsJcmtfdWRwaHlfZHBsYW5lX2VuYWJsZSh1ZHBoeSwgdWRwaHktPmRwX2xhbmVzKTsK
CltTZXZlcml0eTogTWVkaXVtXQpDb3VsZCB0aGlzIHVuaW50ZW50aW9uYWxseSBlbmFibGUgdW5j
bG9ja2VkIERQIGxhbmUgZHJpdmVycyBvbiB0aGUgcGh5c2ljYWwKcGlucyBpbiBVU0Itb25seSBt
b2RlPwoKSWYgdGhlIERQIGNvbnRyb2xsZXIgY2FsbHMgcGh5X3Bvd2VyX29uKCksIHJrX3VkcGh5
X3Bvd2VyX29uKCkgbWlnaHQgZGV0ZWN0CnRoYXQgVURQSFlfTU9ERV9EUCBpcyBub3Qgc3VwcG9y
dGVkIGluIHVkcGh5LT5tb2RlLiBJZiBpdCBkb2VzLCBpdCBwcmludHMgYQptZXNzYWdlIGFuZCBy
ZXR1cm5zIDAgKHN1Y2Nlc3MpIHdpdGhvdXQgcG93ZXJpbmcgdXAgdGhlIERQIFBMTHMuIEV4ZWN1
dGlvbgp0aGVuIHByb2NlZWRzIHRvIHRoaXMgcmtfdWRwaHlfZHBsYW5lX2VuYWJsZSgpIGNhbGwu
CgpQcmlvciB0byB0aGlzIHBhdGNoLCBya191ZHBoeV9kcGxhbmVfZ2V0KCkgcmV0dXJuZWQgMCB3
aGVuIERQIHdhcyBkaXNhYmxlZCwKd2hpY2ggc2FmZWx5IGRpc2FibGVkIHRoZSBsYW5lcyBhbmQg
YXNzZXJ0ZWQgQ01OX0RQX0NNTl9SU1ROLiBOb3csIHNpbmNlCnJrX3VkcGh5X3R5cGVjX211eF9z
ZXQoKSB1bmNvbmRpdGlvbmFsbHkgc2V0cyB1ZHBoeS0+ZHBfbGFuZXMgdG8gMiBvciA0IGluClR5
cGUtQyBzdGF0ZXMgKGV2ZW4gd2l0aG91dCBEUCBhbHRtb2RlKSwgYSBub24temVybyB2YWx1ZSBp
cyBwYXNzZWQgaGVyZS4KCkRvZXMgcGFzc2luZyB0aGUgZGVjb3VwbGVkIHVkcGh5LT5kcF9sYW5l
cyBza2lwIGFzc2VydGluZyB0aGUgcmVzZXQgYW5kCmVycm9uZW91c2x5IGVuYWJsZSB1bmNsb2Nr
ZWQgRFAgbGFuZSBkcml2ZXJzLCBwb3RlbnRpYWxseSBjYXVzaW5nIHVuZGVmaW5lZApQSFkgYmVo
YXZpb3Igb3IgZWxlY3RyaWNhbCBjb250ZW50aW9uIG9uIHNoYXJlZCBwaW5zPwoKWyAuLi4gXQoK
PiBAQCAtMTM1Niw2ICsxMzQ1LDcgQEAgc3RhdGljIGludCBya191ZHBoeV90eXBlY19tdXhfc2V0
KHN0cnVjdCB0eXBlY19tdXhfZGV2ICptdXgsCj4gIAkJCXVkcGh5LT5sYW5lX211eF9zZWxbM10g
PSBQSFlfTEFORV9NVVhfRFA7Cj4gIAkJfQo+ICAJCW1vZGUgPSBVRFBIWV9NT0RFX0RQX1VTQjsK
PiArCQl1ZHBoeS0+ZHBfbGFuZXMgPSAyOwo+ICAJCWJyZWFrOwo+ICAJfQoKW1NldmVyaXR5OiBN
ZWRpdW1dCkRvZXMgdGhpcyB1bmNvbmRpdGlvbmFsbHkgc2V0IGRwX2xhbmVzIHRvIDIgZm9yIFVT
Qi1vbmx5IFR5cGUtQyBzdGF0ZXMgd2l0aG91dAp1cGRhdGluZyB1ZHBoeS0+bW9kZSwgY29udHJp
YnV0aW5nIHRvIHRoZSBEUCBsYW5lIGVuYWJsZSBpc3N1ZSBtZW50aW9uZWQgYWJvdmUKaW4gcmtf
dWRwaHlfZHBfcGh5X3Bvd2VyX29uKCk/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6
Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTE1LXJvY2tjaGlwLXVzYmRwLWNsZWFudXAt
djE1LTAtODBlMmMxMWQxY2U4QGNvbGxhYm9yYS5jb20/cGFydD0xMQoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
