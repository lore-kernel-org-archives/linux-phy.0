Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C03EAC88E75
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 15:42:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QzrK+QfehZGMAzvAnSAX2d73J2Zd1o4kYTqDhDFV6h4=; b=fSZ1DgRKLwyjYd
	mAN0unfuV1dWd11gTX78N30kffSQX0x7ZKIdzjskLXg3GELYGj73dFHzC/tYf8IFJijs8MS+7lIoV
	LU6gnzgyeGgX4bdIPJs08pIHZram3/IN6n1GVo77T7GiZQWkDU3JL5iR/Fj6Cf45Hp3TpIf+Z7x/K
	mAsXDDPItEw/LSxF3Rw5DSkuKKSl2z7kOWq44DRTEvy8Akgr8yjzh7eJgfwcYaWgyXPizWXJYTCpJ
	vbjU5V0QF91Wypbe1PxIkqc2MtxPEt0R1AzlaTJvY8UoVl40Y3CuIsbbitRtx1JRujiWpcU7fFTr7
	L4hHFLHSdHXjnRXZV3aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VIv-00000007GJu-1zGI;
	Tue, 15 Sep 2026 15:42:41 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VIt-00000007GJQ-2QlS
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 15:42:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B324F600C8;
	Tue, 15 Sep 2026 15:42:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB4881F000FF;
	Tue, 15 Sep 2026 15:42:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789486958;
	bh=7Vx16qxwEkTNfbzykTnvh+0c27LHNjH/X44JjJbizcg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hmTD19Y1PJoy/SdbWt4a2mLXPgWnUpHE1h1tBiQ6NGZZd6cCd3Dhw7qzbRzLCxlqA
	 lzzCSHyUCca76SFKQAeRwr4OPeXd3szV9vRefA4Dh6uzRA6KMi2kctNrbF1UPGHohR
	 lOrnsIMs+kHtfF39nNQqYkPAKrdNJRZjA/p5H3xWzfKLvuR+OBi1cB9mumP1Jv3Iau
	 fY66LyNP6d5eSUd7pMipafLAfLVLmgRT+hcBSWNyonw27jmRKc4RZqgRcKbWnx09W1
	 0KsrqjiHYkRSxVHRj+gS4iVx9qE6/5zIdtTwpSltWso5kEtD1RoV6Y4qCUpTlwYqP9
	 0DBzvZ2QF5bSA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 08/20] drm/bridge: inno-hdmi: Allow the register map
 to come from a parent
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: linux-clk@vger.kernel.org, robh@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, mfd@lists.linux.dev, dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, devicetree@vger.kernel.org, lee@kernel.org, vkoul@kernel.org
In-Reply-To: <20260915-jh7110-clean-send-v4-8-f0e4fd6f2cc8@samsung.com>
References: <20260915-jh7110-clean-send-v4-0-f0e4fd6f2cc8@samsung.com>
 <CGME20260915153227eucas1p2c51b87dc8da5d9dfacd6db6bb7d6774e@eucas1p2.samsung.com>
 <20260915-jh7110-clean-send-v4-8-f0e4fd6f2cc8@samsung.com>
Date: Tue, 15 Sep 2026 15:42:37 +0000
Message-Id: <20260915154237.CB4881F000FF@smtp.kernel.org>
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

PiBPbiBzb21lIFNvQ3MgdGhlIEhETUkgY29udHJvbGxlciBkb2VzIG5vdCBvd24gaXRzIHJlZ2lz
dGVyIHdpbmRvdy4gVGhlCj4gU3RhckZpdmUgSkg3MTEwIGRvY3VtZW50cyBvbmUgNjQgS0IgYmxv
Y2ssIHUwX2hkbWl0eCwgdGhhdCBob2xkcyBib3RoCj4gdGhlIGNvbnRyb2xsZXIgYW5kIHRoZSBQ
SFksIHNvIHRoZSBwYXJlbnQgZGV2aWNlIG1hcHMgaXQgYW5kIG93bnMgdGhlCj4gcmVnbWFwIHdo
aWxlIHRoZSB0d28gY2hpbGRyZW4gc2hhcmUgaXQuCj4gCj4gVXNlIGEgcmVnbWFwIHN1cHBsaWVk
IGJ5IHRoZSBwYXJlbnQgZGV2aWNlIHdoZW4gdGhlcmUgaXMgb25lLCBhbmQga2VlcAo+IG1hcHBp
bmcgb3VyIG93biByZXNvdXJjZSB3aGVuIHRoZXJlIGlzIG5vdCwgc28gcGxhdGZvcm1zIHRoYXQg
b3duIHRoZWlyCj4gcmVnaXN0ZXIgd2luZG93IGFyZSB1bmFmZmVjdGVkLgo+IAo+IFJldmlld2Vk
LWJ5OiBKb3NodWEgUGVpc2FjaCA8anBlaXNhY2hAdWJ1bnR1LmNvbT4KPiBTaWduZWQtb2ZmLWJ5
OiBNaWNoYWwgV2lsY3p5bnNraSA8bS53aWxjenluc2tpQHNhbXN1bmcuY29tPgoKU2FzaGlrbyBo
YXMgcmV2aWV3ZWQgdGhpcyBwYXRjaCBhbmQgZm91bmQgbm8gaXNzdWVzLiBJdCBsb29rcyBncmVh
dCEKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hz
ZXQvMjAyNjA5MTUtamg3MTEwLWNsZWFuLXNlbmQtdjQtMC1mMGU0ZmQ2ZjJjYzhAc2Ftc3VuZy5j
b20/cGFydD04CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
