Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AC30C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 10 May 2022 18:13:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bkGzAZZ0eThJBK/ep/mF1kHyIYHZaF6A9uQdTmL/1jU=; b=GUVeZ3/+ApeSII
	cTlzKkbhpOPFdH/Ab5m73r6vANHlOxDNOe2/Q2Pgi+UMU2hRFXjtfiucKZZzAxHIdjulBDX3d62ZL
	OPaNuVgRWRFvqPi8R3rQS+Yf9DMm2GACQgVOub0jItJRDkCxrO6hGu9JmmKRkpK4zYlUzd0Fd2QHO
	IgNcseT12gi1gutL04WGR9+Pcth6Z+83Ck3wKnm/BwWswSKN+vCn3gA3gc8relqqP/DQ+e94wq6j+
	AiVxqoqPbfKL6BW4BUqBu3h6AlXyrQm8boRhF3g/xxNUbGxoVAJUF6QGndePQXlcNA2eWN007e+7z
	NyxIvGOUY4DenqeRmhWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1noUM1-003YGj-Lv; Tue, 10 May 2022 18:13:01 +0000
Received: from mail-oo1-f44.google.com ([209.85.161.44])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1noULq-003YDT-Q5; Tue, 10 May 2022 18:12:52 +0000
Received: by mail-oo1-f44.google.com with SMTP id
 q73-20020a4a334c000000b0035eb110dd0dso3526330ooq.10; 
 Tue, 10 May 2022 11:12:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=HmymxRR+ksr9VrQPHV790/Jh7jRadzKxsCWOza1c70w=;
 b=mFlXN8PNes059HuwY7iGRACJHQJPEoCd377awWRN0E+/5riDru9JqQ6JsovLyhPOyI
 pOCu8pmXaZ0twUiW/bqDi8K6Oh7Sh9vnxAntmqvjI6r8udYGUjdT0pfGpIF9s2bAXOFe
 8hMiAsxaMF6FNYUPVTcwSw7RzPqMx1OsUDt0q8wZl6bgf9ZjjC5aLrFGy+2i3oZVnsIs
 NnAkNLZYeX3YtHQuhv03gK0KvrFnILPFn7EVebfml+KYM81890gkn4qet5qOt/Trb1RY
 k7d6WMn4gu22R2zePjrRlm+1bMW/KVZKeTsdKrzuwIoELqvAnIJEoV15tF4CTXOTifCj
 i4eg==
X-Gm-Message-State: AOAM531YRcvz3hwhuUD/mMGm3NNeVj5wl5e5TnIbM1HIWMLKK5nA7RAU
 hqodCGQyMfwLsFonEXiOWw==
X-Google-Smtp-Source: ABdhPJxAzmwoJIZQQ8eXmfS+c3bMoePPmVC7M/trAZdarHcHlNBnbpOTvXUdIKQcdPb4hVHPegPFiw==
X-Received: by 2002:a9d:3b5:0:b0:603:f8ac:a780 with SMTP id
 f50-20020a9d03b5000000b00603f8aca780mr8170434otf.26.1652206366306; 
 Tue, 10 May 2022 11:12:46 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 p1-20020a0568301d4100b0060603221270sm5895979oth.64.2022.05.10.11.12.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 May 2022 11:12:45 -0700 (PDT)
Received: (nullmailer pid 2316486 invoked by uid 1000);
 Tue, 10 May 2022 18:12:45 -0000
Date: Tue, 10 May 2022 13:12:44 -0500
From: Rob Herring <robh@kernel.org>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Shawn Guo <shawnguo@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Alexander Stein <alexander.stein@ew.tq-group.com>, Marek Vasut <marex@denx.de>,
 patchwork-lst@pengutronix.de, Sandor Yu <Sandor.yu@nxp.com>,
 linux-phy@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Robert Foss <robert.foss@linaro.org>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH v0.5 1/9] dt-bindings: display: imx: add binding for
 i.MX8MP HDMI TX
Message-ID: <YnqrHDi6yBT/d9PK@robh.at.kernel.org>
References: <20220506181034.2001548-1-l.stach@pengutronix.de>
 <20220506181034.2001548-2-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220506181034.2001548-2-l.stach@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220510_111250_888042_BA223F5A 
X-CRM114-Status: GOOD (  16.26  )
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

On Fri, May 06, 2022 at 08:10:26PM +0200, Lucas Stach wrote:
> The HDMI TX controller on the i.MX8MP SoC is a Synopsys designware IP
> core with a little bit of SoC integration around it.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../bindings/display/imx/fsl,imx8mp-hdmi.yaml | 73 +++++++++++++++++++
>  1 file changed, 73 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml b/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml
> new file mode 100644
> index 000000000000..bd9a2b135176
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml
> @@ -0,0 +1,73 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/imx/fsl,imx8mp-hdmi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX8MP DWC HDMI TX Encoder
> +
> +maintainers:
> +  - Lucas Stach <l.stach@pengutronix.de>
> +
> +description: |
> +  The HDMI transmitter is a Synopsys DesignWare HDMI 2.0 TX controller IP.
> +
> +allOf:
> +  - $ref: ../bridge/synopsys,dw-hdmi.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx8mp-hdmi
> +
> +  reg:
> +    maxItems: 1
> +
> +  reg-io-width:
> +    const: 1
> +
> +  clocks:
> +    maxItems: 5
> +
> +  clock-names:
> +    items:
> +      - {}
> +      - {}
> +      - const: cec
> +      - const: pix
> +      - const: fdcc 
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  power-domains:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - interrupts
> +  - power-domains
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/clock/imx8mp-clock.h>
> +    #include <dt-bindings/power/imx8mp-power.h>
> +
> +    hdmi@32fd8000 {
> +        compatible = "fsl,imx8mp-hdmi";
> +        reg = <0x32fd8000 0x7eff>;
> +        interrupts = <0 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks = <&clk IMX8MP_CLK_HDMI_APB>,
> +                 <&clk IMX8MP_CLK_HDMI_REF_266M>,
> +                 <&clk IMX8MP_CLK_32K>,
> +                 <&hdmi_tx_phy>;
> +        clock-names = "iahb", "isfr", "cec", "pix";

The schema says there are 5 entries.

> +        power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_HDMI_TX>;
> +        reg-io-width = <1>;
> +    };
> -- 
> 2.30.2
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
