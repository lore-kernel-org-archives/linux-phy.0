Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34E0BC43458
	for <linux-phy@archiver.kernel.org>; Sun, 12 Jul 2026 15:22:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FVGUrzj2MRB/KFfw+XwLvdYyzPy/N97r6cgDlIQeBBo=; b=BLBO+pbKKiqf2i
	ftwvK458XBGmPWrjT4pK/MoZN7aec1jFrroYb/08jW9sDcLacYRLcMq4qWxShYnxbFMViagNsoCEp
	hiZg4T1017mcoyj3afbjdPxuQAb36o6WX2hdz90D9s8cjHxU3G9nTGs3Ru/c4+tEJlbZ7Q48HPcFm
	kl0BVgb5Wxx0QRX5N68tuoqkFDCP7Ec/SHlERdksLPDojuWqUkqJBhJln2LiqtDnXeazcQ31vmycU
	gM1wRuBhT/p7jfn9o+zXdZLfsxYnjyJlo38Pleb9NbUXQV6NadBoyylMdCyupapxDJWGiiyTIcY7b
	5kBBEDNAxMxV768q3zUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiw0W-00000007Z2h-2kLX;
	Sun, 12 Jul 2026 15:22:16 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiw0V-00000007Z2M-0xI2;
	Sun, 12 Jul 2026 15:22:15 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8256A4325B;
	Sun, 12 Jul 2026 15:22:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A15231F000E9;
	Sun, 12 Jul 2026 15:22:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783869734;
	bh=DuaiB+g90evMEnQ75glw9g8iH9UnlpaAQbng8V1ssBs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Byp017trUwl/8psOoSyDdN8PtY7+zecQELkM7ZiyxQf/cRCTQO+ugA+tXHJUoPtj1
	 P8Togkk32pLjMyqbfV33rMfj5OXwjMUiYcGjYxuHKsBxZoLXHFqVJAzIks1ND47AD7
	 WiIKN5DKkyBMetJJXIHTavH9NHVACUAgWOuGWeH9IE+FKeB4g8MlhdkD2ydvhlY7D6
	 HsUXCIUPg5kil7KSF8xcPnpYSpQt2lJFcLKk042r1i5ot5xxVdDAw/3bBhVLT2XrOG
	 dwiZili2xMav43/ICOeZV14fGdX2gnE2MYTslx4YI5cHO4mexPM0wp9VPbKwPmyGfN
	 TmhTRPn5RxXNQ==
Date: Sun, 12 Jul 2026 17:22:10 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: chunfeng.yun@mediatek.com, vkoul@kernel.org, neil.armstrong@linaro.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, chunkuang.hu@kernel.org, 
	p.zabel@pengutronix.de, matthias.bgg@gmail.com, justin.yeh@mediatek.com, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, kernel@collabora.com
Subject: Re: [PATCH 1/2] dt-bindings: phy: mediatek,dsi-phy: Add support for
 MT8196
Message-ID: <20260712-unselfish-topaz-roadrunner-f0bbfb@quoll>
References: <20260701121943.19430-1-angelogioacchino.delregno@collabora.com>
 <20260701121943.19430-2-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260701121943.19430-2-angelogioacchino.delregno@collabora.com>
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

On Wed, Jul 01, 2026 at 02:19:42PM +0200, AngeloGioacchino Del Regno wrote:
> Add support for the MediaTek Kompanio Ultra (MT8196) SoC: this
> chip features a DSI PHY that is similar to the one found in the
> MT8183 SoC, but is a new (incremental) revision with a different
> register layout.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
