Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62700C79FB6
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 17:22:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o9lQrmhHX0H3urFQCkqTln0aiXu82+E7/xyeVcHeUrE=; b=ME5IdsxHymWAeh
	skkQKP80n/yksjrvGkpNNqqFtY8v1DoXvDOEihZUmjUVmJdDt093K90SyqkdoznAkyL/pp4Nn6+w6
	6Jha4U+Fg1diYP2lOcnpoJVGXVissO+pfnEmWzvVFXA+hPWPn3vgVKLZCoYxFdxKXcBTWl7kUwH2V
	09/qIhbu8AKxM8/0XWi/kLieghuA1g+AhEF1r5SD9vQGy/pFayizvdQITyWRZBbaqVp0pb1aZVSvD
	fSU0t6qyZ/mspXZeRfxpO1ihgx3npqSXVQc+cCvdr+8vnpj+R9IO6jIxrDl9uk1ROiwIxyDcmJX1x
	hALWRySk8Q65+O94levw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4M03-0000000CT6N-0K2v;
	Wed, 09 Sep 2026 17:22:19 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4M01-0000000CT5Z-2sxe;
	Wed, 09 Sep 2026 17:22:17 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5B94442AD1;
	Wed,  9 Sep 2026 17:22:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E61391F000FF;
	Wed,  9 Sep 2026 17:22:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788974537;
	bh=TTiLgaAW8oDG8ctZ/GijkFx6Ydc/BMWX2BkNbD07Dek=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=FzZ6zHuuZr55mmH4+vSo24dCuLDTV+Favm5/kzoxEge48jXhuODYPdH5y8bEQ1l5D
	 GE7FqzMWcNU7kPSglZmQeb9d8WQ4uj/x/pDYT5RFhtPs98xPNA5egwh51UQYDKWRm5
	 f59ftgqJmpgIN0n2TDgmuuLGHPw9ZK5Dc0Lk1PPvk4/fur0xbMOGvxkpVpvFNr2+QJ
	 o/JLBwa2e3OFVdZXYhG6JKx/w1nkV2xaAXY54cB4XjD1+n+2VhsnXrzfVTHRJ6MBFT
	 p6Ic2wrme/sYDLrEfnTSsRtbS1FlMZJ9/y3Ma/4mHv+JK3fX+BQnqnrjLSTtPzdhFX
	 coPAqhMgvJsdg==
Date: Wed, 9 Sep 2026 19:22:08 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: chunfeng.yun@mediatek.com, vkoul@kernel.org, neil.armstrong@linaro.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	chunkuang.hu@kernel.org, p.zabel@pengutronix.de, justin.yeh@mediatek.com, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, kernel@collabora.com
Subject: Re: [PATCH v3 09/12] phy: phy-mtk-dp: Rewrite and document default
 driving param macros
Message-ID: <ztidtis3m3g5ykkolsje2xeq7xl4gh2bbbbkxhxajorenvnkpt@yztuepbseogg>
References: <20260707154245.198361-1-angelogioacchino.delregno@collabora.com>
 <20260707154245.198361-10-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260707154245.198361-10-angelogioacchino.delregno@collabora.com>
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

T24gVHVlLCBKdWwgMDcsIDIwMjYgYXQgMDU6NDI6NDJQTSArMDIwMCwgQW5nZWxvR2lvYWNjaGlu
byBEZWwgUmVnbm8gd3JvdGU6Cj4gVXNlIEZJRUxEX1BSRVBfQ09OU1QgYW5kIGFkZCBuaWNlciBk
ZWZpbml0aW9ucy9tYWNyb3MgdG8gYnVpbGQgdGhlCj4gZGVmYXVsdCBkcml2aW5nIHBhcmFtZXRl
cnMgZm9yIHRoZSBQSFkgYW5kLCB3aGlsZSBhdCBpdCwgYWxzbyBhZGQKPiBjb21tZW50cyBleHBs
YWluaW5nIHdoYXQgdGhleSBhcmUgc3VwcG9zZWQgdG8gc2V0IGluIHRoZSBQSFkuCj4gCj4gU2ln
bmVkLW9mZi1ieTogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gPGFuZ2Vsb2dpb2FjY2hpbm8u
ZGVscmVnbm9AY29sbGFib3JhLmNvbT4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2
YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK
4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
