Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA374C5B56A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 09:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dyrx5MTpWMRhiYFSeQsh/nxjsUwuRfTGvfAH6RM5EJE=; b=xV2ilBs7crhQkI
	zN4BpsF7MuqLJXg4T5tlOdixNL0gQZnjJui2ZWbWDvXlFmydiKekvGD1NMS2M64ojjWktICD+aiyK
	00GCdoafsuu0Be2wErptYlq8lLIIjOvO3dA0/uJQRK/ib4yPuZSd1KKpQqNTI/c7S1UWMwrAQjBAM
	zJeGi2EF9QGQALyHF9yKih33pD2sSGbPNAn6wzFgC/oY8X9Xd11qSAqygunHL+tEb+Ww/VVDRGa5w
	BPxS6nbBOuEJRMPoYGPOlxfplB9U3ngniB4WSgwYjX/yOf/24j5d+CElFNKuaKx/RqgAdObU66MmH
	/v3kWjUQlKLFzhF0DWag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5Zs-0000000FoIl-2ec8;
	Wed, 12 Aug 2026 09:48:52 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5Zr-0000000FoIX-2Dpg
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 09:48:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 17405419EA;
	Wed, 12 Aug 2026 09:48:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89FF21F000E9;
	Wed, 12 Aug 2026 09:48:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786528131;
	bh=kqNfyoyxNaaq/80IMNzBVgqTcMDS/utTw6jVH68aNUM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=nGT917WGE0XCotdsMi7Qbvsi/pSrD9nwCzP7NRoqRob3ZO0Ox2lKCsWbRZGa3Y+xQ
	 rWTRSRbvcbscQzPgaxfTfcv6wMCZ04GUFJRWXiZUUBjY+MqtauiPWakFDPLUajdcYg
	 mRz4XBPXk9/e4u3TKtYRszJXHdc+DOMWiICumna5WFaouwcZe2lwFWC4s+SfBaUbpv
	 7cWZfGX6Ht2Vg878aHmSS3xzNfG8epwgtsO8wV5LXkXUiCum4Yz1IB+lkR5cRgUuQ7
	 6cyfjS+SocVBJ5O8+87QYNCvU+GMRfW09Yc8CgNcscuC+cvZMWdP6VYAtXoH3BXOv4
	 g+KX2Hfu6RcdQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 09/14] arm64: dts: qcom: ipq5018: Add clocks required
 for USB3 support
To: "George Moussalem" <george.moussalem@outlook.com>
Cc: conor+dt@kernel.org, vkoul@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, robh@kernel.org
In-Reply-To: <20260812-ipq5018-usb3-v2-9-8f355d7ff0ef@outlook.com>
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
 <20260812-ipq5018-usb3-v2-9-8f355d7ff0ef@outlook.com>
Date: Wed, 12 Aug 2026 09:48:49 +0000
Message-Id: <20260812094850.89FF21F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIHBhdGNoIGFk
ZHMgYGFzc2lnbmVkLWNsb2Nrc2AgYW5kIGBhc3NpZ25lZC1jbG9jay1yYXRlc2AgdG8gaGFyZGNv
ZGUgc3BlY2lmaWMgY2xvY2sgZnJlcXVlbmNpZXMsIHdoaWNoIGlzIGNvbXBsZXRlbHkgdW5kb2N1
bWVudGVkIGluIHRoZSBjb21taXQgbWVzc2FnZS4KLS0KCi0tLSBQYXRjaCBbOV06IFtQQVRDSCB2
MiAwOS8xNF0gYXJtNjQ6IGR0czogcWNvbTogaXBxNTAxODogQWRkIGNsb2NrcyByZXF1aXJlZCBm
b3IgVVNCMyBzdXBwb3J0IC0tLQpjb21taXQgMzM5YTZiNGQ4M2JkNTUyZjRmZTgwYjFmZjRkNmQ0
MTM5MDExOWIzYQpBdXRob3I6IEdlb3JnZSBNb3Vzc2FsZW0gPGdlb3JnZS5tb3Vzc2FsZW1Ab3V0
bG9vay5jb20+Cgphcm02NDogZHRzOiBxY29tOiBpcHE1MDE4OiBBZGQgY2xvY2tzIHJlcXVpcmVk
IGZvciBVU0IzIHN1cHBvcnQKClRoaXMgY29tbWl0IGFkZHMgdGhlIGF1eGlsaWFyeSBhbmQgTEZQ
UyBjbG9ja3MgdG8gdGhlIFVTQiBjb250cm9sbGVyIG5vZGUKaW4gdGhlIElQUTUwMTggZGV2aWNl
IHRyZWUgdG8gZW5hYmxlIFN1cGVyLVNwZWVkIChVU0IzKSBtb2RlLiBJdCBhbHNvIHNldHMKZGVm
YXVsdCBhc3NpZ25lZCBjbG9ja3MgYW5kIGNsb2NrIHJhdGVzIGZvciB0aGUgY29udHJvbGxlci4K
Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9pcHE1MDE4LmR0c2kgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vaXBxNTAxOC5kdHNpCj4gLS0tIGEvYXJjaC9hcm02NC9i
b290L2R0cy9xY29tL2lwcTUwMTguZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNv
bS9pcHE1MDE4LmR0c2kKPiBAQCAtNTkxLDExICs1OTEsMjEgQEAgdXNiOiB1c2JAOGEwMDAwMCB7
CgpbIC4uLiBdCgo+ICAJCQljbG9jay1uYW1lcyA9ICJjb3JlIiwKPiAgCQkJCSAgICAgICJpZmFj
ZSIsCj4gIAkJCQkgICAgICAic2xlZXAiLAo+IC0JCQkJICAgICAgIm1vY2tfdXRtaSI7Cj4gKwkJ
CQkgICAgICAibW9ja191dG1pIiwKPiArCQkJCSAgICAgICJhdXgiLAo+ICsJCQkJICAgICAgImxm
cHMiOwo+ICsJCQlhc3NpZ25lZC1jbG9ja3MgPSA8JmdjYyBHQ0NfVVNCMF9NQVNURVJfQ0xLPiwK
PiArCQkJCQkgIDwmZ2NjIEdDQ19TWVNfTk9DX1VTQjBfQVhJX0NMSz4sCj4gKwkJCQkJICA8Jmdj
YyBHQ0NfVVNCMF9NT0NLX1VUTUlfQ0xLPjsKPiArCQkJYXNzaWduZWQtY2xvY2stcmF0ZXMgPSA8
MjAwMDAwMDAwPiwKPiArCQkJCQkgICAgICAgPDIwMDAwMDAwMD4sCj4gKwkJCQkJICAgICAgIDw2
MDAwMDAwMD47CgpbU2V2ZXJpdHk6IE1lZGl1bV0KVGhlIGNvbW1pdCBtZXNzYWdlIG1lbnRpb25z
IGFkZGluZyB0aGUgYXV4IGFuZCBsZnBzIGNsb2NrcyBmb3IgVVNCMyBzdXBwb3J0LApidXQgZG9l
cyBub3QgZG9jdW1lbnQgYWRkaW5nIHRoZXNlIGFzc2lnbmVkLWNsb2NrcyBhbmQgYXNzaWduZWQt
Y2xvY2stcmF0ZXMuCgpDb3VsZCB0aGUgY29tbWl0IG1lc3NhZ2UgYmUgdXBkYXRlZCB0byBleHBs
YWluIHRoZSByYXRpb25hbGUgZm9yIGZvcmNpbmcgdGhlc2UKc3BlY2lmaWMgMjAwTUh6IGFuZCA2
ME1IeiBmcmVxdWVuY2llcyBkdXJpbmcgaW5pdGlhbGl6YXRpb24/CgotLSAKU2FzaGlrbyBBSSBy
ZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODEyLWlwcTUwMTgt
dXNiMy12Mi0wLThmMzU1ZDdmZjBlZkBvdXRsb29rLmNvbT9wYXJ0PTkKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
