Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD3E5CCA47D
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jun 2022 05:57:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/MwLebemrYgt6lqMzT3zjgq/JaAdx5J6G2poaA7M57c=; b=ufsDKmh4Gzc/DO
	P52jZebex+LuWyIitwT8POMd+hDusIvy7ey7A8e9T8NWvrfv5dLJNVUdOvxgP0d0vFhafhumbaEbP
	eWnGwdE5OeoDD4aQ5TEjeRphzQhuDhH0sSp7ut9jICUdJrZiyp2wW0unNGSKxqgF9ImD4k4B7lV6i
	XHMht46RkRDZDehlb5Ji0t4h8NWsdpb6lKm3QnY6t2Z7AJrX5lmvE4z2+xKSuuu6vCrwdZMrnkVup
	djsRCmrgSJ8ZM5yEERamqWUBMHYwVzge8sdQVvAzFkFZ8BHy1sCElhKZEeimwqpcBojTEJY/lhRO+
	iyqAKYb7Vj+89sfbVIUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBAS-00GuDw-3z; Thu, 09 Jun 2022 05:57:16 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBAD-00Gu4e-JZ; Thu, 09 Jun 2022 05:57:03 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 15B28B82C40;
	Thu,  9 Jun 2022 05:57:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFC28C34114;
	Thu,  9 Jun 2022 05:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1654754219;
	bh=Lk9VcDtnAmCoMRcuenCeRZs/rDxjxHcun+H8Vl2ka0g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=G8DsCVOvrbUU3PHnU9OPtRCyArNV8i7UbH9DNGl7TQTrqQ4QI7VQ5i95Stk/stCgr
	 YYAmxAxiLsrvk1cIGG0run+4Ybvh/EToyMRuDLma6Cmb1lDLk5QhonRFQ4sG/OYGAE
	 NGVw+25bVGzor8s8SnzbogYrxcfOjmVgLwdAj5WuJhkIEbpvjEbeOoKPh3mAdmL2hA
	 AK65I65XkoVohj15Fh3+kfSy/Ztc+1NcGEvSKtko3BqWRiyIU+Vd0BrlihMeOsAyxp
	 OFr1SUy/HsJLwXTE6fVsRjmBgTmzESxWO0PkIYFv4lcb1WjgbDfiJolR85nSV0pEM0
	 NrbOxi/3MTnSA==
Date: Thu, 9 Jun 2022 11:26:55 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Fabien Parent <fparent@baylibre.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	qii.wang@mediatek.com, matthias.bgg@gmail.com, jic23@kernel.org,
	chaotian.jing@mediatek.com, ulf.hansson@linaro.org,
	srinivas.kandagatla@linaro.org, chunfeng.yun@mediatek.com,
	broonie@kernel.org, wim@linux-watchdog.org, linux@roeck-us.net,
	Long Cheng <long.cheng@mediatek.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-iio@vger.kernel.org,
	linux-mmc@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-serial@vger.kernel.org, linux-spi@vger.kernel.org,
	linux-usb@vger.kernel.org, linux-watchdog@vger.kernel.org
Subject: Re: [PATCH 05/17] dt-bindings: dma: mediatek,uart-dma: add MT8365
 bindings
Message-ID: <YqGLpyWUgBJQXG9K@matsya>
References: <20220531135026.238475-1-fparent@baylibre.com>
 <20220531135026.238475-6-fparent@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220531135026.238475-6-fparent@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_225701_823263_3367EA91 
X-CRM114-Status: GOOD (  12.47  )
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

On 31-05-22, 15:50, Fabien Parent wrote:
> Add binding documentation in order to support the MT8365 SoC.

Applied to dmaengine-next, thanks

> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> ---
>  Documentation/devicetree/bindings/dma/mediatek,uart-dma.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/dma/mediatek,uart-dma.yaml b/Documentation/devicetree/bindings/dma/mediatek,uart-dma.yaml
> index 54d68fc688b5..19ea8dcbcbce 100644
> --- a/Documentation/devicetree/bindings/dma/mediatek,uart-dma.yaml
> +++ b/Documentation/devicetree/bindings/dma/mediatek,uart-dma.yaml
> @@ -22,6 +22,7 @@ properties:
>        - items:
>            - enum:
>                - mediatek,mt2712-uart-dma
> +              - mediatek,mt8365-uart-dma
>                - mediatek,mt8516-uart-dma
>            - const: mediatek,mt6577-uart-dma
>        - enum:
> -- 
> 2.36.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
