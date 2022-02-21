Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3698AC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 21 Feb 2022 14:01:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ScMzCo4yU/oANsgVtKPJHEbmDRL7XtQ9xztMkP1ZN8o=; b=gZXdTXLYl4L2cq
	gKi6h50vgiKvjdq22F/eHgJQPPWZlaPFHHp5ItaQsj0qRuq9r111HsKaNMKoMsIwM9xSn8yeDVGYj
	nt6X5F+ThzFTGZ47BCH24NVHvf5aq4qg4rOefutnn+144+aIAcsZjKaA+dA0j7sDcnDtCBjumosNH
	F9IPyd5V1DyWG5FPRsl3j5nvZolnxsMD+rliqyCoiF0gOLmtkNllfZSrxHEm8KjKOHKOfYhas1JDn
	XCsaR03Qt9t0X57k5V+9d0WJzwqRMFHDdSYEYz5S8UZhGMOMNSkk0mat/kTzgBktweIigmrxh5jc6
	L+Ozg+HgkZGKsKf79rBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nM9GA-0066mG-Hy; Mon, 21 Feb 2022 14:01:50 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nM8uu-005yFg-JF
 for linux-phy@lists.infradead.org; Mon, 21 Feb 2022 13:39:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 1261760AF9;
 Mon, 21 Feb 2022 13:39:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37809C340E9;
 Mon, 21 Feb 2022 13:39:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645450791;
 bh=OfzKE4RO72bJXlLVyV1wJI0i81I8/DbSdJeSzUUxZVw=;
 h=Date:Subject:To:References:From:In-Reply-To:From;
 b=s9gVqXjkrTYBsZZ1Uu+UFsA4cCMaW0OwVLN/xIs3HwTZvmJ2jDd1A3xEc0gR8eoSW
 j+EaxQGuBJvxlt6AiMkS9DbhJYU2xdZ8m1KnvYomXxgysgCMevd2LYi606LCrOcoT6
 RcrxiQoDHZnoplu0AYiYPUOf0LducKiQMWrHmr5zocgeShCdmgQKyhy0qmbNu5LxP7
 3XJQ74sKhXI2mG7a2cbBHqqmLx9LB0Q9QQhY9obZdQ3770wLAmJnjt2fac4d+KjF/L
 FGeyFiK7uWnUqHLq9QF5iRwsaCETRD6+43IsfL+LdpeAjjlu/vYey80AiKCAAOKa4c
 2PVjRsDe07Fag==
Message-ID: <de4d010b-a271-4814-489e-fe357fc512b7@kernel.org>
Date: Mon, 21 Feb 2022 15:39:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] dt-bindings: update Roger Quadros email
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org
References: <20220221100701.48593-1-krzysztof.kozlowski@canonical.com>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20220221100701.48593-1-krzysztof.kozlowski@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220221_053952_774231_EEE5AD39 
X-CRM114-Status: GOOD (  16.33  )
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



On 21/02/2022 12:07, Krzysztof Kozlowski wrote:
> Emails to Roger Quadros TI account bounce with:
>   550 Invalid recipient <rogerq@ti.com> (#5.1.1)
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

Acked-by: Roger Quadros <rogerq@kernel.org>


> 
> ---
> 
> Roger,
> You should also add a mailmap entry for your inactive emails.
> 
> Best regards,
> Krzysztof
> ---
>  .../devicetree/bindings/mfd/ti,j721e-system-controller.yaml     | 2 +-
>  Documentation/devicetree/bindings/phy/ti,omap-usb2.yaml         | 2 +-
>  Documentation/devicetree/bindings/usb/ti,j721e-usb.yaml         | 2 +-
>  Documentation/devicetree/bindings/usb/ti,keystone-dwc3.yaml     | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml b/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
> index 272832e9f8f2..fa86691ebf16 100644
> --- a/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
> +++ b/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
> @@ -20,7 +20,7 @@ description: |
>  
>  maintainers:
>    - Kishon Vijay Abraham I <kishon@ti.com>
> -  - Roger Quadros <rogerq@ti.com
> +  - Roger Quadros <rogerq@kernel.org>
>  
>  properties:
>    compatible:
> diff --git a/Documentation/devicetree/bindings/phy/ti,omap-usb2.yaml b/Documentation/devicetree/bindings/phy/ti,omap-usb2.yaml
> index 51c8a36e61f0..8694b9eb52f9 100644
> --- a/Documentation/devicetree/bindings/phy/ti,omap-usb2.yaml
> +++ b/Documentation/devicetree/bindings/phy/ti,omap-usb2.yaml
> @@ -8,7 +8,7 @@ title: OMAP USB2 PHY
>  
>  maintainers:
>    - Kishon Vijay Abraham I <kishon@ti.com>
> -  - Roger Quadros <rogerq@ti.com>
> +  - Roger Quadros <rogerq@kernel.org>
>  
>  properties:
>    compatible:
> diff --git a/Documentation/devicetree/bindings/usb/ti,j721e-usb.yaml b/Documentation/devicetree/bindings/usb/ti,j721e-usb.yaml
> index a634774c537c..eedde385d299 100644
> --- a/Documentation/devicetree/bindings/usb/ti,j721e-usb.yaml
> +++ b/Documentation/devicetree/bindings/usb/ti,j721e-usb.yaml
> @@ -7,7 +7,7 @@ $schema: "http://devicetree.org/meta-schemas/core.yaml#"
>  title: Bindings for the TI wrapper module for the Cadence USBSS-DRD controller
>  
>  maintainers:
> -  - Roger Quadros <rogerq@ti.com>
> +  - Roger Quadros <rogerq@kernel.org>
>  
>  properties:
>    compatible:
> diff --git a/Documentation/devicetree/bindings/usb/ti,keystone-dwc3.yaml b/Documentation/devicetree/bindings/usb/ti,keystone-dwc3.yaml
> index f6e91a5fd8fe..4f7a212fddd3 100644
> --- a/Documentation/devicetree/bindings/usb/ti,keystone-dwc3.yaml
> +++ b/Documentation/devicetree/bindings/usb/ti,keystone-dwc3.yaml
> @@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
>  title: TI Keystone Soc USB Controller
>  
>  maintainers:
> -  - Roger Quadros <rogerq@ti.com>
> +  - Roger Quadros <rogerq@kernel.org>
>  
>  properties:
>    compatible:

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
