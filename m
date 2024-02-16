Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63040C48260
	for <linux-phy@archiver.kernel.org>; Fri, 16 Feb 2024 09:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hlFWgVaxix4Fgscj72WlkZIRcSA2m+q9OfHBUD7hGmM=; b=wm+eydOeF3yzEl
	CQLMVrSjodvvc8or5jHUX+mU/RS4xFT583coR8vDb5Oo92dIpOA9ux7eZBh66Ntdmaz/Uo/qWpHbS
	JPGj9g60aRGAOzXI5oJnAJVMeLlapRjOogPf8yQpDxDjCUMxD1y4HcA7Gu1pWwEmWr0KyYVJldba1
	xGeSEJTe3T8g6Xi7mrU6biEukLwwTQ0At+X8hgQ1l8ZE8N/CqgEZVvbvKfwacXo/ZJnwKs6juHpaX
	HR7u+AbXqff4BPjsDjscBevvsb8ygwVYB9I3+vE5LIOgml6PIHo72qxKPCBQZUUsIDGBX5r9eZPiM
	mDamV/ml2HjiLeqEqO2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rauA0-00000001fPj-40ui;
	Fri, 16 Feb 2024 09:05:32 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rau9w-00000001fMV-1OhU;
	Fri, 16 Feb 2024 09:05:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1708074328; x=1739610328;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=9vIOGZfDhKu9DGx5o5UYxS0vQjX/6Zu979oLg6n9Etg=;
  b=AQwCSXlDOO3EPqF6C3LIBXJM8ZPYPTGNZ3qGLEJ5JrE7Rt9c2ry8FVT+
   9VISR0hstjeGgsBNYzeBuwnZCsbAK0rAXdfNlzUYvdIndX2+q5g7eN0X5
   VJCH7zJ9Ts1m7X6/WYjWxkNgqHo3XJoH2Nhk2v8mCE3SyFGv/cxjR1vIY
   zjd+WWoahW9XhNALcHiIqRUgqGUyjO+U4uK9ZuFCnHTSlWhs+DHmNh8YT
   GNmJODRc8JNrgoIhFRzTKTMF0Dh/k/3qnTNUZ5LYqcZWcGJC41dm2keyq
   QxDLUbQ8WG0EFAciP6tqSJ21ytKshlrIN+1hS1gQxSsRUchDPkjhn6cjz
   g==;
X-IronPort-AV: E=Sophos;i="6.06,164,1705359600"; 
   d="scan'208";a="35440531"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 Feb 2024 10:05:25 +0100
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.25])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 1BAE5280075;
	Fri, 16 Feb 2024 10:05:25 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org
Cc: marex@denx.de, frieder.schrempf@kontron.de, Lucas Stach <l.stach@pengutronix.de>, Adam Ford <aford173@gmail.com>, Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
  Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Liu Ying <victor.liu@nxp.com>, Ulf Hansson <ulf.hansson@linaro.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, linux-pm@vger.kernel.org, Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH V8 09/12] dt-bindings: display: imx: add binding for i.MX8MP HDMI TX
Date: Fri, 16 Feb 2024 10:05:26 +0100
Message-ID: <5916132.MhkbZ0Pkbq@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20240203165307.7806-10-aford173@gmail.com>
References: <20240203165307.7806-1-aford173@gmail.com> <20240203165307.7806-10-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_010528_780252_6DBB56A1 
X-CRM114-Status: GOOD (  19.64  )
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

Hi all,

Am Samstag, 3. Februar 2024, 17:52:49 CET schrieb Adam Ford:
> From: Lucas Stach <l.stach@pengutronix.de>
> =

> The HDMI TX controller on the i.MX8MP SoC is a Synopsys designware IP
> core with a little bit of SoC integration around it.
> =

> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Signed-off-by: Adam Ford <aford173@gmail.com>
> =

> ---
> V3:  Change name and location to better idenfity as a bridge and
>      HDMI 2.0a transmitter
> =

>      Fix typos and feedback from Rob and added ports.
> ---
>  .../display/bridge/fsl,imx8mp-hdmi-tx.yaml    | 102 ++++++++++++++++++
>  1 file changed, 102 insertions(+)
>  create mode 100644
> Documentation/devicetree/bindings/display/bridge/fsl,imx8mp-hdmi-tx.yaml
> =

> diff --git
> a/Documentation/devicetree/bindings/display/bridge/fsl,imx8mp-hdmi-tx.yaml
> b/Documentation/devicetree/bindings/display/bridge/fsl,imx8mp-hdmi-tx.yaml
> new file mode 100644
> index 000000000000..3791c9f4ebab
> --- /dev/null
> +++
> b/Documentation/devicetree/bindings/display/bridge/fsl,imx8mp-hdmi-tx.yaml
> @@ -0,0 +1,102 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/fsl,imx8mp-hdmi-tx.yam=
l#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX8MP DWC HDMI TX Encoder
> +
> +maintainers:
> +  - Lucas Stach <l.stach@pengutronix.de>
> +
> +description:
> +  The i.MX8MP HDMI transmitter is a Synopsys DesignWare
> +  HDMI 2.0a TX controller IP.
> +
> +allOf:
> +  - $ref: /schemas/display/bridge/synopsys,dw-hdmi.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx8mp-hdmi-tx
> +
> +  reg-io-width:
> +    const: 1
> +
> +  clocks:
> +    maxItems: 4
> +
> +  clock-names:
> +    items:
> +      - const: iahb
> +      - const: isfr
> +      - const: cec
> +      - const: pix
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Parallel RGB input port
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: HDMI output port
> +
> +    required:
> +      - port@0
> +      - port@1

Is this really correct that port@1 is required? AFAICS this host already =

supports HPD and DDC by itself, so there is no need for a dedicated HDMI =

connector.
With the current state of the drivers this output port is completely ignore=
d =

anyway. Yet it works for a lot of people.

Best regards,
Alexander

> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - interrupts
> +  - power-domains
> +  - ports
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8mp-clock.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/power/imx8mp-power.h>
> +
> +    hdmi@32fd8000 {
> +        compatible =3D "fsl,imx8mp-hdmi-tx";
> +        reg =3D <0x32fd8000 0x7eff>;
> +        interrupts =3D <0 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks =3D <&clk IMX8MP_CLK_HDMI_APB>,
> +                 <&clk IMX8MP_CLK_HDMI_REF_266M>,
> +                 <&clk IMX8MP_CLK_32K>,
> +                 <&hdmi_tx_phy>;
> +        clock-names =3D "iahb", "isfr", "cec", "pix";
> +        power-domains =3D <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_HDMI_TX>;
> +        reg-io-width =3D <1>;
> +        ports {
> +           #address-cells =3D <1>;
> +           #size-cells =3D <0>;
> +           port@0 {
> +             reg =3D <0>;
> +
> +             hdmi_tx_from_pvi: endpoint {
> +               remote-endpoint =3D <&pvi_to_hdmi_tx>;
> +             };
> +          };
> +
> +          port@1 {
> +            reg =3D <1>;
> +              hdmi_tx_out: endpoint {
> +                remote-endpoint =3D <&hdmi0_con>;
> +              };
> +          };
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
