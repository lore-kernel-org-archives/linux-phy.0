Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD95CCCF9F8
	for <linux-phy@archiver.kernel.org>; Thu,  6 Nov 2025 10:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O007Yq0T/ylA6+z/AbVwtdkadZhDonzRLEqq8j66XRU=; b=pwPjAownutraBA
	2Qf8UgrDBAmhE3A/17yv/ga25NcqihH/NzchMPJrO4O9hyuS3bTEagEyoo9FSXdHwUWJsUlceZAoc
	LRGNKd8/zE55jg/ZoWzGC3SvLXzaF/ho3ncv8okc0FQHLzla1i4wLzdfd0wJiv961M6LC6DeIlo75
	833XZ4m/6eJNDeG7+NvSd5gF4oScdP60x4a6nowOWAmGygf1nikdLAAzcP/sr0z63VTKRkWCBwRMc
	dKI1vIHPJNC4ywK1D42S1OEVGkkZAJpj8jSFc2TBj7x3j66LBxC0dT9z+/1zuGG53qTpMTGOR8TDH
	ghRvEz6epr/TViqmoRkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGxap-0000000FLsT-11N0;
	Thu, 06 Nov 2025 10:51:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGxal-0000000FLrP-3aoZ
	for linux-phy@lists.infradead.org;
	Thu, 06 Nov 2025 10:51:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vGxaS-00027b-CG; Thu, 06 Nov 2025 11:51:28 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vGxaS-007LZm-0V;
	Thu, 06 Nov 2025 11:51:28 +0100
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vGxaS-000000004Pb-0Gcb;
	Thu, 06 Nov 2025 11:51:28 +0100
Message-ID: <9506997c56808cc9fd58fe0d384976421d6c9bfc.camel@pengutronix.de>
Subject: Re: [PATCH v2 5/7] reset: eyeq: drop device_set_of_node_from_dev()
 done by parent
From: Philipp Zabel <p.zabel@pengutronix.de>
To: =?ISO-8859-1?Q?Th=E9o?= Lebrun <theo.lebrun@bootlin.com>, Vladimir
 Kondratiev <vladimir.kondratiev@mobileye.com>, =?ISO-8859-1?Q?Gr=E9gory?=
 Clement	 <gregory.clement@bootlin.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,  Kishon Vijay Abraham
 I	 <kishon@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd	 <sboyd@kernel.org>, Thomas Bogendoerfer
 <tsbogend@alpha.franken.de>
Cc: linux-mips@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-clk@vger.kernel.org, =?ISO-8859-1?Q?Beno=EEt?= Monin	
 <benoit.monin@bootlin.com>, Maxime Chevallier
 <maxime.chevallier@bootlin.com>,  Tawfik Bayouk
 <tawfik.bayouk@mobileye.com>, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>, Jerome Brunet	 <jbrunet@baylibre.com>
Date: Thu, 06 Nov 2025 11:51:27 +0100
In-Reply-To: <20251101-macb-phy-v2-5-c1519eef16d3@bootlin.com>
References: <20251101-macb-phy-v2-0-c1519eef16d3@bootlin.com>
	 <20251101-macb-phy-v2-5-c1519eef16d3@bootlin.com>
User-Agent: Evolution 3.56.1-1+deb13u1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_025147_894502_142D0B2A 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
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

T24gU2EsIDIwMjUtMTEtMDEgYXQgMDk6NTMgKzAxMDAsIFRow6lvIExlYnJ1biB3cm90ZToKPiBP
dXIgcGFyZW50IGRyaXZlciAoY2xrLWV5ZXEpIG5vdyBkb2VzIHRoZQo+IAlkZXZpY2Vfc2V0X29m
X25vZGVfZnJvbV9kZXYoZGV2LCBkZXYtPnBhcmVudCkKPiBjYWxsIHRocm91Z2ggdGhlIG5ld2x5
IGludHJvZHVjZWQgZGV2bV9hdXhpbGlhcnlfZGV2aWNlX2NyZWF0ZSgpIGhlbHBlci4KPiAKPiBE
b2luZyBpdCBhZ2FpbiBpbiB0aGUgcmVzZXQtZXllcSBwcm9iZSB3b3VsZCBiZSByZWR1bmRhbnQu
Cj4gRHJvcCBib3RoIHRoZSBXQVJOX09OKCkgYW5kIHRoZSBkZXZpY2Vfc2V0X29mX25vZGVfZnJv
bV9kZXYoKSBjYWxsLgo+IEFsc28gZml4IHRoZSBmb2xsb3dpbmcgY29tbWVudCB0aGF0IHRhbGtz
IGFib3V0ICJvdXIgbmV3Zm91bmQgT0Ygbm9kZSIuCj4gCj4gU2lnbmVkLW9mZi1ieTogVGjDqW8g
TGVicnVuIDx0aGVvLmxlYnJ1bkBib290bGluLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKZXJvbWUg
QnJ1bmV0IDxqYnJ1bmV0QGJheWxpYnJlLmNvbT4KClJldmlld2VkLWJ5OiBQaGlsaXBwIFphYmVs
IDxwLnphYmVsQHBlbmd1dHJvbml4LmRlPgoKYW5kCgpBY2tlZC1ieTogUGhpbGlwcCBaYWJlbCA8
cC56YWJlbEBwZW5ndXRyb25peC5kZT4KCnRvIGJlIG1lcmdlZCB2aWEgdGhlIGNsayB0cmVlIHRv
Z2V0aGVyIHdpdGggcGF0Y2ggMy4KCnJlZ2FyZHMKUGhpbGlwcAoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
