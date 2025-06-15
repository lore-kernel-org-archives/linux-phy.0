Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B84DC61CE8
	for <linux-phy@archiver.kernel.org>; Sun, 15 Jun 2025 14:13:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qOcUm2aU+GawDsldryap0lhkzcdEc/Zh+pSdua/RU7k=; b=Z3CmuoQfI/BG0P
	6Sixt48swMi6pR7P0NeV/35OCDYbIFO/NTmADLEaxN7wyHSr6eUejZvhmt1XhUJNyhTT+GgfOECnC
	CrSrHeJaKtw13V6FDNX7zsCpO+a1I6P1clv6EmwqTF1t/SF+ojpIXuWc3S5N7+CEtR9qb2pArLHfc
	s9ViCdAGoBsBAxbMk+BNihXZ3a/TxH+Q+PHKUA1CdIzmiDs7C5CP/okqP+Wn78DPOCYYypcF735oc
	pW5fBFsB9EjdALvXQ04JIUKsRrTI4HqEQto2bq1rrCf9OSDUeO7oiwGWatMwi41pkOGmVVK2587AC
	n6QTuBQZ0V3BDR/OlYRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQo6l-00000002YHh-2aze;
	Sun, 15 Jun 2025 14:13:15 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQo4Z-00000002YBg-0IHJ;
	Sun, 15 Jun 2025 14:10:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 25C0460007;
	Sun, 15 Jun 2025 14:10:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01641C4CEE3;
	Sun, 15 Jun 2025 14:10:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749996657;
	bh=QtHS0PfBzmKWEUuNMaPdgcaW9LU7WVfSi9AbPYocR1o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s/cv/xKWJC8D/wF/dB2xPITXjR5Q2Lwk9W1drragQXVPyhyVGL73lGeWW69EZvskC
	 VmxyUztCI68bmoRN2K1XG4sH4vrs+AZ3Uh0wkuJqrXl32q8cIi25cWU+gYTPKxCfJs
	 J+jKYR7s4yVMDrJ0WmzJTDXoWtwRnvvyVKN77qpEOxQFuCCfasKsrFfCWUfTe8BkqA
	 bQYgmAFEBBA0mMacHfEqywDHvdhdvT84ny/Gc3libme3l+unF/atEHOMe5beNFKN5n
	 Nm18uP/1SECp3jjgX7TqXrhk8/Q/szxmKnvGU4U9Ezb1MKvl8UIMhDCNsXtbJrP8A0
	 nzM1HBsi+DM2A==
Date: Sun, 15 Jun 2025 19:40:53 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: Enric Balletbo i Serra <eballetb@redhat.com>,
	Roger Quadros <rogerq@kernel.org>, kishon@kernel.org,
	sjakhade@cadence.com, thomas.richard@bootlin.com,
	christophe.jaillet@wanadoo.fr, u.kleine-koenig@baylibre.com,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, srk@ti.com
Subject: Re: [PATCH v3 1/2] phy: cadence-torrent: Add PCIe multilink
 configuration for 100 MHz refclk
Message-ID: <aE7UbTT0UHgEliDM@vaman>
References: <20250109121614.754466-1-s-vadapalli@ti.com>
 <20250109121614.754466-2-s-vadapalli@ti.com>
 <fccedc26-0bb9-4078-8a94-4199f6b383c1@kernel.org>
 <CALE0LRsdsTU-NLN4fgh2c8qnS-pPP1BDJvjnvsSOnud8amk3=A@mail.gmail.com>
 <6b747de0-9d10-43e9-a2b1-23a129301538@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6b747de0-9d10-43e9-a2b1-23a129301538@ti.com>
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

T24gMTItMDYtMjUsIDE1OjM0LCBTaWRkaGFydGggVmFkYXBhbGxpIHdyb3RlOgo+IE9uIFRodSwg
SnVuIDEyLCAyMDI1IGF0IDEwOjQ4OjIwQU0gKzAyMDAsIEVucmljIEJhbGxldGJvIGkgU2VycmEg
d3JvdGU6Cj4gCj4gSGVsbG8gRW5yaWMsCj4gCj4gPiBIaSBhbGwsCj4gPiAKPiA+IE9uIFRodSwg
SmFuIDksIDIwMjUgYXQgNTozNeKAr1BNIFJvZ2VyIFF1YWRyb3MgPHJvZ2VycUBrZXJuZWwub3Jn
PiB3cm90ZToKPiA+ID4KPiA+ID4KPiA+ID4KPiA+ID4gT24gMDkvMDEvMjAyNSAxNDoxNiwgU2lk
ZGhhcnRoIFZhZGFwYWxsaSB3cm90ZToKPiA+ID4gPiBGcm9tOiBTd2FwbmlsIEpha2hhZGUgPHNq
YWtoYWRlQGNhZGVuY2UuY29tPgo+ID4gPiA+Cj4gPiA+ID4gQWRkIHJlZ2lzdGVyIHNlcXVlbmNl
cyB0byBzdXBwb3J0IFBDSWUgbXVsdGlsaW5rIGNvbmZpZ3VyYXRpb24gZm9yIDEwME1Iego+ID4g
PiA+IHJlZmVyZW5jZSBjbG9jay4gTWF4aW11bSB0d28gUENJZSBsaW5rcyBhcmUgc3VwcG9ydGVk
Lgo+ID4gPiA+Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogU3dhcG5pbCBKYWtoYWRlIDxzamFraGFk
ZUBjYWRlbmNlLmNvbT4KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBTaWRkaGFydGggVmFkYXBhbGxp
IDxzLXZhZGFwYWxsaUB0aS5jb20+Cj4gPiA+Cj4gPiA+IFJldmlld2VkLWJ5OiBSb2dlciBRdWFk
cm9zIDxyb2dlcnFAa2VybmVsLm9yZz4KPiA+ID4KPiA+IAo+ID4gVGhlc2UgcGF0Y2hlcyBzZWVt
IGdvb2QgYW5kIGhhdmUgYmVlbiByZXZpZXdlZCBidXQgbG9vayBzdGFsbGVkIGhlcmUuCj4gPiBU
aGVyZSBpcyBhbnkgY2hhbmNlIHRvIHJlYmFzZSBpdCBvbiB0b3Agb2YgdGhlIG1haW5saW5lPwo+
IAo+IFRoZSBwYXRjaGVzIGFwcGx5IGNsZWFubHkgb24gdGhlIGxhdGVzdCBsaW51eC1uZXh0IHRh
Z2dlZCBuZXh0LTIwMjUwNjEyLgoKQ2FuIHlvdSByZXBvc3QKCgotLSAKflZpbm9kCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
