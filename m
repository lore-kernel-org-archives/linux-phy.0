Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BF31C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 10 May 2022 18:14:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8E9kwI57nKCv29qgYDWnFsoJ95irAnbDCN85XnFR8Qg=; b=ezyLoQwH0psHFi
	KanMPxhTbM+oIyjyF71zcNd84jKhUm3bctOfvnCHALTts23+fRrJxwAIm8sBN+KWy5vtfXEvhKGA7
	QOT4FZKuxULqqOssD2bRfx8Vhf3+pE3sZwgLX8Hv1NVTNAv0emPIAC18N+uAanJm44nfcN9Y+nQUK
	k7VcY8LiR/0qqwGjjO+/wagoDTCt3uoYUnyYgKoODPmqEAxM7gYuI5XcmAkAnMC7zDKGgJ1l1aIxt
	22qIj7CallxcLMIZI3m50pdhSy4nX8k11mCsUicI6oXmqVojl+SKXPGOVq3yhMbH2lUita4S36/M+
	thzSl2XvYqVxGBMRo2sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1noUNb-003Yv3-LL; Tue, 10 May 2022 18:14:39 +0000
Received: from mail-oo1-f47.google.com ([209.85.161.47])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1noUNH-003Yl0-Lj; Tue, 10 May 2022 18:14:21 +0000
Received: by mail-oo1-f47.google.com with SMTP id
 l9-20020a4abe09000000b0035eb3d4a2aeso3541498oop.0; 
 Tue, 10 May 2022 11:14:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=bqzP6kLC9TvD/eZVDvG+k9Cz3CtHjrwdnS/BDXCrozk=;
 b=tOG/hAwdJ+lYTyORLzOXDGynrIH8yySw3u9RnnP5ESp3Fz8B70suz6l5XvknUHjaWy
 FBTY0JVOtPT1NV3XYWoLhNKL7n/Wos6ljqRiB/iXE1OVSUibl2YYHPQP7nBliICZVpGl
 /00djxx/GmNvJqCx57ciMpqer/RtT3XP5myj9zvu+mgH3t6HDKUBS9YjkjhWvbyXpfno
 t20S1J3Dq/IhOSzQR1FS9I7T4M4CiRWAZd9VeY3P3AorqDSPcJfN/Uvf0u/JDL5eBzpa
 3XJQI2Tt9vaaTJMs/ErmCrGQsKgVB3cJmK7F1NjrVaVJxaGnNR8i0fi7lYvlH2TgGQkp
 ogng==
X-Gm-Message-State: AOAM531Khm2fYrfufkq8RJK1VWLZ3dEi/vaAGVa24iVyU70peZ86Qo/6
 IMFk3/Zrmke4CzobU+gfOQ==
X-Google-Smtp-Source: ABdhPJyfV9W5KcMMLkxExjfN4a6CpVE64vC6bZ6q+D3QKn6QIc1wk0xfg8j8ZGyynxcm2C2pKY+9IA==
X-Received: by 2002:a05:6830:3108:b0:606:581b:b7bb with SMTP id
 b8-20020a056830310800b00606581bb7bbmr8250687ots.270.1652206457584; 
 Tue, 10 May 2022 11:14:17 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 h23-20020a4adcd7000000b0035eb4e5a6b6sm27454oou.12.2022.05.10.11.14.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 May 2022 11:14:17 -0700 (PDT)
Received: (nullmailer pid 2319536 invoked by uid 1000);
 Tue, 10 May 2022 18:14:16 -0000
Date: Tue, 10 May 2022 13:14:16 -0500
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
Subject: Re: [PATCH v0.5 5/9] dt-bindings: phy: add binding for the i.MX8MP
 HDMI PHY
Message-ID: <YnqreMpQI317fq19@robh.at.kernel.org>
References: <20220506181034.2001548-1-l.stach@pengutronix.de>
 <20220506181034.2001548-6-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220506181034.2001548-6-l.stach@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220510_111419_775076_2B95E807 
X-CRM114-Status: GOOD (  16.71  )
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

On Fri, May 06, 2022 at 08:10:30PM +0200, Lucas Stach wrote:
> Add a DT binding for the HDMI PHY found on the i.MX8MP SoC.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../bindings/phy/fsl,imx8mp-hdmi-phy.yaml     | 62 +++++++++++++++++++
>  1 file changed, 62 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
> new file mode 100644
> index 000000000000..bc21c073e92a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
> @@ -0,0 +1,62 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/fsl,imx8mp-hdmi-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX8MP HDMI PHY binding
> +
> +maintainers:
> +  - Lucas Stach <l.stach@pengutronix.de>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx8mp-hdmi-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#clock-cells":
> +    const: 0
> +
> +  clocks:
> +    minItems: 2
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: apb
> +      - const: ref
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  power-domains:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#clock-cells"
> +  - clocks
> +  - clock-names
> +  - power-domains

#phy-cells should be required.

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8mp-clock.h>
> +    #include <dt-bindings/power/imx8mp-power.h>
> +
> +    phy@32fdff00 {
> +        compatible = "fsl,imx8mp-hdmi-phy";
> +        reg = <0x32fdff00 0x100>;
> +        clocks = <&clk IMX8MP_CLK_HDMI_APB>,
> +                 <&clk IMX8MP_CLK_HDMI_24M>;
> +        clock-names = "apb", "ref";
> +        power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_HDMI_TX_PHY>;
> +        #clock-cells = <0>;
> +        #phy-cells = <0>;
> +    };
> -- 
> 2.30.2
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
