Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 647D6CA5FF0
	for <linux-phy@archiver.kernel.org>; Tue,  6 Oct 2026 08:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LP+KBh0p5C9KDrbpnPWLWVVNpJbrfDFEr4WVAAxZGZ4=; b=Iks5d15Uip5aK1
	maXc3ZrK5FdO9rRE3K4GBIGeekF5CDxj0er04AbKSyLQiujKBJJvBFB7p+Th2Vg/avZZJFb5r/6GQ
	gs3M9RXS1CajWRwZpqtTMgmx2AHIdWt83d6c1UAuJSQwWRNMQdCaVyBI2/PfY9wsawHohYDU+Mgkm
	f1dAqnhLFryEFL8B+scZXA54IGWqFg/pmYwgvSki9iT2JKrDUwFlxtjV+iZudBeqyu9qMaf7xyTNr
	keK/k8OSE4+dnHNWwZicBaNvV392jkyLWTB2XXL8u0QNIGmI5Ixx/47tC78b/tKTNT5WXMejSUPOg
	SOXA89OnrzAf14Hdl2uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE0gR-00000000IoT-46v6;
	Tue, 06 Oct 2026 08:37:59 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE0gQ-00000000Inx-1KaA;
	Tue, 06 Oct 2026 08:37:58 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 98C0240F04;
	Tue,  6 Oct 2026 08:37:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC6EC1F000FF;
	Tue,  6 Oct 2026 08:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791275877;
	bh=XVvGpJ6ulp1owYNI32OyuXl21ymeks60rItkOGgWYFM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=HZh0E8Gq5Ba0eZjJ1GdHmDWjZhe5MLIsOd+8jCx9X7+lEp6PNYtmjM2pJ7BZ/62l7
	 fEgyFBzJHDmUEVJF8cycD77ONcWd+oHM83ma/agHg/D2vI7redKr1cJ2l8DyBhc3zl
	 fj+9vy3Hjf4zUF1wvU1OyMcaL7dv//aGaf7sG9ifOR8ueSILhsStmaqllxZdeWz6Fi
	 wXRRxQDvMOMgDi0BtNuoPEPBYg9fq8qZdePlntGSCBEH3pZS9I4MOoTDz/PcCm4niU
	 CroWRoWfRwyX+4RSAOe4XczYKBsNajVeuwtnHveVIms7XuB+8UpccGlfc5vBHzU334
	 /uvGYNrvXbnMg==
Date: Tue, 6 Oct 2026 10:37:53 +0200
From: Vinod Koul <vkoul@kernel.org>
To: Joey Lu <a0987203069@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Jacky Huang <ychuang3@nuvoton.com>,
	Shan-Chun Hung <schung@nuvoton.com>,
	Hui-Ping Chen <hpchen0nvt@gmail.com>, Joey Lu <yclu4@nuvoton.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 3/3] phy: nuvoton: phy-ma35d1-usb2: extend to
 dual-port with OTG support
Message-ID: <asSzYUA5W51Ngn4X@parshuram>
References: <20260929020854.1282339-1-a0987203069@gmail.com>
 <20260929020854.1282339-4-a0987203069@gmail.com>
 <asN29Gi71MIA-2fq@parshuram>
 <ab91b558-e7e6-4758-b4e3-66e5db75b790@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ab91b558-e7e6-4758-b4e3-66e5db75b790@gmail.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMDYtMTAtMjYsIDA5OjM3LCBKb2V5IEx1IHdyb3RlOgo+IAo+IFZpbm9kIEtvdWwg5pa8IDIw
MjYvMTAvNSDkuIvljYggMDY6MDcg5a+r6YGTOgo+ID4gPiAgICAqLwo+ID4gPiAgICNpbmNsdWRl
IDxsaW51eC9iaXRmaWVsZC5oPgo+ID4gPiAgICNpbmNsdWRlIDxsaW51eC9jbGsuaD4KPiA+ID4g
ICAjaW5jbHVkZSA8bGludXgvZGVsYXkuaD4KPiA+ID4gLSNpbmNsdWRlIDxsaW51eC9pby5oPgo+
ID4gd2h5IGlzIHRoaXMgZHJvcHBlZD8KPiBUaGlzIGRyaXZlciBuZXZlciBkaWQgZGlyZWN0IE1N
SU8gYWNjZXNzIChubyByZWFkbCgpL3dyaXRlbCgpL2lvcmVtYXAoKS8KPiBfX2lvbWVtKSwgZXZl
biBiZWZvcmUgdGhpcyBzZXJpZXMgLSBhbGwgcmVnaXN0ZXIgYWNjZXNzIGdvZXMgdGhyb3VnaAo+
IHJlZ21hcCB2aWEgc3lzY29uX3JlZ21hcF9sb29rdXBfYnlfcGhhbmRsZSgpLiBTbyBsaW51eC9p
by5oIHdhcyBhbgo+IHVudXNlZCBpbmNsdWRlIGFscmVhZHksIGFuZCBpdCdzIGRyb3BwZWQgaGVy
ZSBhcyBwYXJ0IG9mIHRoZSBicm9hZGVyCj4gcmV3cml0ZSB0b3VjaGluZyB0aGlzIGluY2x1ZGUg
YmxvY2suIEhhcHB5IHRvIGtlZXAgaXQgaWYgeW91J2QgcHJlZmVyCj4gbm90IHRvIGJ1bmRsZSB1
bnJlbGF0ZWQgaW5jbHVkZSBjbGVhbnVwIGludG8gdGhpcyBzZXJpZXMuCgpUaGVuIGl0IHNob3Vs
ZCBiZSBhIGRpZmZlcmVudCBwYXRjaCBleHBsYWluaW5nIHRoaXMKCi0tIAp+Vmlub2QKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
