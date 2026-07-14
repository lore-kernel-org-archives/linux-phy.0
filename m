Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6285DC43458
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jul 2026 20:12:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XepZHf5hgEJZRV00fgZhz3iyo72NOf/uQPTYjUHRZGA=; b=B94EPANRTH6gd1
	BjR/5P+YYKynh2p78MTNAeS3QlrCL4uvD0TOWiWKv3cjTMtSFsO8zifb8SlmfITOaO/zoNN3GuZXU
	TN7FtNKUSf+OnxUgXdPzFjke+wyhLqjWpdKzXQ5FjLVOQ0PP4tSjHdTf+yjBB+kxquv9u21+wHgWF
	1JMjZIZlq4Hwad+CVCg/TDyGlfL9YshgvkfkPDgHGx6k8Y12bn7oTFl0SEo96dxPwSMTEKWtrCs4w
	235BekBkQshfuYx16BAPtgHDUx32F1VOLhCDP4Em9KsEwDdiZ7mx5YxpQjYfKN2U2uSo3JzkRYzUn
	+9pXOUmLpWKjsvq2aMSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjjU1-0000000DCKA-3Hvg;
	Tue, 14 Jul 2026 20:12:01 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjjU0-0000000DCK2-2CH2
	for linux-phy@lists.infradead.org;
	Tue, 14 Jul 2026 20:12:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id EE0A560103;
	Tue, 14 Jul 2026 20:11:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 333E51F000E9;
	Tue, 14 Jul 2026 20:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784059919;
	bh=5wOUEQakUr6ljQwCBFQfnA4S0mb7s7p0pA6XYOUrJM8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=cPrtZvb61c9Ka/ggOwKzAOxQekP4siJLUiykJRbTIQd8VOHgfPFfF75UkLmLo3Wld
	 q94TF5gABCbEWZ0Qt5RD1volaQbC4tRaBLRHovv+uTPa4fZXGVkD8mNh2FzGLz7pPx
	 y1sy2g3Se0B8OWePPDHKDzOWBb3nXYTrAp418zrq+A6soHhjPNse5jb/Awje/dJozQ
	 G8S3PU6COWA7mpd3G8RstOmtoNBXmp3pswoCpVEsiH7x/hd8IOOMtj0rQ/1xBMuCxD
	 /g3pcwEWltavrFmtoMdq6kcHBkm5QTznauy6DNXdXfMReROQOznOdd+cdtfIUASxbK
	 a4JLmw+TOXYPQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 12/35] phy: rockchip: usbdp: Limit DP lane count to
 muxed lanes
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: conor+dt@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, robh@kernel.org, vkoul@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260714-rockchip-usbdp-cleanup-v13-12-6cb3e769d4c5@collabora.com>
References: <20260714-rockchip-usbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com>
 <20260714-rockchip-usbdp-cleanup-v13-12-6cb3e769d4c5@collabora.com>
Date: Tue, 14 Jul 2026 20:11:58 +0000
Message-Id: <20260714201159.333E51F000E9@smtp.kernel.org>
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
IFtIaWdoXSBNaXNzaW5nIGxvY2tpbmcgaW4gYHJrX3VkcGh5X2RwX3BoeV9jb25maWd1cmVgIGNh
dXNlcyBhIFRPQ1RPVSByYWNlIGFuZCBzdGF0ZSBkZXN5bmNocm9uaXphdGlvbiBhZ2FpbnN0IFR5
cGUtQyBldmVudHMsIGJ5cGFzc2luZyB0aGUgbmV3bHkgYWRkZWQgbGFuZSBib3VuZHMgY2hlY2su
Ci0tCgotLS0gUGF0Y2ggWzEyXTogW1BBVENIIHYxMyAxMi8zNV0gcGh5OiByb2NrY2hpcDogdXNi
ZHA6IExpbWl0IERQIGxhbmUgY291bnQgdG8gbXV4ZWQgbGFuZXMgLS0tCmNvbW1pdCA1MWZkNjk5
NTgxYmU2MmZkOTkzMTMzN2U5YzBkYzZlNGYyMzAyYjEwCkF1dGhvcjogU2ViYXN0aWFuIFJlaWNo
ZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+CgpwaHk6IHJvY2tjaGlwOiB1c2Jk
cDogTGltaXQgRFAgbGFuZSBjb3VudCB0byBtdXhlZCBsYW5lcwogICAgCkluIHRoZW9yeSB0aGUg
RFAgY29udHJvbGxlciBjb3VsZCByZXF1ZXN0IDQgbGFuZXMgd2hlbiB0aGUgUEhZIGlzCnJlc3Ry
aWN0ZWQgdG8gMiBsYW5lcyBhcyB0aGUgb3RoZXIgaGFsZiBpcyB1c2VkIGJ5IFVTQjMuCgpXaXRo
IHRoZSBjdXJyZW50IHVzZXIgKERXLURQKSB0aGlzIGNhbm5vdCBoYXBwZW4sIGJ1dCBhcyB0aGUg
Y2hlY2sgaXMKY2hlYXAgYW5kIHVzZXJzIG1pZ2h0IGNoYW5nZSBpbiB0aGUgZnV0dXJlIHByb3Rl
Y3QgdGhpbmdzIGFjY29yZGluZ2x5LgpOb3QgZG9pbmcgc28gd291bGQgY29ycnVwdCBVU0IzIHVz
YWdlIGJ5IHRoZSBmb2xsb3dpbmcgY29kZSBjb25maWd1cmluZwp0aGUgdm9sdGFnZXMuCgpGaXhl
czogMmY3MGJiZGRlYjQ1ICgicGh5OiByb2NrY2hpcDogYWRkIHVzYmRwIGNvbWJvIHBoeSBkcml2
ZXIiKQpSZXBvcnRlZC1ieTogU2FzaGlrbyA8c2FzaGlrby1ib3RAa2VybmVsLm9yZz4KQ2xvc2Vz
OiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1waHkvMjAyNjA2MTIxNjU1NDYuOThFMUYx
RjAwMEU5QHNtdHAua2VybmVsLm9yZy8KU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFuIFJlaWNoZWwg
PHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+Cgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlw
L3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gaW5kZXggYzRkNjJiMjM0ZWE4MC4uYjE3MmNlNmE3MjJl
ZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAu
Ywo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gQEAg
LTEwOTksNiArMTA5OSw5IEBAIHN0YXRpYyBpbnQgcmtfdWRwaHlfZHBfcGh5X3ZlcmlmeV9saW5r
X3JhdGUoc3RydWN0IHJrX3VkcGh5ICp1ZHBoeSwKPiAgc3RhdGljIGludCBya191ZHBoeV9kcF9w
aHlfdmVyaWZ5X2xhbmVzKHN0cnVjdCBya191ZHBoeSAqdWRwaHksCj4gIAkJCQkJc3RydWN0IHBo
eV9jb25maWd1cmVfb3B0c19kcCAqZHApCj4gIHsKPiArCWlmIChkcC0+bGFuZXMgPiB1ZHBoeS0+
ZHBfbGFuZXMpCj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4gKwoKW1NldmVyaXR5OiBIaWdoXQpUaGlz
IGlzbid0IGEgYnVnIGludHJvZHVjZWQgYnkgdGhpcyBwYXRjaCwgYnV0IGNhbiBhIHJhY2UgY29u
ZGl0aW9uIHN0aWxsCmJ5cGFzcyB0aGlzIG5ldyBjaGVjayBhbmQgY29ycnVwdCBVU0IzIGxhbmVz
PwoKSWYgYSBUeXBlLUMgZXZlbnQgb2NjdXJzIGFuZCBya191ZHBoeV90eXBlY19tdXhfc2V0KCkg
cmVkdWNlcyB1ZHBoeS0+ZHBfbGFuZXMKZnJvbSA0IHRvIDIgd2hpbGUgdXBkYXRpbmcgdWRwaHkt
PmxhbmVfbXV4X3NlbCBmb3IgVVNCMywgaXQgZG9lcyBzbyB1bmRlcgp1ZHBoeS0+bXV0ZXguIEhv
d2V2ZXIsIHJrX3VkcGh5X2RwX3BoeV9jb25maWd1cmUoKSBsYWNrcyBtdXRleCBwcm90ZWN0aW9u
IGFuZApvcGVyYXRlcyBvbiBhIGNhY2hlZCB1ZHBoeS0+bGFuZXMgdmFsdWUuCgpJZiB0aGUgRFJN
IGRyaXZlciBzdWJzZXF1ZW50bHkgY2FsbHMgcmtfdWRwaHlfZHBfcGh5X2NvbmZpZ3VyZSgpIHRv
IHVwZGF0ZQp2b2x0YWdlcyAod2l0aCBzZXRfdm9sdGFnZXMgPSAxIGFuZCBzZXRfbGFuZXMgPSAw
KSwgdGhpcyB2ZXJpZnkgZnVuY3Rpb24gaXMKc2tpcHBlZCBlbnRpcmVseToKCmRyaXZlcnMvcGh5
L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jOnJrX3VkcGh5X2RwX3BoeV9jb25maWd1cmUo
KSB7CiAgICAuLi4KCWlmIChkcC0+c2V0X2xhbmVzKSB7CgkJcmV0ID0gcmtfdWRwaHlfZHBfcGh5
X3ZlcmlmeV9sYW5lcyh1ZHBoeSwgZHApOwoJCWlmIChyZXQpCgkJCXJldHVybiByZXQ7Cgl9CiAg
ICAuLi4KfQoKQmVjYXVzZSB0aGUgY2hlY2sgaXMgc2tpcHBlZCwgdGhlIGNvbmZpZ3VyYXRpb24g
bG9vcCBpdGVyYXRlcyB1c2luZyB0aGUgc3RhbGUKY2FjaGVkIHVkcGh5LT5sYW5lcyA9PSA0OgoK
ZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmM6cmtfdWRwaHlfZHBfcGh5
X2NvbmZpZ3VyZSgpIHsKICAgIC4uLgoJaWYgKGRwLT5zZXRfdm9sdGFnZXMpIHsKCQlmb3IgKGkg
PSAwOyBpIDwgdWRwaHktPmxhbmVzOyBpKyspIHsKCQkJbGFuZSA9IHVkcGh5LT5kcF9sYW5lX3Nl
bFtpXTsKCQkJLi4uCgkJCXJrX3VkcGh5X2RwX3NldF92b2x0YWdlKHVkcGh5LCB1ZHBoeS0+Yncs
IGRwLT52b2x0YWdlW2ldLAoJCQkJCQlkcC0+cHJlW2ldLCBsYW5lKTsKCQl9Cgl9CiAgICAuLi4K
fQoKQ291bGQgdGhpcyBvdmVyd3JpdGUgdGhlIFRSU1YgcmVnaXN0ZXJzIG9mIHBoeXNpY2FsIGxh
bmVzIG5vdyBhc3NpZ25lZCB0bwpVU0IzLCBjb3JydXB0aW5nIGFjdGl2ZSBVU0IzIGRhdGEgc3Ry
ZWFtcz8gU2hvdWxkIHJrX3VkcGh5X2RwX3BoeV9jb25maWd1cmUoKQpob2xkIHVkcGh5LT5tdXRl
eCB0byBwcmV2ZW50IHN0YXRlIGRlc3luY2hyb25pemF0aW9uPwoKPiAgCXN3aXRjaCAoZHAtPmxh
bmVzKSB7Cj4gIAljYXNlIDE6Cj4gIAljYXNlIDI6CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcg
aHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzE0LXJvY2tjaGlwLXVzYmRwLWNs
ZWFudXAtdjEzLTAtNmNiM2U3NjlkNGM1QGNvbGxhYm9yYS5jb20/cGFydD0xMgoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
