Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8947C624D3
	for <linux-phy@archiver.kernel.org>; Fri,  4 Sep 2026 13:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oUnFnG97sPCaZHt0ovenX8ZFPKfAuMZ31wHTuJeKTBM=; b=IvcRAlrNrCaG36
	jaLwlzTHyonOP0nNz/GRUS7/fE23AY1ikXNWqMXGEWAMCdAab6HU5f/5vHXNokvSS25ClHD1PM2gi
	e48xUiuruVggs5ebxC1HZ/E8ThyeVoDxrMe6pNlwqOtGko3mjaoI4GD4DEPOIxC9h1XU24LRxCn4c
	hpM/5xl18VjxL9r5eFHfl/4FwDId7sx5owoXBvn71t2YLKSUD2IQ7FhdwfxERgv6FFBQy1VA9Uf1b
	ZxfllRYiRDmSm+tZ32LmyuSsCK4qIpBTucV+CDrjqP6TDPSdXNnfUdVoebEFK9eBt+iJEGKyK0ntz
	eHumIAjBwbmPmZsZYryw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2UG2-00000002H65-1dPg;
	Fri, 04 Sep 2026 13:47:06 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2UG0-00000002H5G-487p
	for linux-phy@lists.infradead.org;
	Fri, 04 Sep 2026 13:47:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7CFC7404D8;
	Fri,  4 Sep 2026 13:47:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC9221F00A3D;
	Fri,  4 Sep 2026 13:47:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788529624;
	bh=jrOd4Hrk+SVGKObt8qkwvbAXHOaE3Px7VkO0WQZppE8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Dyu6nehjd2JvJaJbiBkjcbMQogvSASDoqkHljYhLXcxKxX/9LLcV3Mkxtf2D+IkFI
	 eGw4QLrGbEONJF49g1QW6dbGk23boud0dm/Vhv0oPNMHOoqyR5OiXW+t9uiDfZXQgx
	 +uPeP3ui6daZZOmvkLxZRXjuLTR+24sOZb6Xt6pmxwSiHEbF40/TVTF/81n4CcOQeb
	 I4GGjdbIbt9vsFnctyaWdJpa1nUoxXnUxKNDk1L2QE+HONC3FyrBAw+Z3nRYqmPcw4
	 CtnEMMMoNp5Q9cXGs3SOK0I/6n5PFKPDCntLvti1OxoKCptzTkLiYj2kMOuzb/kXy9
	 09GjtdzesRRBg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 12/19] soc: starfive: Add jh7110-vout-subsystem
 driver
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, olteanv@gmail.com, lee@kernel.org, mfd@lists.linux.dev, dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org
In-Reply-To: <20260904-jh7110-clean-send-v3-12-484f9ae72715@samsung.com>
References: <20260904-jh7110-clean-send-v3-0-484f9ae72715@samsung.com>
 <CGME20260904132731eucas1p182c607567520f7c6f482a9c85ab64ece@eucas1p1.samsung.com>
 <20260904-jh7110-clean-send-v3-12-484f9ae72715@samsung.com>
Date: Fri, 04 Sep 2026 13:47:03 +0000
Message-Id: <20260904134703.BC9221F00A3D@smtp.kernel.org>
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

PiBOb3RoaW5nIGluIHRoZSB2aWRlbyBvdXRwdXQgc3Vic3lzdGVtIGNhbiByZWFjaCBpdHMgb3du
IHJlZ2lzdGVycyB1bnRpbAo+IHRoZSBOb0MgZGlzcGxheSBidXMgY2xvY2sgYW5kIHJlc2V0IGFy
ZSB1cCBhbmQgUERfVk9VVCBpcyBwb3dlcmVkLCBhbmQKPiB0aG9zZSBhcmUgc2hhcmVkIGJ5IGV2
ZXJ5IGRldmljZSBpbiB0aGUgcmVnaW9uLiBMZWF2aW5nIHRoZW0gdG8gd2hpY2hldmVyCj4gY29u
c3VtZXIgcHJvYmVzIGZpcnN0IHdvcmtzIGJ5IGFjY2lkZW50IGFuZCBzdG9wcyB3b3JraW5nIGFz
IHNvb24gYXMgdGhlCj4gcHJvYmUgb3JkZXIgY2hhbmdlcy4KPiAKPiBBZGQgYSBkcml2ZXIgZm9y
IHRoZSBzdWJzeXN0ZW0gbm9kZSB0aGF0IHRha2VzIHRoZSBidXMgY2xvY2sgYW5kIHJlc2V0LAo+
IGhvbGRzIGEgcnVudGltZSBQTSByZWZlcmVuY2Ugc28gZ2VucGQga2VlcHMgUERfVk9VVCBwb3dl
cmVkLCBhbmQgdGhlbgo+IHBvcHVsYXRlcyBpdHMgY2hpbGRyZW4uIEFsbCB0aHJlZSBhcmUgcmVs
ZWFzZWQgb25seSBvbmNlIHRoZSBsYXN0IGNoaWxkCj4gaXMgZ29uZS4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBNaWNoYWwgV2lsY3p5bnNraSA8bS53aWxjenluc2tpQHNhbXN1bmcuY29tPgoKU2FzaGlr
byBoYXMgcmV2aWV3ZWQgdGhpcyBwYXRjaCBhbmQgZm91bmQgbm8gaXNzdWVzLiBJdCBsb29rcyBn
cmVhdCEKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0
Y2hzZXQvMjAyNjA5MDQtamg3MTEwLWNsZWFuLXNlbmQtdjMtMC00ODRmOWFlNzI3MTVAc2Ftc3Vu
Zy5jb20/cGFydD0xMgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
