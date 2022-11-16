Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33AFFC433FE
	for <linux-phy@archiver.kernel.org>; Wed, 16 Nov 2022 21:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a6nYFyDGjXtl+d2CnvLftyyMVNXSlxgl4Krw4PlLMS4=; b=tpX1EuPgRSSohO
	bYRD3QO9MnzA1fl9TJqRFJ2TVH2aug+CYBVuqGwk7/suQzZ5cg9Iy+yIwhRpR7kGZhZ/B9zd+aO37
	2MWeAJ4ThX7iSrhFH/mgHpiVlD8M9F2/sZi5Em2rKzTBYUv6sZPLfvOuZoKKAZvr4ooHqDOyGw2ZG
	tJP7BDtLsqa+J4pMRrfUQJ6D78iL1lgF+G5zXbYq8b4dXQBbRTgXEkkXOkreGVFYM0YJXG0ce5XVy
	RprV15+eJ4gm+Vj6BRA7620PPAlrjJKNYuk00uhoMmaSeBjY1M6Y45cqekJ8k4I+cPyLg4HMikqta
	FXWgc9K/d9ibouMEaPEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovPaj-0082iY-IA; Wed, 16 Nov 2022 21:05:05 +0000
Received: from mail-ot1-f54.google.com ([209.85.210.54])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovPah-0082hJ-64
	for linux-phy@lists.infradead.org; Wed, 16 Nov 2022 21:05:04 +0000
Received: by mail-ot1-f54.google.com with SMTP id g51-20020a9d12b6000000b0066dbea0d203so1191639otg.6
        for <linux-phy@lists.infradead.org>; Wed, 16 Nov 2022 13:05:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RPb+hxEbevRL4EpwGZMxw2145qAIDik/fJZXBGeTjRQ=;
        b=bgM/avKTyzeFOwe0BH0geftY2AHAMJJbniubjwP8vUWducYiaN2Eyy8BoXOGCqUFpG
         9TjzSzyfRBk/bZe6hrrUTvHl5vATAn4O7qbHQhJbHq67zifhqr60/lTT8Vv7G+A5IU8j
         KvowqurETcakuyzeK0gucU7SNcoUzKmsFpxiRGJqyYGdkdudaeNBIjhjfWOQq1K1M+OF
         g2P2jbIZ9eWFQ5K/KaYYMZjHBpLgRiR8EwUoEwWD9Cp2cQsBzgdeTQPTvaex9CbnKGA+
         Hdr+YG4WOrrA5qgome/6ASTpEszYKfOSbPmY0JNi/3+wf8pcphEVfIx5b92gFEVELeR5
         47Jg==
X-Gm-Message-State: ANoB5pmpsaA18ZEfVC/o3A/fbNiUX9gB+HXe6clvtQdXReFg9w1YolLL
	nPrIIWDJlgKuvO9jzYXGrZ48bd0KZA==
X-Google-Smtp-Source: AA0mqf71d/wGKKxQlFEfSQxfiLFxHauKFXXJRWt4PDDX7gax2bvQbIjxEflrHDuY7Vb/+ZE8LPPSeg==
X-Received: by 2002:a9d:6d89:0:b0:66c:6f0c:d278 with SMTP id x9-20020a9d6d89000000b0066c6f0cd278mr12122160otp.375.1668632700314;
        Wed, 16 Nov 2022 13:05:00 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id l17-20020a05683016d100b006393ea22c1csm7026075otr.16.2022.11.16.13.04.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 13:04:59 -0800 (PST)
Received: (nullmailer pid 884378 invoked by uid 1000);
	Wed, 16 Nov 2022 21:05:01 -0000
Date: Wed, 16 Nov 2022 15:05:01 -0600
From: Rob Herring <robh@kernel.org>
To: Wayne Chang <waynec@nvidia.com>
Cc: gregkh@linuxfoundation.org, krzysztof.kozlowski+dt@linaro.org, treding@nvidia.com, jonathanh@nvidia.com, thierry.reding@gmail.com, heikki.krogerus@linux.intel.com, ajayg@nvidia.com, vkoul@kernel.org, p.zabel@pengutronix.de, balbi@kernel.org, mathias.nyman@intel.com, jckuo@nvidia.com, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, singhanc@nvidia.com, linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH v3 01/13] dt-bindings: usb: tegra-xudc: Add Tegra234 XUSB
 controller support
Message-ID: <20221116210501.GA877429-robh@kernel.org>
References: <20221114124053.1873316-1-waynec@nvidia.com>
 <20221114124053.1873316-2-waynec@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221114124053.1873316-2-waynec@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_130503_245040_AD258EAB 
X-CRM114-Status: GOOD (  16.07  )
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

On Mon, Nov 14, 2022 at 08:40:41PM +0800, Wayne Chang wrote:
> Extend the Tegra XUSB controller device tree binding with Tegra234
> support.

Why do you need any order and number of phys? Please explain in the 
commit msg.

> 
> Signed-off-by: Wayne Chang <waynec@nvidia.com>
> ---
> V2 -> V3:nothing has changed
> V1 -> V2:address the issue on phy-names property
>  .../bindings/usb/nvidia,tegra-xudc.yaml       | 24 ++++++++++++-------
>  1 file changed, 16 insertions(+), 8 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/usb/nvidia,tegra-xudc.yaml b/Documentation/devicetree/bindings/usb/nvidia,tegra-xudc.yaml
> index fd6e7c81426e..52488a731c4e 100644
> --- a/Documentation/devicetree/bindings/usb/nvidia,tegra-xudc.yaml
> +++ b/Documentation/devicetree/bindings/usb/nvidia,tegra-xudc.yaml
> @@ -22,6 +22,7 @@ properties:
>            - nvidia,tegra210-xudc # For Tegra210
>            - nvidia,tegra186-xudc # For Tegra186
>            - nvidia,tegra194-xudc # For Tegra194
> +          - nvidia,tegra234-xudc # For Tegra234
>  
>    reg:
>      minItems: 2
> @@ -90,21 +91,27 @@ properties:
>  
>    phys:
>      minItems: 1
> +    maxItems: 8
>      description:
>        Must contain an entry for each entry in phy-names.
>        See ../phy/phy-bindings.txt for details.
>  
>    phy-names:
>      minItems: 1
> +    maxItems: 8
>      items:
> -      - const: usb2-0
> -      - const: usb2-1
> -      - const: usb2-2
> -      - const: usb2-3
> -      - const: usb3-0
> -      - const: usb3-1
> -      - const: usb3-2
> -      - const: usb3-3
> +      enum:
> +        - usb2-0
> +        - usb2-1
> +        - usb2-2
> +        - usb2-3
> +        - usb3-0
> +        - usb3-1
> +        - usb3-2
> +        - usb3-3
> +
> +  dma-coherent:
> +    type: boolean
>  
>    avddio-usb-supply:
>      description: PCIe/USB3 analog logic power supply. Must supply 1.05 V.
> @@ -153,6 +160,7 @@ allOf:
>              enum:
>                - nvidia,tegra186-xudc
>                - nvidia,tegra194-xudc
> +              - nvidia,tegra234-xudc
>      then:
>        properties:
>          reg:
> -- 
> 2.25.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
