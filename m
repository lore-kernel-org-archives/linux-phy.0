Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85C0FC77B6F
	for <linux-phy@archiver.kernel.org>; Fri, 14 Apr 2023 01:51:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DuZ+Oi48PO552iM8WTptZuGkyTGO8LlXTuRNukLORzA=; b=H81g0mAeyTZl+Q
	s8Ook6mINp4F6OyqyZqycXOdnt6MPFGUCuaMWO1vo7WflMWCUF8LZ5QNBImcxM6eEV8odU/H6CQpl
	g6KetsaI522f0WYtjdd5xOo5cHWq6nWXLM8Kq6q/1Vgzrcmbw8XJVasO8Tv11AC2H67ni/alpy5eN
	aV9UnljCxl/YYLW1JlG4zfNn1wZW4OZ49g0qFEpRZW6ULFR2xOJ6/7A5gfANrnw2sSgnwVt5AzGnc
	EupCIoNZ/5T9/C+4xc5xkchadYPbF1i19yAIuuhLxf101bwHR17Qj9s8pBp1zWkkk7oGl8dYaIyAH
	P4+hGvt91dSRDOjDWxgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pn8bG-00844b-2x;
	Fri, 14 Apr 2023 01:51:42 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pn8bD-00843m-1D;
	Fri, 14 Apr 2023 01:51:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id AB12E63DED;
	Fri, 14 Apr 2023 01:51:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F389AC433EF;
	Fri, 14 Apr 2023 01:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681437097;
	bh=gLDWYLDDhntT7dquLuIpW7PMEAgkvCXTIyzwrqznejE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ZQ7IAWg77gcZjC3M9ConoEp2KwEyANJbR8QqqdS6b+WKyWDHcc9FE491QH/O8dkwk
	 KnxXU8L6P2EO/t/xL7SkRsqgmqQDhgEDVdCtlV5IZ/iQlxguTCbmg0uKm/sAXU5ywj
	 JG7Pzl3ksFU5tyOsYIDYBwKsAL2rGaXunE3CMjwWag6QejhF6cFQ6CuVa2+nOokk8g
	 BxA9uWlK8Ef8w4f9mNZvoo4wDRJxfCSyueUcbWduddxINCG0e+QZoiBzbE5dp5Wx+c
	 75xn5lKXrwt5vMgZIZaA3Ph0z2RLoycooKVXfWxDBSbnEw3TLypxYqSAQYS+DGLjxH
	 qQHK9EetDh03w==
Message-ID: <59c363bc-9e98-e7a2-1da4-92e41daef34f@kernel.org>
Date: Fri, 14 Apr 2023 10:51:34 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCHv1 2/5] dt-bindings: ata: ahci: add RK3588 AHCI controller
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Serge Semin <fancer.lancer@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-ide@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20230413182345.92557-1-sebastian.reichel@collabora.com>
 <20230413182345.92557-3-sebastian.reichel@collabora.com>
Content-Language: en-US
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20230413182345.92557-3-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_185139_494342_E134EA74 
X-CRM114-Status: GOOD (  16.08  )
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

On 4/14/23 03:23, Sebastian Reichel wrote:
> Just like RK3568, the RK3588 has a DWC based AHCI controller.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
> FWIW IDK what exactly the ASIC clock is. The TRM does not provide any
> details unfortunately. It is required for functional SATA, though.
> ---
>  .../devicetree/bindings/ata/snps,dwc-ahci-common.yaml       | 6 ++++--
>  Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml    | 6 ++++--
>  2 files changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml b/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml
> index c1457910520b..0df8f49431eb 100644
> --- a/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml
> +++ b/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml
> @@ -31,11 +31,11 @@ properties:
>        PM-alive clock, RxOOB detection clock, embedded PHYs reference (Rx/Tx)
>        clock, etc.
>      minItems: 1
> -    maxItems: 4
> +    maxItems: 5
>  
>    clock-names:
>      minItems: 1
> -    maxItems: 4
> +    maxItems: 5
>      items:
>        oneOf:
>          - description: Application APB/AHB/AXI BIU clock
> @@ -50,6 +50,8 @@ properties:
>            const: rxoob
>          - description: SATA Ports reference clock
>            const: ref
> +        - description: Rockchip ASIC clock

Shouldn't this mention that this clock is for the 3588 only ? Or is it also
necessary for the 3568 ? That is not super clear.

> +          const: asic
>  
>    resets:
>      description:
> diff --git a/Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml b/Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml
> index 5afa4b57ce20..c6a0d6c8b62c 100644
> --- a/Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml
> +++ b/Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml
> @@ -23,9 +23,11 @@ properties:
>          const: snps,dwc-ahci
>        - description: SPEAr1340 AHCI SATA device
>          const: snps,spear-ahci
> -      - description: Rockhip RK3568 AHCI controller
> +      - description: Rockhip AHCI controller
>          items:
> -          - const: rockchip,rk3568-dwc-ahci
> +          - enum:
> +              - rockchip,rk3568-dwc-ahci
> +              - rockchip,rk3588-dwc-ahci
>            - const: snps,dwc-ahci
>  
>  patternProperties:


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
