Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB2C5C48BC3
	for <linux-phy@archiver.kernel.org>; Tue, 20 Feb 2024 10:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/E6m4ANliOwgfGLvtiRnxLQqP6AulwPOvly2/9c3mY=; b=ra2uRUxHQ3eSfx
	pi8sjVir4JWZBWWpD+JF2yFOMjepWIQ15/IBnmbhwA+eoelBWkaRy/EWoLgu0TDlv1M4byCt0lXEu
	8ppz4Jpi+ksBpKKWBzgBNFDH/sz7cSFSMOPsDxBbcgBK081/2vUHFbQc2oqbkVxsdF1CY1DH1Jead
	GbqRcnmekdV8KBl34sWpHx8frl2VSIePdb8y9PoaLKZBhWuUnFUbDFDW5WG31bkjANDQ21FV3TRHl
	0T3ojgiP3R3gOyg50VnR6T5HiHrdvFVn7bhKa2nqotbEYTBTXN86bYAmjf0gHcLw+EvvA69FMsNA5
	qaQLjZlXptzCId6oyhVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcN1p-0000000EB0s-1gw4;
	Tue, 20 Feb 2024 10:07:09 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcN1l-0000000EAwj-2TvM;
	Tue, 20 Feb 2024 10:07:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1708423625; x=1739959625;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=EzVIo/Erko3TaB1q/0Z3yVbLBXjoJVz6+76Ci1MxT2A=;
  b=AVLkAwOE7DQchcFXP61Vd+ROvcxSitZ0n4oBfVeSwdMn89uUOriiK2UE
   gPOgtV7k/kAk0KDVJhjL3tEHlCC7zQrkmh10/7F1ZoScWFinelf86atsL
   5GqFjnhTO/Kb+ir3AteBhyZyMmdcYatPUteULAC27EFJRtNGruxDDDevN
   +UJ8KsCh/dB9hzdX4ThH0cfrC/y0SILm/8NOq+a+TovuIZzWibNs5cyWw
   OT6+5R2GdKa3VKSP9LcBIzB5kENqtpqUlQ8oIe3gnWV40p7lnQav1M/rr
   kzRN6jdxNfIr+YHNyXekNMxFXBKqNQf2UtdWSee2UcuYwI92ij9o1z9hi
   w==;
X-IronPort-AV: E=Sophos;i="6.06,172,1705359600"; 
   d="scan'208";a="35495206"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 20 Feb 2024 11:06:52 +0100
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.25])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 458BD280075;
	Tue, 20 Feb 2024 11:06:52 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: dmitry.baryshkov@linaro.org, andrzej.hajda@intel.com, neil.armstrong@linaro.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, daniel@ffwll.ch, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, vkoul@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, Sandor Yu <Sandor.yu@nxp.com>
Cc: kernel@pengutronix.de, linux-imx@nxp.com, Sandor.yu@nxp.com, oliver.brown@nxp.com, sam@ravnborg.org, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v14 5/7] dt-bindings: phy: Add Freescale iMX8MQ DP and HDMI PHY
Date: Tue, 20 Feb 2024 11:06:54 +0100
Message-ID: <10421561.nUPlyArG6x@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <8ddbb34b5f6bf2414bdb03f9e7cd9da70e4e7228.1708395604.git.Sandor.yu@nxp.com>
References: <cover.1708395604.git.Sandor.yu@nxp.com> <8ddbb34b5f6bf2414bdb03f9e7cd9da70e4e7228.1708395604.git.Sandor.yu@nxp.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_020705_935452_B4E4F9CA 
X-CRM114-Status: GOOD (  15.11  )
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

Hi,

thanks for the update.

Am Dienstag, 20. Februar 2024, 04:23:53 CET schrieb Sandor Yu:
> Add bindings for Freescale iMX8MQ DP and HDMI PHY.
> =

> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> v9->v14:
>  *No change.
> =

>  .../bindings/phy/fsl,imx8mq-dp-hdmi-phy.yaml  | 53 +++++++++++++++++++
>  1 file changed, 53 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mq-dp-h=
dmi-phy.yaml
> =

> diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mq-dp-hdmi-phy=
.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8mq-dp-hdmi-phy.yaml
> new file mode 100644
> index 0000000000000..917f113503dca
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/fsl,imx8mq-dp-hdmi-phy.yaml
> @@ -0,0 +1,53 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/fsl,imx8mq-dp-hdmi-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cadence HDP-TX DP/HDMI PHY for Freescale i.MX8MQ SoC
> +
> +maintainers:
> +  - Sandor Yu <sandor.yu@nxp.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx8mq-dp-phy
> +      - fsl,imx8mq-hdmi-phy

While reading cdns-mhdp8501-core.c I'm not so sure about this. There is
only a single PHY which can be configured for either DP or HDMI.
Using separate compatibles for that somehow bugs me.
Maybe the DT maintainers can add some input if this should be single
or double compatibles.

Thanks and best regards,
Alexander

> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: PHY reference clock.
> +      - description: APB clock.
> +
> +  clock-names:
> +    items:
> +      - const: ref
> +      - const: apb
> +
> +  "#phy-cells":
> +    const: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8mq-clock.h>
> +    #include <dt-bindings/phy/phy.h>
> +    dp_phy: phy@32c00000 {
> +        compatible =3D "fsl,imx8mq-dp-phy";
> +        reg =3D <0x32c00000 0x100000>;
> +        #phy-cells =3D <0>;
> +        clocks =3D <&hdmi_phy_27m>, <&clk IMX8MQ_CLK_DISP_APB_ROOT>;
> +        clock-names =3D "ref", "apb";
> +    };
> =



-- =

TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
