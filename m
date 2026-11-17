Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691B9606A31C
	for <linux-phy@archiver.kernel.org>; Tue, 17 Nov 2026 00:53:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=uj9yNl3m;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=SWbFHhRs
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=3HXs46xuRqRjVvVlNqn9Z/qTQFgc2TnCbzTF4G2SlxM=; b=uj9yNl3mPLjWpnjzz4iNLY5c5B
	HYZa3XY4Jj6VRODn/bfcho/2+7bnYMmiCwZCf2j3LopxCWJHZzoUPAbc7ttgfggPKFsZWHzApOjjf
	lCEP48FhSMMR/MLQnFPGZqk/J+BSnIbLbJecjlmsExvpuRon4n6ICBITCQ1ppG+p05dl1xZyPRnQZ
	1PjuTKlQpMERgoVNQKDLfxlQTC5+2Kx7ceLCuYSr/YzM0HApXLdQjQ1py9U2VBt0fwvYBeRdNlq20
	Tj0CqYbx3O1TJMl978I20BWaqj1s75zYdszNlulINledn5aaIJMKIq634p1bzw15feZcZmJdhnmoe
	IbqgOkrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT7Rm-00000004GmW-3Pcx;
	Tue, 17 Nov 2026 00:53:18 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT7Rl-00000004GmL-1GdB
	for linux-phy@lists.infradead.org;
	Tue, 17 Nov 2026 00:53:17 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id AEB0C4391C;
	Tue, 17 Nov 2026 00:53:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F37D1F000C4;
	Tue, 17 Nov 2026 00:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794876796;
	bh=cZKrqKKU0Zn/4482SS6UmQ97SbQVJzWFNH6cljGk8Iw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SWbFHhRsx/xCAeUztMQl9llLhJQ4cLqgH4mLu+iWR3P+N4U1qPXzMOtgvi/LSbXOh
	 i9peVaVJ1tkcxIcCCZ5xncmbfY9RpIyy+bSEmro0Xw5OQJ5LV47QbvecjB7ilrdzT7
	 lmjXQZ29gK4pjHsshI7/lslY7EJeLORmnpdgZhY7nDPOSOS5sNxiusJMLcRCTNEXRm
	 X86A9TJXsorLJNYQiIuNk2vlV8bt46mGW472II9g79F94R+d9pScpMReITm/gn3lB2
	 FAnJTSxR3oJ2p7ikIWhc64LwtnMKuvKBtPcwUUC+450yXXm/TJWCqgwltBzNPSrlff
	 Dl/nAXMme7HTg==
Message-ID: <sashiko-outbox-218030@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] phy: siflower: Add SF19A2890 USB 2.0 PHY driver
To: "Joseph Telaak" <joseph@telaak.dev>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261116-sf19a2890-usb-phy-v2-2-df3ce9d23f5a@telaak.dev>
References: <20261116-sf19a2890-usb-phy-v2-0-df3ce9d23f5a@telaak.dev>
 <20261116-sf19a2890-usb-phy-v2-2-df3ce9d23f5a@telaak.dev>
Date: Tue, 17 Nov 2026 00:53:15 +0000
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
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiBzaWZsb3dlcjog
dW5kZWZpbmVkIEtjb25maWcgZGVwZW5kZW5jeQogIE1BQ0hfU0lGTE9XRVJfTUlQUwotLQoKY29t
bWl0IDIwMmY2MzhhMmJjYzM0YjgwMmY4MmNlZDE4ZTExMjA5MGU5OWM2MjcKQXV0aG9yOiBDaHVh
bmhvbmcgR3VvIDxnY2g5ODEyMTNAZ21haWwuY29tPgoKcGh5OiBzaWZsb3dlcjogQWRkIFNGMTlB
Mjg5MCBVU0IgMi4wIFBIWSBkcml2ZXIKClRoaXMgY29tbWl0IGFkZHMgYSBkcml2ZXIgYW5kIEtj
b25maWcgZW50cnkgZm9yIHRoZSBTaWZsb3dlciBTRjE5QTI4OTAKVVNCIDIuMCBQSFkuCgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9zaWZsb3dlci9LY29uZmlnIGIvZHJpdmVycy9waHkvc2lm
bG93ZXIvS2NvbmZpZwo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAw
MC4uNWFlMWY4M2QxNDQ5NAo+IC0tLSAvZGV2L251bGwKPiArKysgYi9kcml2ZXJzL3BoeS9zaWZs
b3dlci9LY29uZmlnCj4gQEAgLTAsMCArMSwxMiBAQAo+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlm
aWVyOiBHUEwtMi4wLW9ubHkKPiArCj4gK2NvbmZpZyBQSFlfU0YxOUEyODkwX1VTQgo+ICsJdHJp
c3RhdGUgIlNpZmxvd2VyIFNGMTlBMjg5MCBVU0IgMi4wIFBIWSBkcml2ZXIiCj4gKwlkZXBlbmRz
IG9uIE1BQ0hfU0lGTE9XRVJfTUlQUyB8fCBDT01QSUxFX1RFU1QKCltTZXZlcml0eTogTWVkaXVt
XQpJcyBNQUNIX1NJRkxPV0VSX01JUFMgZGVmaW5lZCBhbnl3aGVyZSBpbiB0aGUgdHJlZT8gIEJl
Y2F1c2UgdGhhdCBLY29uZmlnCnN5bWJvbCBkb2VzIG5vdCBleGlzdCwgaXQgZXZhbHVhdGVzIHRv
IG4gYW5kIHByZXZlbnRzIFBIWV9TRjE5QTI4OTBfVVNCCmZyb20gYmVpbmcgZW5hYmxlZCB1bmxl
c3MgQ09NUElMRV9URVNUIGlzIHNldC4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczov
L3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjExMTYtc2YxOWEyODkwLXVzYi1waHktdjItMC1k
ZjNjZTlkMjNmNWFAdGVsYWFrLmRldj9wYXJ0PTIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
