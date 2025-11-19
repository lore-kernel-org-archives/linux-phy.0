Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E57A7CF58C4
	for <linux-phy@archiver.kernel.org>; Wed, 19 Nov 2025 18:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7SIzuSWlmi2vDA//TQDmG6ZkQvvonZm8DIJP1GNwE2c=; b=Vpj82zjuffO7CY
	ZWyHOr2yLysH5oXT9OmXypiB0/EGixZvFigjTuRe8pR+aolDjLEkNslTeJAEL4ge+4b0fGvNDGuRC
	ym5XY58DVp81yHlSHrDedvVM/6iqOz6FFsDlknPjLgf8GGntE1Cu0TXGVulxeCMunELTlNRZuX4Il
	kbTzlc3cNMvLLjNcTA2x5fpDvYQ7jWPpbGhuNtZTVJFRs8IGfR7VSQUojRKDrVxdQsn0U4IpalQw0
	YMaf/cASrKewcu9Mj+uUTRvj6m+njk2Z/G1l+sFPGLZHnqqDuDcOqh36Det3JxAOLESvr0GFTArRt
	2cKPMTukzysIl9MKQV5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLmaC-00000004Q9a-2Cfo;
	Wed, 19 Nov 2025 18:07:08 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLmaB-00000004Q9N-3s4T
	for linux-phy@lists.infradead.org;
	Wed, 19 Nov 2025 18:07:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id F12CB6019F;
	Wed, 19 Nov 2025 18:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A69EC4CEF5;
	Wed, 19 Nov 2025 18:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763575626;
	bh=4d5rcTTQrqxAwHFaEaXz/InkRKSrlbPARDoNksmiCEg=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=pKbOQFwwmhYoWDKR/2FuVI6VMRMd2zKEVIsN/acQhKxl93XDSD8FvrTjPG6ihhTIy
	 guT6Ut5ihv5Fhtcy9iUQK4WG2TSkhRNhyV1NjhouV8/GS0LJ11Zr9rOueb2PWiwm28
	 pncSlYGs7R4Jr/X5Vy6cBOxI4ApYpSPkiY0ypF529Pevez9JJtjHhFXUg1+XG/ny9T
	 bzU6ZwsCslyUwjbQ5QE3y4rNMifQH0uySdwkIZYSkY5Pesl4tagnEkDk7YzAMIOsS5
	 OTDalcGxrUW/2FL4Zy/dKaCJomPx/UdfRuQDDpXoYv55z7uhQwIrHRWzT2BCbjn4aL
	 2z+Si8wQvktwA==
MIME-Version: 1.0
In-Reply-To: <20251119-macb-phy-v3-3-e9a7be186a33@bootlin.com>
References: <20251119-macb-phy-v3-0-e9a7be186a33@bootlin.com> <20251119-macb-phy-v3-3-e9a7be186a33@bootlin.com>
Subject: Re: [PATCH v3 3/7] clk: eyeq: use the auxiliary device creation helper
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-mips@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, linux-clk@vger.kernel.org, =?utf-8?q?Beno=C3=AEt?= Monin <benoit.monin@bootlin.com>, Maxime Chevallier <maxime.chevallier@bootlin.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, =?utf-8?q?Th=C3=A9o?= Lebrun <theo.lebrun@bootlin.com>, Jerome Brunet <jbrunet@baylibre.com>
To: Conor Dooley <conor+dt@kernel.org>, =?utf-8?q?Gr=C3=A9gory?= Clement <gregory.clement@bootlin.com>, Kishon Vijay Abraham I <kishon@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Michael Turquette <mturquette@baylibre.com>, Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, =?utf-8?q?Th=C3=A9o?= Lebrun <theo.lebrun@bootlin.com>, Vinod Koul <vkoul@kernel.org>, Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>
Date: Wed, 19 Nov 2025 10:07:04 -0800
Message-ID: <176357562473.11952.15433192921239262065@lazor>
User-Agent: alot/0.11
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

UXVvdGluZyBUaMOpbyBMZWJydW4gKDIwMjUtMTEtMTkgMDc6NTE6MTEpCj4gRnJvbTogSmVyb21l
IEJydW5ldCA8amJydW5ldEBiYXlsaWJyZS5jb20+Cj4gCj4gVGhlIGF1eGlsaWFyeSBkZXZpY2Ug
Y3JlYXRpb24gb2YgdGhpcyBkcml2ZXIgaXMgc2ltcGxlIGVub3VnaCB0bwo+IHVzZSB0aGUgYXZh
aWxhYmxlIGF1eGlsaWFyeSBkZXZpY2UgY3JlYXRpb24gaGVscGVyLgo+IAo+IFVzZSBpdCBhbmQg
cmVtb3ZlIHNvbWUgYm9pbGVycGxhdGUgY29kZS4KPiAKPiBUZXN0ZWQtYnk6IFRow6lvIExlYnJ1
biA8dGhlby5sZWJydW5AYm9vdGxpbi5jb20+ICAjIE9uIE1vYmlsZXllIEV5ZVE1Cj4gU2lnbmVk
LW9mZi1ieTogSmVyb21lIEJydW5ldCA8amJydW5ldEBiYXlsaWJyZS5jb20+CgpZb3UgbmVlZCB0
byBhZGQgeW91ciBTb0IgaGVyZS4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
