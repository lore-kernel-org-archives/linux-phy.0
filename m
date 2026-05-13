Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 654D9CD37B6
	for <linux-phy@archiver.kernel.org>; Wed, 13 May 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X87zYsuqUIAcA2xE6rFaJoMod/COrsbG7dq7zQnepPk=; b=nkMxwCxrudl5wT
	VqaO7EtNTEuULz/EMgNVHCEvlJTsZoimPwhxoQVzRa6h9/N+f5X1HZSD8irqqXq5MA8EirRar2GLc
	rd0I0CSnxnpKLoVrOzN3YJdSjWz/qfnvzJdMO/PX4tKWv4EH93KH6fpIoPXbJYqooKqHzHxUsLYnp
	sdKstAHtH2XtYCNDBiYVkEYmqsRKTwb/JHOx8OTglqbSZ79PHaxa3slVPU3J1R7uIgf0RPJR5aJ3I
	B2vMZLyIurlTlXRfvh8Ch4rpNZwnjLqB5GJdQyVCulMtD+9tNCtlISltOxBIiOZwy84R06Mtv9YMx
	OrX/Ef+twrQHwf/dkDgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN5bt-00000001r7C-0fNL;
	Wed, 13 May 2026 09:10:33 +0000
Received: from out-176.mta1.migadu.com ([95.215.58.176])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN5bp-00000001r4G-45t1;
	Wed, 13 May 2026 09:10:31 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1778663417;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Br8ECkosH6439TK+TJacDyUDWhXrY1kuRkm0dcmNU5g=;
	b=GJuTuYD3sVwTg6QvMvWnBqJ1fueHdcR54Vyny37HELRIDR1oAXrowvVemTNylGlBgDTXIk
	86zgMr6P8rv68yL8DWZZFutHCR8bOXVyLiyCTDclwuhjEA+Z6wi0NrmP2gm6VuNIzYsYbv
	bXOt/FeGCCGJkmgJ/fNCf0pegjyoNlMHmRD0TGXhzUnEdJ2hRThF1Z66TVY+EdNgt8Md+H
	pw3ICaamFi4/krXGb/AfhU5TKdBlhIL6Z+t8zSOgSwchQjBtNi9nR0lKWnfNIUXdrefoMv
	vGpk3N1Vh1yP7RAD8oRqlpPwUdFECI7m6DY0e1FEKNfjj7kY6C4wAvSi7r1Yvw==
Date: Wed, 13 May 2026 11:09:58 +0200
Message-Id: <DIHFJX03WWI4.1F9FMM0HOCPK@cknow-tech.com>
Subject: Re: [PATCH v2 3/5] dt-bindings: phy: rockchip,inno-usb2phy: Add
 compatible for RK3528
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Heiko Stuebner" <heiko@sntech.de>, <vkoul@kernel.org>
Cc: <neil.armstrong@linaro.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
 <conor+dt@kernel.org>, <linux-phy@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <jonas@kwiboo.se>
References: <20260505170410.3265305-1-heiko@sntech.de>
 <20260505170410.3265305-4-heiko@sntech.de>
In-Reply-To: <20260505170410.3265305-4-heiko@sntech.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_021030_167382_E0D019A5 
X-CRM114-Status: GOOD (  13.75  )
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

Hi Heiko,

On Tue May 5, 2026 at 7:04 PM CEST, Heiko Stuebner wrote:
> From: Jonas Karlman <jonas@kwiboo.se>
>
> The embedded USB2 PHY on RK3528 is very similar to the one in RK3568,
> the main difference being that it only uses two clocks instead of three.
>
> Add compatible to support the USB2 PHY in RK3528.
>
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  .../bindings/phy/rockchip,inno-usb2phy.yaml   | 30 ++++++++++++++++---
>  1 file changed, 26 insertions(+), 4 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
> index b95c9e3e44fe..f50fc69fbbe4 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
> @@ -20,6 +20,7 @@ properties:
>        - rockchip,rk3328-usb2phy
>        - rockchip,rk3366-usb2phy
>        - rockchip,rk3399-usb2phy
> +      - rockchip,rk3528-usb2phy
>        - rockchip,rk3562-usb2phy
>        - rockchip,rk3568-usb2phy
>        - rockchip,rk3576-usb2phy
> @@ -41,11 +42,15 @@ properties:
>      maxItems: 3
>  
>    clock-names:
> -    minItems: 1
> -    items:
> +    oneOf:
>        - const: phyclk
> -      - const: aclk
> -      - const: aclk_slv
> +      - items:
> +          - const: phyclk
> +          - const: pclk
> +      - items:
> +          - const: phyclk
> +          - const: aclk
> +          - const: aclk_slv
>  
>    assigned-clocks:
>      description:
> @@ -65,6 +70,9 @@ properties:
>      description: Muxed interrupt for both ports
>      maxItems: 1
>  
> +  power-domains:
> +    maxItems: 1
> +

The commit message talks about (the differences in) clocks, but says
nothing about power-domains. Shouldn't that be mentioned and/or split
off into its own patch? (FWIW: I like the change itself)

Cheers,
  Diederik

>    resets:
>      maxItems: 2
>  
> @@ -150,6 +158,7 @@ allOf:
>          compatible:
>            contains:
>              enum:
> +              - rockchip,rk3528-usb2phy
>                - rockchip,rk3568-usb2phy
>                - rockchip,rv1108-usb2phy
>      then:
> @@ -218,6 +227,19 @@ allOf:
>          clock-names:
>            maxItems: 1
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,rk3528-usb2phy
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 2
> +        clock-names:
> +          minItems: 2
> +
>    - if:
>        properties:
>          compatible:


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
