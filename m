Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8FDDEB64D8
	for <linux-phy@archiver.kernel.org>; Fri, 16 Jun 2023 09:31:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cftQ26fDNOIVLSwlwcEgoQH6XVepiGx4aVjRvg2v1hs=; b=FT7xzRGlDs6czI
	mt1nb/XwFLS4gu+Rg3GYwnY9xplz4mbr1eiYO3uhBcgJ7ZvQ7DFu5mIDPo/scYYlrd40pO0ISUMlu
	T0j/0Ipk+pMavDy1yL3gfvjIjPQts8yuknD/H8VSTPKKXjkNbl9CwKFMi15SaORN2HY2vO28WCaML
	xrY2teTQQKK+fpGNbdxnOO2RwdQgOOW2Dr95m3XIXDLccN9AdSeJ5kK+vhY0MTTTgmHklTMjnGkf+
	EaXBLOKO4ASlVMQ6xIq9Mx9CU7QBSbsJqeGK2iKSE1sdTIqVvYqW2Wj6lAM3T0WS9DlhqtsS+BSR/
	AgB855gtT1bfFJSQg04Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qA5oA-00HT6p-1l;
	Fri, 16 Jun 2023 09:31:54 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qA5o3-00HT2u-0m;
	Fri, 16 Jun 2023 09:31:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686907907; x=1718443907;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=pMlSGOdl8IvS4LImlgrl3MIkfMf7pCHaKnwUSkpFQ1o=;
  b=Ucx9RZNsmD3Rl+YRm4tesuCUnyA4blWYjogWt2mLCliH8wbZe8HbGAnB
   U4aFixU0UnRw7+PRqhRiJYX3lO141UKkXPQ7tQXUlX/4OzW0azwtG6S9o
   AHehv30VsHSw1rbMNL5qBt0dwRJKOLk0XN9YxUVFbkHgPOMqtIhQdn135
   qF1zWPaMHYMkhk1G6wAFPl66uCIvLI2+XVq3Xw5uya/42BhoWsXe+ZlNF
   bKiR9fl1F49fbn02KYhgesw4w00mw1sNwY5zB99bWCWOeyUnL7U1+tl9H
   UtsmrLL/61wmrV3mc1RP8fC5YfJAmcg/EHYqohnJBGz64RnIYcx8+LUKH
   A==;
X-IronPort-AV: E=Sophos;i="6.00,247,1681164000"; 
   d="scan'208";a="31462623"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 Jun 2023 11:31:42 +0200
Received: from steina-w.localnet (unknown [10.123.53.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 3A7A9280082;
	Fri, 16 Jun 2023 11:31:42 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: andrzej.hajda@intel.com, neil.armstrong@linaro.org, robert.foss@linaro.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, daniel@ffwll.ch, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, vkoul@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Cc: oliver.brown@nxp.com, Sandor.yu@nxp.com, linux-imx@nxp.com, kernel@pengutronix.de, Sandor Yu <Sandor.yu@nxp.com>
Subject: Re: [PATCH v6 2/8] dt-bindings: display: bridge: Add Cadence MHDP8501 HDMI and DP
Date: Fri, 16 Jun 2023 11:31:43 +0200
Message-ID: <3439354.PYKUYFuaPT@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <8687f2221299b120e12f29fdccf264e120227bd7.1686729444.git.Sandor.yu@nxp.com>
References: <cover.1686729444.git.Sandor.yu@nxp.com> <8687f2221299b120e12f29fdccf264e120227bd7.1686729444.git.Sandor.yu@nxp.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_023147_582684_38CF9740 
X-CRM114-Status: GOOD (  15.42  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Sandor,

Am Donnerstag, 15. Juni 2023, 03:38:12 CEST schrieb Sandor Yu:
> Add bindings for Cadence MHDP8501 DisplayPort and HDMI driver.
> =

> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> ---
>  .../display/bridge/cdns,mhdp8501.yaml         | 105 ++++++++++++++++++
>  1 file changed, 105 insertions(+)
>  create mode 100644
> Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml
> =

> diff --git
> a/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml
> b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml new
> file mode 100644
> index 000000000000..a54756815e6f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml
> @@ -0,0 +1,105 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/cdns,mhdp8501.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cadence MHDP8501 Displayport bridge
> +
> +maintainers:
> +  - Sandor Yu <Sandor.yu@nxp.com>
> +
> +description:
> +  The Cadence MHDP8501 Displayport/HDMI TX interface.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - cdns,mhdp8501-dp
> +      - cdns,mhdp8501-hdmi
> +      - fsl,imx8mq-mhdp8501-dp
> +      - fsl,imx8mq-mhdp8501-hdmi
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +    description: MHDP8501 DP/HDMI APB clock.
> +
> +  phys:
> +    maxItems: 1
> +
> +  interrupts:
> +    items:
> +      - description: Hotplug cable plugin.
> +      - description: Hotplug cable plugout.
> +
> +  interrupt-names:
> +    items:
> +      - const: plug_in
> +      - const: plug_out
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Input port from display controller output.
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Output port to DP/HDMI connector.
> +
> +    required:
> +      - port@0
> +      - port@1

You mark these ports as required, but apparently the drivers do not use the=
m, =

AFAICT. E.g. missing port@1 is not resulting in an error, at lease for HDMI =

one.

Best regards,
Alexander

> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - interrupts
> +  - interrupt-names
> +  - phys
> +  - ports
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8mq-clock.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    mhdp_dp: dp-bridge@32c00000 {
> +        compatible =3D "fsl,imx8mq-mhdp8501-dp";
> +        reg =3D <0x32c00000 0x100000>;
> +        interrupts =3D <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
> +        interrupt-names =3D "plug_in", "plug_out";
> +        clocks =3D <&clk IMX8MQ_CLK_DISP_APB_ROOT>;
> +        phys =3D <&dp_phy>;
> +
> +        ports {
> +            #address-cells =3D <1>;
> +            #size-cells =3D <0>;
> +
> +            port@0 {
> +                reg =3D <0>;
> +
> +                mhdp_in: endpoint {
> +                    remote-endpoint =3D <&dcss_out>;
> +                };
> +            };
> +
> +            port@1 {
> +                reg =3D <1>;
> +
> +                mhdp_out: endpoint {
> +                    remote-endpoint =3D <&dp_con>;
> +                };
> +            };
> +        };
> +    };


-- =

TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
