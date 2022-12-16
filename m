Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0ECEC4332F
	for <linux-phy@archiver.kernel.org>; Fri, 16 Dec 2022 23:43:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z7nenJuQDsPdfKOAw+11ykTUpXoSESWmvsqR8ts84e0=; b=RHRZZgVphZN8kn
	ehWDRTeUuKI/P8G+eyk+kgpBP52YOxHxlLE+Fq5CBoWzYh6rTit4POVtu3Q7HQ5Cx3wnO89TK1PCM
	QjY3v7oycD8d718rr+YBDllOCpxn9RL4pK85YE5yrU7zowlqDjk9dGjIdsY9mDzqbnjraY0TD9U7z
	VOYY0tybiXlRE2ubnv07/KsNEdtRTBSlrNvlfOV5CwQNvj1MvzoqFn874Fj3XGsYDxUrB9/UbTCCF
	TtxgFhb0UMts1BWoye99osQGPcPj4TzeJc7eaJi3v1y5qCF7R9sKBalh7fTm7jLncJgVA2AngxNwE
	oaU3Pku0aWr+DZXs+ATA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6KMV-002kQY-6E; Fri, 16 Dec 2022 23:43:31 +0000
Received: from mail-oa1-f48.google.com ([209.85.160.48])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6KLO-002jdg-Uw
	for linux-phy@lists.infradead.org; Fri, 16 Dec 2022 23:42:24 +0000
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-144b21f5e5fso5095673fac.12
        for <linux-phy@lists.infradead.org>; Fri, 16 Dec 2022 15:42:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QfSl+FX9JTy+jdpFFR1D1kGG2K/ycBgrvJ9W+hYCCRs=;
        b=o/EmpqZ/DZqYVUVp2XXkHrq7QvDvrBzNpYo7oNQOSkewSAYYEX1wXhyKGWUGtSb9TW
         kET4gTRNQW5p/q+FGRbWAsBFgc9WkMiaa30dGVz10t+HX+YJ9zZyh3kq6QiSpWfyMzrM
         NNF/9+i0sesiXvuoAgj3QQF9jbK63oGIR0m0xw10Y4dTAQWaSy2al5uwvb0Ww8RWvjne
         gugKGphxVK1NK3S3wLsKhVcUUYQT7VKb/O9SmVuVSAp5VVuHC5zkGRTc6SLqSOyJCU49
         sONtPhzflPuZI32vdm3Vovr6icRxf2QXgMVjC5BpvTUI8IV9+hZGwLOOIIbCg+HBaE8b
         M00g==
X-Gm-Message-State: ANoB5pnQg1ZpRxYLBrnOXTeQsw59XjsCdNOKaBM8u1xLpZaxROp1RVgT
	zkP50e3PE2hkMNDn6ixZH61deH4rBg==
X-Google-Smtp-Source: AA0mqf5MYBGCni7xQDRAsLZ2V/eXQh5hzxi51tza1LPWdei/oEGQT80Vdt1JMaxgf+O6639iY/fivg==
X-Received: by 2002:a05:6870:9d83:b0:144:7061:112 with SMTP id pv3-20020a0568709d8300b0014470610112mr18616683oab.15.1671234141537;
        Fri, 16 Dec 2022 15:42:21 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id r43-20020a05687108ab00b001428eb454e9sm1603705oaq.13.2022.12.16.15.42.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Dec 2022 15:42:21 -0800 (PST)
Received: (nullmailer pid 88182 invoked by uid 1000);
	Fri, 16 Dec 2022 23:42:20 -0000
Date: Fri, 16 Dec 2022 17:42:20 -0600
From: Rob Herring <robh@kernel.org>
To: Eugen Hristev <eugen.hristev@microchip.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, luis.oliveira@synopsys.com
Subject: Re: [PATCH v5 2/4] dt-bindings: phy: Document the Synopsys MIPI DPHY
 Rx bindings
Message-ID: <20221216234220.GB80712-robh@kernel.org>
References: <20221216143717.1002015-1-eugen.hristev@microchip.com>
 <20221216143717.1002015-3-eugen.hristev@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221216143717.1002015-3-eugen.hristev@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221216_154223_101455_FFE15843 
X-CRM114-Status: GOOD (  18.16  )
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

On Fri, Dec 16, 2022 at 04:37:15PM +0200, Eugen Hristev wrote:
> From: Luis Oliveira <Luis.Oliveira@synopsys.com>
> 
> Add device-tree bindings documentation for SNPS DesignWare MIPI D-PHY in
> RX mode.
> 
> Signed-off-by: Luis Oliveira <luis.oliveira@synopsys.com>
> ---
>  .../bindings/phy/snps,dw-dphy-rx.txt          | 29 +++++++++++++++++++
>  1 file changed, 29 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/snps,dw-dphy-rx.txt
> 
> diff --git a/Documentation/devicetree/bindings/phy/snps,dw-dphy-rx.txt b/Documentation/devicetree/bindings/phy/snps,dw-dphy-rx.txt
> new file mode 100644
> index 000000000000..ffb64fe5cbd1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/snps,dw-dphy-rx.txt
> @@ -0,0 +1,29 @@
> +Synopsys DesignWare MIPI Rx D-PHY block details
> +
> +Description
> +-----------
> +
> +The Synopsys MIPI D-PHY controller supports MIPI-DPHY in receiver mode.
> +Please refer to phy-bindings.txt for more information.
> +
> +Required properties:
> +- compatible		: Shall be "snps,dw-dphy-rx".
> +- #phy-cells		: Must be 1.

There is more than 1 lane/phy for a single instance?

> +- bus-width		: Size of the test interface data bus (8 bits->8 or
> +			  12bits->12).

Do we need a test interface upstream?

If so, needs a vendor prefix.

> +- snps,dphy-frequency	: Frequency at which D-PHY should start, configurable.
> +			  Check Synopsys databook. (-kHz)

Is this frequency of the link? We have properties for that. Or this 
should somehow be using the clock binding.

And anything with units should have a unit suffix as defined in 
property-units.yaml.

> +- reg			: Test interface register. This correspondes to the
> +			  physical base address of the controller and size of
> +			  the device memory mapped registers; Check Synopsys
> +			  databook.
> +
> +Example:
> +
> +	mipi_dphy_rx1: dphy@d00003040 {
> +		compatible = "snps,dw-dphy-rx";
> +		#phy-cells = <1>;
> +		bus-width = <12>;
> +		snps,dphy-frequency = <300000>;
> +		reg = <0xd0003040 0x20>;
> +	};
> -- 
> 2.25.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
