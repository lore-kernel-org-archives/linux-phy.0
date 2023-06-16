Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99A58EB64DA
	for <linux-phy@archiver.kernel.org>; Fri, 16 Jun 2023 09:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NG3C97cbPQP4wwKZiBks1XkvQ0iVz/PXDC4Mdedz0U8=; b=voyMQknotaNYsU
	PxFhesIKE+8xI2HEfi+TItpOc65HQwtgWtkVTwkOyYGTaONWpRR9BxwA4o+ZruzemB5ogsB9Ag3fH
	0Kj0NBIVW4v0lVk7sYLvELs/ZNWhXCX+tATGeIRggOZB2wY4biRl9+WBFVxx1rHhgjhhXx+RFoXjg
	f+Tdvju5TgnmFsHyPl8sM0dpgPzMIBAyVPimWZNsso3gtVEUmDBz7XCCzQKNzXs+LckAaoIgDs3b9
	k+HxPts/3jyxmNPvWklj06cVhst+XVx4yuc8mQQC2j3wwc0BZqcmvahPeVkXJ3W4Ob3X64ClRuWWw
	jdYiqjKDN21i9FJNNIrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qA5qr-00HTcK-0x;
	Fri, 16 Jun 2023 09:34:41 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qA5qn-00HTbX-3D;
	Fri, 16 Jun 2023 09:34:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686908078; x=1718444078;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=7fUinrxNf0MsjqefM35xcVOtugPMdveh6egjO57sMYk=;
  b=C4wgZ4SHjvgQisADXAwNNyGJrUoNvxDmQ0c7fEbqJ1XApjOrvsvSIwY+
   sd4gZk/kFqivo+TfqIuzAIPFIJ1/VvXlk1wqsboMJfnybD6buE1xrPtIP
   nxl0ABmCKbe7/q5wtUXAIq2jzKFDSzHpwDM2bkuLjfA4v4MNBxHfMt4Hi
   g1NIY9/txb533oLTidFyB/Ej1lHWX9SorSmo5bqqOIUUL6SPlzvr+ExSx
   +Tb72vJQehAW1ZZOhi4ZDkBG5wWy3BGkHL9El/ZCdOfzLL9gQu3r0RHtV
   OKFWSgscfepTghl8yR4B77rzC3TOGOPW26229xqwdR/EEu9P42/jFbpDD
   Q==;
X-IronPort-AV: E=Sophos;i="6.00,247,1681164000"; 
   d="scan'208";a="31462666"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 Jun 2023 11:34:35 +0200
Received: from steina-w.localnet (unknown [10.123.53.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id A19C0280082;
	Fri, 16 Jun 2023 11:34:35 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: andrzej.hajda@intel.com, neil.armstrong@linaro.org, robert.foss@linaro.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, daniel@ffwll.ch, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, vkoul@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Cc: oliver.brown@nxp.com, Sandor.yu@nxp.com, linux-imx@nxp.com, kernel@pengutronix.de, Sandor Yu <Sandor.yu@nxp.com>
Subject: Re: [PATCH v6 6/8] dt-bindings: phy: Add Freescale iMX8MQ DP and HDMI PHY
Date: Fri, 16 Jun 2023 11:34:37 +0200
Message-ID: <5009063.iIbC2pHGDl@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <2ccb849de420ced29b3f9be38e12664e1919b631.1686729444.git.Sandor.yu@nxp.com>
References: <cover.1686729444.git.Sandor.yu@nxp.com> <2ccb849de420ced29b3f9be38e12664e1919b631.1686729444.git.Sandor.yu@nxp.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_023438_188869_49C68997 
X-CRM114-Status: GOOD (  13.72  )
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

Am Donnerstag, 15. Juni 2023, 03:38:16 CEST schrieb Sandor Yu:
> Add bindings for Freescale iMX8MQ DP and HDMI PHY.
> =

> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> ---
>  .../bindings/phy/fsl,imx8mq-dp-hdmi-phy.yaml  | 53 +++++++++++++++++++
>  1 file changed, 53 insertions(+)
>  create mode 100644
> Documentation/devicetree/bindings/phy/fsl,imx8mq-dp-hdmi-phy.yaml
> =

> diff --git
> a/Documentation/devicetree/bindings/phy/fsl,imx8mq-dp-hdmi-phy.yaml
> b/Documentation/devicetree/bindings/phy/fsl,imx8mq-dp-hdmi-phy.yaml new
> file mode 100644
> index 000000000000..917f113503dc
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

How is it intended to select DP or HDMI? E.g. provide a single default dp-p=
hy =

node in imx8mq.dtsi and change the compatible to HDMI on board-level?

Best regards,
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


-- =

TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
