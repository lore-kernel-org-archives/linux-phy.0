Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D30EC4332F
	for <linux-phy@archiver.kernel.org>; Thu, 10 Mar 2022 16:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kcQXmD6soGsfkc4YQXCpRmLs406d2+5FGbKAXYeyVyY=; b=Vero5CM71HLlm/
	oULG91L60eZIj6i5wNa6H4+A04DF/DCaD0x2YRos5nwmujyfVC0MUmu0f2MwoIAq61mqThBphBVq5
	ajj57nd0uPLnSTJ7qrnCQgadUn2NaJzmu3es5Li4dTDqhH5JNENGeaCCSszq6FofL5mOl+lIjytgZ
	/7+Of62ZDJFM4FyDX6Vo5NcBB7ojbmvRsGFju5zRhN32ZKLCrZNGXfFITOimyj6O/ODja5IDvsXPC
	PSmArkQpcfb3ecRUks9HPLCqjrJh31bvpT+TJBQ2hyRhqyAUFxNyPl+pjZ+Hi/wVvt7ic7jwnRr/+
	8TCYIe8/OLMu1gMtD2Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSLwz-00DYC3-SS; Thu, 10 Mar 2022 16:47:41 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSLww-00DYAk-Pd
 for linux-phy@lists.infradead.org; Thu, 10 Mar 2022 16:47:40 +0000
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 5757D3F321
 for <linux-phy@lists.infradead.org>; Thu, 10 Mar 2022 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1646930853;
 bh=wWVrqZ7JJTH8Su/93i9Vl44N0LYGxLioIabuzPNt6dY=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=uNnhX4M/uSXSVnvqFi7QxUrP1P5Cq/g4n1DgB2y6gAQ4R4anOmU6GWe9RvXiWoYpZ
 JN5X3DpHt/Is6KPzzK/Y8aw6oFLyH4nSZ+v1VOVDr23GQUFHBvTnpKbrRF79KUufIh
 jUDTqsK+45DbhKpiAM6U1ABtywvStSzrLzDGV7a3yxL5bQsKfdDFfGy0F+G2OSHm7s
 5eZ1q+oQRVwutX+OrhO5+7D5c0AWwrXzySPPT/IGxM0Wy+k109+efCprBvLRco69a+
 kyWvMq0rUIWhkMBZVUJyUqciKFsa3U1HTCA8smbh9XI8Qri9m8xcVURGpZg9D40Xvh
 WeGH/09YakycA==
Received: by mail-ed1-f72.google.com with SMTP id
 s7-20020a508dc7000000b0040f29ccd65aso3443015edh.1
 for <linux-phy@lists.infradead.org>; Thu, 10 Mar 2022 08:47:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=wWVrqZ7JJTH8Su/93i9Vl44N0LYGxLioIabuzPNt6dY=;
 b=PuFlA8aLAHcQ+xMFkkS1eppoqXL2XAD+UcODMXmwWkMHebS2124jHXHJV5ixKwpoK0
 NzEtqXfjbhEGCQwIqoyTx4+2iWFPpshTozlwK3JLQPVfq8BmDhem3po8bYhTUtuyHFP1
 CNCSz3MCVlcfnLDrSxkSJMvi2pC7QfAAcVMBo5O9t5ClYHhfhw0ZmEQ2sadA0NZcf/EU
 RYmP34Hf6u3285htQUBAclW5kcQfwEToY6h0J3+QT+WcrbsGmvQhTR7deXhpkGK14QTk
 ajA/v4jco6IGRWyAxh2oSe+JH9pg5W/XDvuVODec33EZDB/Sy7HuPeR8Ed4lfO2ZIukv
 tGYw==
X-Gm-Message-State: AOAM530auUSLpoP2P5aN3z96TSzCZj7CNlwZ6YSrwQ4TMdyNG6rWIesE
 Z6ToLRA2Jn2UPZprt6Eo12VHn4HdtWav6YT8a0SBw9Wq2AcJcamh/YTK6ZcZhrorYl8sx2WwZhA
 +wNuCln5hkJ5bWjdv6s/KfUXj5H0CHS9nRr+vxUVpzdI=
X-Received: by 2002:a05:6402:10d5:b0:408:f881:f0f3 with SMTP id
 p21-20020a05640210d500b00408f881f0f3mr5237480edu.112.1646930852925; 
 Thu, 10 Mar 2022 08:47:32 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy++BoKBanQlX8IjQPl/omh12eZim/u509rcL+dxdwZ+W/nPbDlkvNHYK/wHstkZtmfEY57IQ==
X-Received: by 2002:a05:6402:10d5:b0:408:f881:f0f3 with SMTP id
 p21-20020a05640210d500b00408f881f0f3mr5237455edu.112.1646930852690; 
 Thu, 10 Mar 2022 08:47:32 -0800 (PST)
Received: from [192.168.0.147] (xdsl-188-155-174-239.adslplus.ch.
 [188.155.174.239]) by smtp.gmail.com with ESMTPSA id
 y12-20020a50eb8c000000b00410f02e577esm2269227edr.7.2022.03.10.08.47.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Mar 2022 08:47:31 -0800 (PST)
Message-ID: <a32fa8df-bd07-8040-41cd-92484420756d@canonical.com>
Date: Thu, 10 Mar 2022 17:47:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH net-next v3 2/8] dt-bindings: phy: add the "fsl, lynx-28g"
 compatible
Content-Language: en-US
To: Ioana Ciornei <ioana.ciornei@nxp.com>, davem@davemloft.net,
 kuba@kernel.org, netdev@vger.kernel.org
Cc: kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org, leoyang.li@nxp.com,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux@armlinux.org.uk, shawnguo@kernel.org, hongxing.zhu@nxp.com
References: <20220310145200.3645763-1-ioana.ciornei@nxp.com>
 <20220310145200.3645763-3-ioana.ciornei@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220310145200.3645763-3-ioana.ciornei@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220310_084739_074451_6F71EB81 
X-CRM114-Status: GOOD (  18.90  )
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

On 10/03/2022 15:51, Ioana Ciornei wrote:
> Describe the "fsl,lynx-28g" compatible used by the Lynx 28G SerDes PHY
> driver on Layerscape based SoCs.

The message is a bit misleading, because it suggests you add only
compatible to existing bindings. Instead please look at the git log how
people usually describe it in subject and message.

> 
> Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
> ---
> Changes in v2:
> 	- none
> Changes in v3:
> 	- 2/8: fix 'make dt_binding_check' errors
> 
>  .../devicetree/bindings/phy/fsl,lynx-28g.yaml | 98 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  2 files changed, 99 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml b/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
> new file mode 100644
> index 000000000000..e98339ec83a7
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
> @@ -0,0 +1,98 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/fsl,lynx-28g.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale Lynx 28G SerDes PHY binding
> +
> +maintainers:
> +  - Ioana Ciornei <ioana.ciornei@nxp.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,lynx-28g
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 1
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#phy-cells"
> +  - "#address-cells"
> +  - "#size-cells"
> +
> +patternProperties:
> +  '^phy@[0-9a-f]$':
> +    type: object
> +    properties:
> +      reg:
> +        description:
> +          Number of the SerDes lane.
> +        minimum: 0
> +        maximum: 7
> +
> +      "#phy-cells":
> +        const: 0

Why do you need all these children? You just enumerated them, without
statuses, resources or any properties. This should be rather just index
of lynx-28g phy.

> +
> +    additionalProperties: false
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    soc {
> +      #address-cells = <2>;
> +      #size-cells = <2>;
> +      serdes_1: serdes_phy@1ea0000 {

node name just "phy"

> +        compatible = "fsl,lynx-28g";
> +        reg = <0x0 0x1ea0000 0x0 0x1e30>;
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        #phy-cells = <1>;
> +
> +        serdes1_lane_a: phy@0 {
> +          reg = <0>;
> +          #phy-cells = <0>;
> +        };



Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
