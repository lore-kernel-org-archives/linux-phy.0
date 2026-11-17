Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7468B606A33F
	for <linux-phy@archiver.kernel.org>; Tue, 17 Nov 2026 13:09:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=SlZWgSe8;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=aw7uewVS
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=p4LbtUjqe7RuFqr6+6Vu60MC4HwqjsxlzmcD9qRgfcM=; b=SlZWgSe8LUI1nLA0Ea0LGYrvsj
	YShtsXiIQE0NTZWajG9p09fKjPLjmGeoaGPBBJirHg8PQ1YAg7IHgJ1WiMSLEnMDb1TjHA1D7mh+3
	0duHHubPAipLgwL+5Nn3kXc8nx6VVTfLCEMwrR6tRP5oY/DTg0SqE7UNAWae4bI42ku0YptHmq2Rp
	pBNALF2gr6vXu3g3n7sRAEY29/LweeiakYR+DBeS24yqQmoiOBc544c+lmuufJC799L3N+qXHNX+J
	1MVSF5XgR8fbTRXJRD3cz9KPomuvBGeGQZPUoXrmY2tqawJ9MmK8MH4A5K/A5xhs4JAxWqysj0fNy
	ODtpju8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTIwV-00000005rL3-08oL;
	Tue, 17 Nov 2026 13:09:47 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTIwU-00000005rKT-0GDw
	for linux-phy@lists.infradead.org;
	Tue, 17 Nov 2026 13:09:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B1A4C45560;
	Tue, 17 Nov 2026 13:09:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 458001F000C4;
	Tue, 17 Nov 2026 13:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794920985;
	bh=+P7BtybgaP2uFpzEDh8TlIgAeOtbgC+qrTCCl87i9eI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=aw7uewVSDK+Pe2Qhl/OwwdL4nnc92goZgCJr1TkZXbWbL8AE8vbAeV9/yHzST7Gxz
	 PXajcAqv6KWCYpz8QzMg9NkWQNRgOIn+ldDFZF0ApiEyibPM2uWRrJefrMvaMpa/sg
	 zL149KxPLO+rl0THNOArftr3+fHyPZQeCTqG29NIYFPjzXKUEza/Mc7ue1RYggsO81
	 EUPhjuL8VfRfbhbFizAiHYaCRRoMIraW2SNhaGfPrS8HpcJv+MNEcwBridaouwZJYl
	 G4YIJULqqkdcdYYAQVWZS6hE0T14Jw2k9p1cQf84QraQBf7EniC5idd2XzmoyRt1zq
	 2OP+coi9mb1ow==
Message-ID: <sashiko-outbox-218841@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] usb: musb: sunxi: Assert reset before deasserting
 on init
To: Roadbobek <admin@roadbobek.com>
Cc: linux-usb@vger.kernel.org, linux-sunxi@lists.linux.dev, linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261117-usb-sunxi-reset-fix-v1-1-c2b76e0e84e1@roadbobek.com>
References: <20261117-usb-sunxi-reset-fix-v1-0-c2b76e0e84e1@roadbobek.com>
 <20261117-usb-sunxi-reset-fix-v1-1-c2b76e0e84e1@roadbobek.com>
Date: Tue, 17 Nov 2026 13:09:44 +0000
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
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MiBwb3RlbnRpYWwKaXNzdWVzIHRvIGNvbnNpZGVyOgotIFtIaWdoXSB1c2I6IG11c2I6IHN1bnhp
OiBTaWduZWQtb2ZmLWJ5IHRyYWlsZXIgdXNlcyBzaW5nbGUtd29yZCBoYW5kbGUKICBSb2FkYm9i
ZWsKLSBbTG93XSB1c2I6IG11c2I6IHN1bnhpOiBtaXNzaW5nIEZpeGVzIHRyYWlsZXIgZm9yIHN1
bnhpX211c2JfaW5pdCgpCiAgcmVzZXQgZml4Ci0tCgpjb21taXQgNmZiMGQ4M2JjMjI5ODBjZTdk
Y2FhOGQ3Yzg4NmE3YmNmNTdiMDkwNQpBdXRob3I6IFJvYWRib2JlayA8YWRtaW5Acm9hZGJvYmVr
LmNvbT4KCj4gdXNiOiBtdXNiOiBzdW54aTogQXNzZXJ0IHJlc2V0IGJlZm9yZSBkZWFzc2VydGlu
ZyBvbiBpbml0Cj4KPiBXaGVuIGEgYm9vdGxvYWRlciBzdWNoIGFzIFUtQm9vdCAoZm9yIGV4YW1w
bGUgd2l0aAo+IENPTkZJR19VU0JfTVVTQl9IT1NUPXkpIGluaXRpYWxpemVzIE1VU0IgYW5kIGJv
b3RzIExpbnV4Cj4gd2l0aG91dCBzdG9wcGluZyBVU0IgZmlyc3QsIHRoZSBjb250cm9sbGVyIHJl
c2V0IGxpbmUgaXMKPiBhbHJlYWR5IGRlYXNzZXJ0ZWQgYXQgcHJvYmUgdGltZS4KPgo+IEluIHRo
YXQgY2FzZSByZXNldF9jb250cm9sX2RlYXNzZXJ0KCkgaW4gc3VueGlfbXVzYl9pbml0KCkKPiBp
cyBhIG5vLW9wIGFuZCBzdGFsZSBNVVNCIHJlZ2lzdGVyIHN0YXRlIHBlcnNpc3RzIGFjcm9zcyBi
b290Lgo+IE9uIEFsbHdpbm5lciBBMzMsIE1VU0Igc3RheXMgd2VkZ2VkIGluIGFfd2FpdF9iY29u
IHdpdGgKPiBEZXZDdGw9MHg5OSwgUG93ZXI9MHhmMCwgYW5kIGEgZnJvemVuIEZyYW1lIGNvdW50
ZXIgZXZlbgo+IGFjcm9zcyBob3QtdW5wbHVnIGFuZCByZXBsdWcuCj4KPiBBc3NlcnQgZ2x1ZS0+
cnN0IGJyaWVmbHkgYmVmb3JlIGRlYXNzZXJ0aW5nIGl0IHdoZW4KPiBTVU5YSV9NVVNCX0ZMX0hB
U19SRVNFVCBpcyBzZXQgc28gTVVTQiBzdGFydHMgY2xlYW5seS4KPiBUZXN0ZWQgb24gYW4gQWxs
d2lubmVyIEEzMyBROCB0YWJsZXQgKExhc2VyIE1JRC03ODYpLgo+Cj4gU2lnbmVkLW9mZi1ieTog
Um9hZGJvYmVrIDxhZG1pbkByb2FkYm9iZWsuY29tPgoKW1NldmVyaXR5OiBIaWdoXQpQZXIgRG9j
dW1lbnRhdGlvbi9wcm9jZXNzL3N1Ym1pdHRpbmctcGF0Y2hlcy5yc3QsIHRoZSBBdXRob3IgaGVh
ZGVyIGFuZApTaWduZWQtb2ZmLWJ5IHRyYWlsZXIgbXVzdCB1c2UgYSByZWFsIGZ1bGwgbmFtZSBy
YXRoZXIgdGhhbiBhIHNpbmdsZS13b3JkCmhhbmRsZSBvciBuaWNrbmFtZS4KCltTZXZlcml0eTog
TG93XQpTaW5jZSB0aGlzIGZpeGVzIHRoZSByZXNldCBpbml0aWFsaXphdGlvbiBpbiBzdW54aV9t
dXNiX2luaXQoKSwgc2hvdWxkIGl0CmluY2x1ZGU6CgogIEZpeGVzOiAxMzJlMjM3NzU3NzkgKCJ1
c2I6IG11c2I6IHN1bnhpOiBBZGQgc3VwcG9ydCBmb3IgbXVzYiBjb250cm9sbGVyIGluIEEzMSBT
b0MiKQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRj
aHNldC8yMDI2MTExNy11c2Itc3VueGktcmVzZXQtZml4LXYxLTAtYzJiNzZlMGU4NGUxQHJvYWRi
b2Jlay5jb20/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
