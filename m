Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81427C88E41
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 05:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BDsdhLZ5ZF7FDXQjYFaVOcGF8A6+CwntnW4UKDe06E8=; b=aXvYGPigi2o+SU
	LAwtDlIC9rqRsj1YNXCaZ/tSObc012CRp6nTTKiCdPFQygW+rQFCO7xo4T3yfPJsUYCTNsbWQSyzL
	7Ad0689vjdWHjOSGlmQPDLUVEBWKk1pg5v4T6EHlSTQK2ZtSnhsoXTPVjba78Tdg8AGR+5eGPyiZY
	8b3XP4Z/quqh9xR+2ZKtNejN0TAoC6fhR9u8ziev9x87nqAj84fU8GDiLwQoLbQiJVjrtFCxkldr9
	ub4Soy4162kRSnkYoiwHzoP2BiyNKriLufpT6rIgJepxwAJ1iYyOsRODO7RqYj43L2qfnj0FGsLRu
	XOIiCk3bmKRu5BDwYyYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4tgP-0000000FrVP-3xmu;
	Fri, 11 Sep 2026 05:20:17 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4tgO-0000000FrUh-29Sa;
	Fri, 11 Sep 2026 05:20:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2F528431E1;
	Fri, 11 Sep 2026 05:20:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7DED1F000FF;
	Fri, 11 Sep 2026 05:20:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789104016;
	bh=zQkaItX0xqo5kFCTOPQvErm+zlth+OHMFg4BhhYP06c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=m4bAq3t6xGNaDJIAUQZb5j72asbrzo3kHL9Z95osZGv0FSm+lI+GiTji1/5h9z5Na
	 SdjWZapU5O7ZCqDBU0DO09eDrxABIvz97cYjMC5Sdlvhjd4X65ZXLa4WMgQxwLAfnw
	 p9jylw7kLyiJSZgPD1NI/ALAdP0vRi3xXBZRcwL5Hn+liVDz3xBDuD7GQCAElU31VC
	 Jf0bkgZ6zZAIaQATdwkyLAjemkhynonHl+/zp5qmoYsh5h7rdN9VHgJv7mr/2eJp+2
	 s2LQia0fpY/ORQRx0byN3JPmVrc3YfSs2jFAg80Z/4xUVfwd49977V0nZhvvgkZL11
	 oY7j5hhsHvZlg==
Date: Fri, 11 Sep 2026 07:20:06 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: chunfeng.yun@mediatek.com, vkoul@kernel.org, neil.armstrong@linaro.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	chunkuang.hu@kernel.org, p.zabel@pengutronix.de, justin.yeh@mediatek.com, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, kernel@collabora.com
Subject: Re: [PATCH v4 11/12] phy: phy-mtk-dp: Add PHYD Lane EN register mask
 to SoC data
Message-ID: <dcywgc2ccerd6h7rsib5dak2tmanhy6tnbl3fuzvl4ni2ua2lw@jiqbmfni7uou>
References: <20260910092038.48291-1-angelogioacchino.delregno@collabora.com>
 <20260910092038.48291-12-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260910092038.48291-12-angelogioacchino.delregno@collabora.com>
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

T24gVGh1LCBTZXAgMTAsIDIwMjYgYXQgMTE6MjA6MzdBTSArMDIwMCwgQW5nZWxvR2lvYWNjaGlu
byBEZWwgUmVnbm8gd3JvdGU6Cj4gSW4gcHJlcGFyYXRpb24gZm9yIGFkZGluZyBzdXBwb3J0IGZv
ciB0aGUgZURQIFBIWSBmb3VuZCBpbiBuZXdlcgo+IFNvQ3MsIHRyYW5zZmVyIHRoZSByZWdpc3Rl
ciBtYXNrIGZvciBQSFlEX1RYX0xOX0VOIHRvIFNvQyBzcGVjaWZpYwo+IGRhdGEuCj4gCj4gU2ln
bmVkLW9mZi1ieTogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gPGFuZ2Vsb2dpb2FjY2hpbm8u
ZGVscmVnbm9AY29sbGFib3JhLmNvbT4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2
YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK
4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
