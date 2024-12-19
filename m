Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28D27E77184
	for <linux-phy@archiver.kernel.org>; Thu, 19 Dec 2024 08:29:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lyGhIoyzmFVRGOX/WQv1ogvSYKkT44+RX8fTk4Z0mp8=; b=N4qIRSjsweBoHz
	Ep1mUBMR4hltih2deA+uCwtDmDD7HV0NTFiO2tr/vUpQgFvY/lYx3Su2idRCTrrnnuaX3FYy/iBBx
	iPtQy7KPppB3kQZZU+MoJsx52JF92emCP8ZPEqh3Nhk9IbvuNPUqMmuODBnuWAHNcTsKU8VhVBwxn
	635dDRX+7qga8VxNQk09Fn41O6NHZcv2Evv6u7bN0HYXSIiJQ7q8fVwIAi9g1xnby+t8Njl+PUSWU
	J7bNdsqc2L3jUzBh41IpKC7P8P2rtLQnVWkY+H/bFEKjUCUoYfQvTQk9wscjhVZLJ755I4UVH/MSP
	CwxhjIolvi7mIbdAlj5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOBuG-00000001HLk-3EfB;
	Thu, 19 Dec 2024 08:29:16 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOBt9-00000001HCi-3VeD;
	Thu, 19 Dec 2024 08:28:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 2C04F5C6633;
	Thu, 19 Dec 2024 08:27:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 446BCC4CECE;
	Thu, 19 Dec 2024 08:28:05 +0000 (UTC)
Date: Thu, 19 Dec 2024 09:28:03 +0100
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 02/15] dt-bindings: display: rockchip: analogix-dp:
 Add support for RK3588
Message-ID: <tdhs45ac2ivdke7idrzxrhlgsqlnswkb2maorau3guzrrwpce3@emdq7xx6cpwz>
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
 <20241219080604.1423600-3-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241219080604.1423600-3-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241219_002807_923196_86E887D4 
X-CRM114-Status: GOOD (  17.46  )
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

On Thu, Dec 19, 2024 at 04:05:51PM +0800, Damon Ding wrote:
> Compared with RK3288/RK3399, the HBR2 link rate support is the main
> improvement of RK3588 eDP TX controller, and there are also two
> independent eDP display interfaces on RK3588 Soc.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Drop, patch was very different.

> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - Add the main defferences of the RK3588 eDP and the previous versions
>   in commit message
> 
> Changes in v3:
> - expand the property clock-names, resets and reset-names

Adding new properties invalidates reviews. The patch is entirely, really
significantly different so keeping the review is not acceptable.

> ---
>  .../display/rockchip/rockchip,analogix-dp.yaml     | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
> index 60dedf9b2be7..4f84e8849876 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
> @@ -15,6 +15,7 @@ properties:
>      enum:
>        - rockchip,rk3288-dp
>        - rockchip,rk3399-edp
> +      - rockchip,rk3588-edp
>  
>    clocks:
>      minItems: 2
> @@ -25,16 +26,23 @@ properties:
>      items:
>        - const: dp
>        - const: pclk
> -      - const: grf
> +      - enum:
> +          - grf
> +          - spdif

No, this cannot be flexible for existing variants.

>  
>    power-domains:
>      maxItems: 1
>  
>    resets:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2

No, you must list the items.

>  
>    reset-names:
> -    const: dp
> +    minItems: 1
> +    items:
> +      - const: dp
> +      - enum:
> +          - apb

I don't understand what happened here but all this is NAK. Why suddenly
existing variants became different/changed? Nothing in commit msg
explains this.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
