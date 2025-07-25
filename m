Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88A67C87FCA
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jul 2025 20:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qA9WPN00CV89LccI5K3PbyDkIRQaZkWRkKhsXmOroHk=; b=SDD3HR6QwSU5zu
	cPRqTSFW1NQWHWDnrYBaf+oW7Mqe8u+as9Gp9W4FUPoQu1JPv00GtRSEGJcVanIn0r9aCyQJl8SJZ
	LqTcHs9Xwbi51S61gdCBlaK23ICbGnmaUhCQRCCw4eYgrlT/wIVlvAS34vSMHMmx+nRjIwZNLfqaq
	waz0wHoU4r3eaMrH48zpqOrc09zKA7Cs2LGvWolBcFrZzI2pxuxbTp0dzgfyHrc1dIHs02eEu3HZ2
	QVov/EeLzpwszh/vrV2n3lEUoh9sr5SidLQ7CTd44pqE15yA7uLaMOW17n/AFek+pOTOI4XbINurU
	CUYv6qPFQjqSKPQlQBGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufP2h-0000000Ae16-1Kpx;
	Fri, 25 Jul 2025 20:29:23 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufP2e-0000000Ae03-3zNu;
	Fri, 25 Jul 2025 20:29:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3E8CC5C649A;
	Fri, 25 Jul 2025 20:29:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B468AC4CEE7;
	Fri, 25 Jul 2025 20:29:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753475359;
	bh=Imha4OX0ZhwOigvJh8YFnyOUROjweFoNk0pUIHBrpJc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TBmk1V9It9WMtACxnpGuqS+dXcJZbCibN0qJhMdmR7JXzU7UcDGxqXVSN7TX1Ukyp
	 K7oxYEDuNuZMKcDqLLt8nfuvt91BAayZZTmBtbUUk+SnPjZ8nWirQQYi4O8yeWXVum
	 XHKOThHlkOkCC7yoBj/Pz41F+ly97Cem2yaOjDdFiU1DUjW0NrB9BpuzUVVXcCjugU
	 GCBlWm/NGprv2S/hXMCwSZayD5LKPhTcHANkfzcgAclohf/gEDSuesMG0KaEnbJMX8
	 cHwf5O+G6ZypWaVIo2L0zsp1lGOraVhUfEHkWY9JaASwnHqt4qU26DFMbBfeEGA6HX
	 LWzDSdQeLlHAA==
Date: Fri, 25 Jul 2025 15:29:17 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: tglx@linutronix.de, shane.chien@mediatek.com,
	dri-devel@lists.freedesktop.org, daniel.lezcano@linaro.org,
	mathieu.poirier@linaro.org, linux-remoteproc@vger.kernel.org,
	linux-crypto@vger.kernel.org, linux-gpio@vger.kernel.org,
	kishon@kernel.org, sam.shih@mediatek.com,
	devicetree@vger.kernel.org, sean.wang@kernel.org,
	krzk+dt@kernel.org, simona@ffwll.ch, atenart@kernel.org,
	linux-media@vger.kernel.org, tzimmermann@suse.de,
	jiaxin.yu@mediatek.com, granquet@baylibre.com, fparent@baylibre.com,
	vkoul@kernel.org, kyrie.wu@mediatek.corp-partner.google.com,
	chunfeng.yun@mediatek.com, eugen.hristev@linaro.org,
	maarten.lankhorst@linux.intel.com, broonie@kernel.org,
	jassisinghbrar@gmail.com, houlong.wei@mediatek.com,
	andersson@kernel.org, olivia.wen@mediatek.com, mwalle@kernel.org,
	andy.teng@mediatek.com, chunkuang.hu@kernel.org,
	p.zabel@pengutronix.de, herbert@gondor.apana.org.au,
	davem@davemloft.net, linux-sound@vger.kernel.org,
	mripard@kernel.org, airlied@gmail.com, frank-w@public-files.de,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	jieyy.yang@mediatek.com, matthias.bgg@gmail.com,
	linux-mediatek@lists.infradead.org, lgirdwood@gmail.com,
	mchehab@kernel.org, tinghan.shen@mediatek.com,
	jitao.shi@mediatek.com, linux-phy@lists.infradead.org,
	conor+dt@kernel.org, ck.hu@mediatek.com, arnd@arndb.de,
	linus.walleij@linaro.org
Subject: Re: [PATCH 07/38] dt-bindings: pinctrl: mediatek,mt7622-pinctrl: Add
 missing pwm_ch7_2
Message-ID: <175347535659.1836862.13811953768761711580.robh@kernel.org>
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
 <20250724083914.61351-8-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250724083914.61351-8-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250725_132921_020136_95E9060D 
X-CRM114-Status: UNSURE (   8.30  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On Thu, 24 Jul 2025 10:38:43 +0200, AngeloGioacchino Del Regno wrote:
> The MT7622 SoC has a PWM channel 7-2 group for the pwm7 IP: add
> the missing pwm_ch7_2 group.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../devicetree/bindings/pinctrl/mediatek,mt7622-pinctrl.yaml    | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
