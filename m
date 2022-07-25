Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F6C2C43334
	for <linux-phy@archiver.kernel.org>; Mon, 25 Jul 2022 22:18:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vLKTdBuA54wtHA6hIVCiL0xKqHY1RIraCntzS1pOXTE=; b=P64TAD13EdLSEV
	Umt3nFv2Mnyxn1Bcs4eyACGPbq8qS+9/dvzFYw5KUNFYrnejq6Q/pC3Ws06ikf9Za5FSgFEGQmNC7
	G4Xc8K+W8JlPVzCAV2qlN21dAWLPLLnSuQNuPlVKtk1kF7sKKR9qfMosoOYchNIePxoCbXycBVvi0
	s5kyRTdKGD7LVKSqaNPcx8embnCdvNVsZ9lPj6R4q0DF3b6WVTbhchYpk3c7CEIAhH8tbteOX3GjG
	FdxqN3Tso+Dp+ORilBLXe+YIeA5ZAB8lg+LFmcREQEUNW+dmjkDuq0G8gVR+8g4hOtLoQy97xR+M+
	heHGmNTbTk1LiQl+7i+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oG6Op-0037w2-8k; Mon, 25 Jul 2022 22:18:03 +0000
Received: from mail-oa1-f42.google.com ([209.85.160.42])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oG6Ol-0037uc-2Z
	for linux-phy@lists.infradead.org; Mon, 25 Jul 2022 22:18:01 +0000
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-10cf9f5b500so16575972fac.2
        for <linux-phy@lists.infradead.org>; Mon, 25 Jul 2022 15:17:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=2rrcb9f4QNI+rrP3iu4IqG0Ip38ZT7x7ewT7RQRw2sw=;
        b=8JisgzS6ZrWWKfCo76z87PvWLB3Ni5eoH1ziPobpL0RshsQf8fsvacdA3R3hn1raPI
         ohiHVe6ahsZTlCRGbkIaHC7VYmcXIEuBFXh8eJg3oaqLfuuq3J4UTAK4pbvhbw/2i3QI
         vDPO+RqNkwtUCzrfpzxRdByTvexMInsANHm3atUq2D2QEGFmv/zjXsAr0u2Si70aZvGT
         wNZe+yz0WGyRJ7ra9gaUPNiupIYg7OmGPvWhhPy3dBCI6WRXq1M8+RDqWt88HWtriB+P
         Kgcvw1j/wBlbrJ1dJCbf7o0tPHp/kTuPH3IARJKYEmeuMHCJTYlw9Xlb8+PDo5M6+rWH
         Yi/Q==
X-Gm-Message-State: AJIora9M1MNL3KVVhQsQnpBJvc3DusK16aIzjOJ4aTlZfem4M9loa9Hb
	tdPOMsr9KNY8muSQrzocxw==
X-Google-Smtp-Source: AGRyM1sIYz6SRC/uSCi6BXyC9JlXtZ08PZ4e/NVxwwPHpjKRIYFBs1sh4Y3MOfnSzgKwaSVVWkHu2w==
X-Received: by 2002:a05:6870:5809:b0:101:ce10:b267 with SMTP id r9-20020a056870580900b00101ce10b267mr15416392oap.83.1658787477036;
        Mon, 25 Jul 2022 15:17:57 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id k1-20020a544401000000b0033aef871695sm793944oiw.16.2022.07.25.15.17.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jul 2022 15:17:55 -0700 (PDT)
Received: (nullmailer pid 2841630 invoked by uid 1000);
	Mon, 25 Jul 2022 22:17:53 -0000
Date: Mon, 25 Jul 2022 16:17:53 -0600
From: Rob Herring <robh@kernel.org>
To: Wangseok Lee <wangseok.lee@samsung.com>
Cc: "krzk+dt@kernel.org" <krzk+dt@kernel.org>, "kishon@ti.com" <kishon@ti.com>, "vkoul@kernel.org" <vkoul@kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "jesper.nilsson@axis.com" <jesper.nilsson@axis.com>, "lars.persson@axis.com" <lars.persson@axis.com>, "bhelgaas@google.com" <bhelgaas@google.com>, "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>, "kw@linux.com" <kw@linux.com>, "linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>, "kernel@axis.com" <kernel@axis.com>, Moon-Ki Jun <moonki.jun@samsung.com>, Sang Min Kim <hypmean.kim@samsung.com>, Dongjin Yang <dj76.yang@samsung.com>, Yeeun Kim <yeeun119.kim@samsung.com>
Subject: Re: [PATCH v4 2/5] dt-bindings: phy: Add ARTPEC-8 PCIe phy
Message-ID: <20220725221753.GA2838092-robh@kernel.org>
References: <20220720055108epcms2p563c65b3de6333ccbc68386aa2471a800@epcms2p5>
 <CGME20220720055108epcms2p563c65b3de6333ccbc68386aa2471a800@epcms2p6>
 <20220720055716epcms2p60e80b1089dca0f83a894262bce676858@epcms2p6>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220720055716epcms2p60e80b1089dca0f83a894262bce676858@epcms2p6>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220725_151759_185642_F3A9426F 
X-CRM114-Status: GOOD (  18.24  )
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

On Wed, Jul 20, 2022 at 02:57:16PM +0900, Wangseok Lee wrote:
> Add description to support Axis, ARTPEC-8 SoC. ARTPEC-8 is the SoC platform
> of Axis Communications and PCIe PHY is designed based on Samsung PHY.
> 
> Signed-off-by: Wangseok Lee <wangseok.lee@samsung.com>
> ---
> v3->v4 :
> -Add "fsys-sysreg" to properties
> -Modify the "lcpll-ref-clk" and "clocks" in properties
>  "lcpll-ref-clk" is custom properties, so add 'vendor', type(enum),
>  description
>  Add the maxItem in clocks, add clock-names in properties
> 
> v2->v3 :
> -Modify version history to fit the linux commit rule
> -Remove 'Device Tree Bindings' on title
> -Remove clock-names entries
> -Change node name to soc from artpec8 on excamples
> 
> v1->v2 :
> -'make dt_binding_check' result improvement
> -Add the missing property list
> -Align the indentation of continued lines/entries
> ---
>  .../bindings/phy/axis,artpec8-pcie-phy.yaml        | 85 ++++++++++++++++++++++
>  1 file changed, 85 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/axis,artpec8-pcie-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/axis,artpec8-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/axis,artpec8-pcie-phy.yaml
> new file mode 100644
> index 0000000..9db39ef
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/axis,artpec8-pcie-phy.yaml
> @@ -0,0 +1,85 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/axis,artpec8-pcie-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ARTPEC-8 SoC PCIe PHY
> +
> +maintainers:
> +  - Jesper Nilsson <jesper.nilsson@axis.com>
> +
> +properties:
> +  compatible:
> +    const: axis,artpec8-pcie-phy
> +
> +  reg:
> +    items:
> +      - description: PHY registers.
> +      - description: PHY coding sublayer registers.
> +
> +  reg-names:
> +    items:
> +      - const: phy
> +      - const: pcs
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: ref
> +
> +  samsung,fsys-sysreg:
> +    description:
> +      Phandle to system register of fsys block.
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +
> +  num-lanes:
> +    const: 2

Why do you need num-lanes if 2 is the only possible value?

Rob


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
