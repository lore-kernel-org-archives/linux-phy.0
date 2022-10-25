Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F8BFC38A2D
	for <linux-phy@archiver.kernel.org>; Tue, 25 Oct 2022 23:24:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YADxEf0LZ4h/olKXDR+jC/gz6owZm3tjI8bRk35Ovpc=; b=GW1vY84umHnf8N
	fJeJQlFBVDjerIbLuhnY0ITXjy+sJnSv/UOfViPlotDXearekCeeAMCrOlCgovw1XS1qLLNj80TGq
	99EjL3SVUxJs6V28+AN8dSZQid64d3wgjRpRFyMtGViPNrd+BViUHKKcIZpR1+pDmSneBa9fO1w57
	23o9ON5qDqmZyR4uVGPTzNS7VnHbVmEuPQGCErG2502S+KU6XqDTB/8CgPDWJNaouDPHCE+Jaakaw
	dOK1h4wVu69ifYYy7M0TUtUYaGfYkiqMUFkX7OjvMqx2z1vKB9wy42SYxD0zIao2ZnKODG0jClJiN
	gBnhPoOLnin2RIZcYkBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onTHp-007Yxz-DN; Tue, 25 Oct 2022 23:24:45 +0000
Received: from mail-oi1-f170.google.com ([209.85.167.170])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onTHn-007Ywg-1j
	for linux-phy@lists.infradead.org; Tue, 25 Oct 2022 23:24:44 +0000
Received: by mail-oi1-f170.google.com with SMTP id i7so3145008oif.4
        for <linux-phy@lists.infradead.org>; Tue, 25 Oct 2022 16:24:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nFoJ65FSeRoha1pQ1K6lL6hQjEH1NFBZHC7qdvsbi9k=;
        b=ef7+19efTVUOfZLT8ziofh+hNRS3lJ5UEXF2S5Ruta05lOkVgYVTEYtqQYOtdOS12x
         2yw9ThIA7Ov/v1VYso5HUmHWepzXeDaA+iF+AvOuJy+pX8Gi0HHRFwa5sE/XcOcNgsMo
         UXFmTT+Q6x+KfO3RqiGGEIdOX36ResurewCbATGCRppMbjYvLiXCBygfebittYwoqNqk
         X3e7dyew0fu2odDOfxtigagsbYdQfRoByeL1mzpLhAkBBjH9XBHt/7TL05Pdgw512SOc
         k7qU50rwt6AHcezjVInnNOWsI5dwfwY/DVt8tGaYn5iDhIzsqtQFDFlebYVRnqzG6daU
         +7/g==
X-Gm-Message-State: ACrzQf3IP1j4JzyYuNFrohpMKCY9T6EZTb10C9EXTN7NK3K/w/J9N32p
	G5kosXDoZn4X6cjwGIPTKQ==
X-Google-Smtp-Source: AMsMyM7mAJ5G1LaKL+vJ2m0VrWl3wbGGik1naUdUeZ6GBAnBrys0Zfp+2Jly//XkJ/OFRb3N0fhkFQ==
X-Received: by 2002:a05:6808:130f:b0:355:167f:c668 with SMTP id y15-20020a056808130f00b00355167fc668mr373366oiv.143.1666740279428;
        Tue, 25 Oct 2022 16:24:39 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id 63-20020a9d0345000000b006391adb6034sm1545527otv.72.2022.10.25.16.24.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Oct 2022 16:24:38 -0700 (PDT)
Received: (nullmailer pid 3438758 invoked by uid 1000);
	Tue, 25 Oct 2022 23:24:40 -0000
Date: Tue, 25 Oct 2022 18:24:40 -0500
From: Rob Herring <robh@kernel.org>
To: Wayne Chang <waynec@nvidia.com>
Cc: gregkh@linuxfoundation.org, krzysztof.kozlowski+dt@linaro.org, treding@nvidia.com, jonathanh@nvidia.com, thierry.reding@gmail.com, heikki.krogerus@linux.intel.com, ajayg@nvidia.com, kishon@ti.com, vkoul@kernel.org, p.zabel@pengutronix.de, balbi@kernel.org, mathias.nyman@intel.com, jckuo@nvidia.com, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, singhanc@nvidia.com, linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH 01/11] dt-bindings: usb: tegra-xudc: Add Tegra234 XUSB
 controller support
Message-ID: <20221025232440.GA3430479-robh@kernel.org>
References: <20221024074128.1113554-1-waynec@nvidia.com>
 <20221024074128.1113554-2-waynec@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221024074128.1113554-2-waynec@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221025_162443_114548_C4988A46 
X-CRM114-Status: GOOD (  15.58  )
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

On Mon, Oct 24, 2022 at 03:41:18PM +0800, Wayne Chang wrote:
> Extend the Tegra XUSB controller device tree binding with Tegra234
> support.
> 
> Signed-off-by: Wayne Chang <waynec@nvidia.com>
> ---
>  .../bindings/usb/nvidia,tegra-xudc.yaml       | 24 ++++++++++++-------
>  1 file changed, 16 insertions(+), 8 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/usb/nvidia,tegra-xudc.yaml b/Documentation/devicetree/bindings/usb/nvidia,tegra-xudc.yaml
> index fd6e7c81426e..517fb692f199 100644
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
> +      anyOf:
> +        - const: usb2-0
> +        - const: usb2-1
> +        - const: usb2-2
> +        - const: usb2-3
> +        - const: usb3-0
> +        - const: usb3-1
> +        - const: usb3-2
> +        - const: usb3-3

items:
  pattern: '^usb[23]-[0-3]$'

And an explanation why you need any random order. If it is just 
different for Tegra234, then you need an if/then schema for this.

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
