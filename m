Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C64EC28D13
	for <linux-phy@archiver.kernel.org>; Mon, 22 Aug 2022 18:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YjxSeACpcYzy1zhjbMg6C//wD3z6uIEimg7KuDhJYK8=; b=CIhLGIlKlOMpaV
	p+RU9SIYKFDHy5ZliiaBdVmJh3ieQb798ZJwtDEj85Rb94IeFYhV///4NHPflW/Ub0XWxF7nEWRxM
	YiitW8a4ZUToGyprI2Ex+kSVjhc9wtDGqsaJooItB01yClq8Sb+yUbNVjytfAYHohdX4ho2W9ORsc
	fXFHmtYKB5w/4VVqw9faBMR01uUoEg5N5E+G9CYJAwwTNVFaJAH5nfS3bSnfqK8j3HbGZofEm3M4M
	E1Na5599CAQIWI1pgUtc/Bzjcfzqwn8qlcXQCENog8DEXeB9BBgHcP9i9fg9peucUKwiqWC/Bjsd2
	K2vvWU1otcDeH5/mzvKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQBpZ-00DNwA-Cw; Mon, 22 Aug 2022 18:07:21 +0000
Received: from mail-oa1-f42.google.com ([209.85.160.42])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQBpW-00DNsO-M1; Mon, 22 Aug 2022 18:07:20 +0000
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-11d7a859b3aso2623319fac.4;
        Mon, 22 Aug 2022 11:07:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=4st3FM1bb6ia+hAlavpEGAbxXV7xofi5zmV7yc9Sy/E=;
        b=E1rnXzUPbouORhWwf/oInclyY2E4gWggv7upH8Ap2rIJsLeGVfvFWO12w7Il2m9jUa
         g+7pf/OxYg16cYlWT39my0ylBJ7/giWpDC6T3yIsM/AvbujYzmXSINids5SMmBWkOWJ2
         6oX5RCyTTnn+6TWsM2jJYCJv9CIf2yUpJdWBYakr+NuWp2KPomN8Mg65ZcGAFXJTfeRu
         cXJMQrhA57xNJyn/d9F+X4Tkc+kcjMZ/GPzuTQd3x+8kMvlWodpbmyM3GwejqvGvB8YL
         20fXt2+OpkCh/a3c1xxmkWg3SmWWbLH9VH77hRZ5XdlPchCsASHl8qbogR5dp7RKZsFN
         Fd3g==
X-Gm-Message-State: ACgBeo0T6QPaxR+ZievA1AWJDsxL6S2rOnr+Pd0RCDGFp+mFTk60JVyk
	HUNkOCEY9D444ktdYRYWZA==
X-Google-Smtp-Source: AA6agR7XnzRL6Jn/3yMP/dI6TmfBLdDYyqWeS2JSRz9HOciSHoo08QZzFiSxHw3wKjI+/ntOSIyv3A==
X-Received: by 2002:a05:6870:41c6:b0:11c:6053:2fed with SMTP id z6-20020a05687041c600b0011c60532fedmr9777964oac.114.1661191634964;
        Mon, 22 Aug 2022 11:07:14 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id p39-20020a05687056a700b0010d5d5c3fc3sm3104887oao.8.2022.08.22.11.07.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 11:07:14 -0700 (PDT)
Received: (nullmailer pid 80167 invoked by uid 1000);
	Mon, 22 Aug 2022 18:07:13 -0000
Date: Mon, 22 Aug 2022 13:07:13 -0500
From: Rob Herring <robh@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: p.zabel@pengutronix.de, l.stach@pengutronix.de, bhelgaas@google.com, lorenzo.pieralisi@arm.com, shawnguo@kernel.org, vkoul@kernel.org, alexander.stein@ew.tq-group.com, marex@denx.de, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@pengutronix.de, linux-imx@nxp.com
Subject: Re: [PATCH v3 2/6] dt-binding: phy: Add iMX8MP PCIe PHY binding
Message-ID: <20220822180713.GA75195-robh@kernel.org>
References: <1660806153-29001-1-git-send-email-hongxing.zhu@nxp.com>
 <1660806153-29001-3-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1660806153-29001-3-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220822_110718_811393_C2F27F1B 
X-CRM114-Status: GOOD (  15.17  )
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

On Thu, Aug 18, 2022 at 03:02:29PM +0800, Richard Zhu wrote:
> Add i.MX8MP PCIe PHY binding.

Explain the differences in h/w. The phy is connected to PERST#?

> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
>  .../bindings/phy/fsl,imx8-pcie-phy.yaml          | 16 +++++++++++++---
>  1 file changed, 13 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
> index b6421eedece3..692783c7fd69 100644
> --- a/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
> @@ -16,6 +16,7 @@ properties:
>    compatible:
>      enum:
>        - fsl,imx8mm-pcie-phy
> +      - fsl,imx8mp-pcie-phy
>  
>    reg:
>      maxItems: 1
> @@ -28,11 +29,16 @@ properties:
>        - const: ref
>  
>    resets:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2
>  
>    reset-names:
> -    items:
> -      - const: pciephy
> +    oneOf:
> +      - items:          # for iMX8MM
> +          - const: pciephy
> +      - items:          # for IMX8MP
> +          - const: pciephy
> +          - const: perst

This does the same thing:

minItems: 1
items:
  - const: pciephy
  - const: perst


>  
>    fsl,refclk-pad-mode:
>      description: |
> @@ -60,6 +66,10 @@ properties:
>      description: A boolean property indicating the CLKREQ# signal is
>        not supported in the board design (optional)
>  
> +  power-domains:
> +    description: PCIe PHY  power domain (optional).
> +    maxItems: 1
> +
>  required:
>    - "#phy-cells"
>    - compatible
> -- 
> 2.25.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
