Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2074AC98318
	for <linux-phy@archiver.kernel.org>; Sat, 26 Sep 2026 05:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b++cX+vub/Q7noC9K1OAp6XNaJ8kmYPyd6aKEnEaIBQ=; b=igZ8U4ebQCo74L
	dXU0vcTtVhfY3FIYKiAiilxpLPN3/cyHXiTOPfQPkMgTovjIN2TELPdL4cdvfym7kgnNU0bMX9l+3
	x2ixHoUAizIYR1MROZ1vOpyHRBMCC2JacYnvQevZakRLgt4oFaFwgps62Jh0iTjE8jkJEWPXRoUkm
	AcOf/fvz23N+SUgTOqXExei6vWht2vCuWuq/+c1EeWClQuflvox0/KTun36L77ToZk6fGB/ZYRsJP
	3eu09i2tzJGbmS54QFKztZWRY2I9tMV4/KduS4L1i58mbBi7W/ky6Cj4iGjtLv0W3UesdqyhVpGQW
	OurYGfVYGVOcjUnZcHTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAKde-0000000EzXm-3AMz;
	Sat, 26 Sep 2026 05:07:54 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAKdd-0000000EzXH-0uR8;
	Sat, 26 Sep 2026 05:07:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id AE17460136;
	Sat, 26 Sep 2026 05:07:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77C1F1F000FF;
	Sat, 26 Sep 2026 05:07:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790399271;
	bh=uBIWcy1vQsXuPrlyorhunI9NkbUS7DCLeu13z27U1xQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=IzsJ9KSPcy59rat2nVUbGyObxX9QWfGKaDnFH0gNG5g7VeLa1pKxsPv8J7E6tzqhU
	 ExufGabs0NSfALHSt8Eh2IgwDT8RDtLJ3kN6GMMYi5QDyqLsxKmH4qJ9MF+FRDtQJD
	 h/DozJzhDvY/3vBjDjO9vKsSkDJB9Q4d4hgBu75pT7r08a21cZEqDCSGw4Yw7az51X
	 8lu1HaHXceMzOWOcMWScUGN4AttB7f8ckAnhRLJxJdCWlOidRdBwEPrSsdzYZmAwSr
	 Ao+RXyzbrE9XfdzNdMMNfOYPPjjDK/IP1kcU6dv3LCO5hsQrnR0zKiQxZYe9WHtbqh
	 kTqXqVkLlnsvQ==
Date: Sat, 26 Sep 2026 07:07:37 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Zhang Yubing <yubing.zhang@rock-chips.com>, Frank Wang <frank.wang@rock-chips.com>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@collabora.com, 
	Igor Paunovic <royalnet026@gmail.com>
Subject: Re: [PATCH v15 02/11] phy: rockchip: usbdp: Rename mode_change to
 phy_needs_reinit
Message-ID: <hcvfjkpdmdjwguxuiaskugz57hp5w3srymnixmoak77renx2po@zmrjqrey7yot>
References: <20260915-rockchip-usbdp-cleanup-part2-v15-0-8d507cb1174f@collabora.com>
 <20260915-rockchip-usbdp-cleanup-part2-v15-2-8d507cb1174f@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-rockchip-usbdp-cleanup-part2-v15-2-8d507cb1174f@collabora.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDU6MDY6MDVQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gUmlnaHQgbm93IHRoZSBtb2RlX2NoYW5nZSBwcm9wZXJ0eSBpcyBzZXQgd2hl
bmV2ZXIgdGhlIG1vZGUgY2hhbmdlcwo+IGJldHdlZW4gVVNCLW9ubHksIERQLW9ubHkgYW5kIFVT
Qi1EUC4gSXQgaXMgbmVlZGVkLCBiZWNhdXNlIG9uIGFueQo+IG1vZGUgY2hhbmdlIHRoZSBQSFkg
bmVlZHMgdG8gYmUgcmUtaW5pdGlhbGl6ZWQuIEFwcGFyZW50bHkgYXQgbGVhc3QKPiBEUCBhbHNv
IHJlcXVpcmVzIGEgcmUtaW5pdCB3aGVuIHRoZSBjYWJsZSBvcmllbnRhdGlvbiBpcyBjaGFuZ2Vk
LAo+IHdoaWNoIGlzIGN1cnJlbnRseSBub3QgYmVpbmcgZG9uZSAoZXhjZXB0IHdoZW4gdGhlIG9y
aWVudGF0aW9uIHN3aXRjaAo+IGFsc28gaW52b2x2ZXMgYSBtb2RlIGNoYW5nZSkuIFByZXBhcmUg
Zm9yIHRoaXMgYnkgcmVuYW1pbmcgbW9kZV9jaGFuZ2UKPiB0byBwaHlfbmVlZHNfcmVpbml0Lgo+
IAo+IFRlc3RlZC1ieTogSWdvciBQYXVub3ZpYyA8cm95YWxuZXQwMjZAZ21haWwuY29tPiAjIE9y
YW5nZSBQaSA1IFBsdXMKPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0
aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhh
c2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgot
LSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
