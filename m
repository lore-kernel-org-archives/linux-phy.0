Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67527C48291
	for <linux-phy@archiver.kernel.org>; Mon,  5 Feb 2024 07:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UD0unezLje6AniXvFsu7sJr8u/tALkWGGOOIJIDmuv8=; b=wktLkqQSOJdh3N
	KQ5LeTnlOpR1A8Pp0KjpbJTIASiYzVfm3ZzYouy78NZpfutfDrJB2Nv6YYPXTiibCbDkuBg8Zbry8
	RmUAc1jKsaguWL57ld0+KtJuqUSUy9XQ0kSzwoESb3vmWjQ7b54MhSwGCJHLvPumRiAmUEN2XC0sj
	SP5US8yAK930aQBZB5g8zv3q6nu+waep0hg0FOHwoawOgU14SZbmN6dAjaSve1ofaaQBH445RlmI7
	7uPY+b7PWcB8bv+ZGt8/574uDNCxDvLxidVu6ELLJGneZj/xIrhkErDbRdQVWeLaLOi29ObYTBV83
	o+L+Grjk9CM3h2Sjoc7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWtMz-00000002Hv2-487b;
	Mon, 05 Feb 2024 07:26:21 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWtMw-00000002Hsx-0haN;
	Mon, 05 Feb 2024 07:26:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1707117978; x=1738653978;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=hE8uVdU3UQ72lERu+ClYubt3YSUrQtm3/4DPzSloaCY=;
  b=ZWIu2UUSUZttEoL5UaJEa9x92syQ8BuQhFcTf859ITfVdFpMz1lC/hZt
   FYoIJ+pjSFV+MwHHLEnGsmrDRWGoEFiBOd3zmvVEK7VxR9KKtS3kqyX4W
   MWBgcFF7N7v+6OUVxFoCdPXlusentxLbGrZ3EtIYG+nQxT1Lzrs4TX6YG
   wvdbFNlRw6vEADaUql+TwRUNOnq2+fntZ3zTm3s6o7ef7LHNFPLPBRbhh
   BDqPmXQ20BWSzv+0vNjZ6rEQGvjK4j+oGm3vhgsGvZ9Q3v9bx2T/jEGgJ
   OH5BRsPLH0O/X9SHa+5xRNeJNsHnP7S3C7ISDehvQJgfqkxAi3xp1biZb
   w==;
X-IronPort-AV: E=Sophos;i="6.05,242,1701126000"; 
   d="scan'208";a="35238211"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 05 Feb 2024 08:26:12 +0100
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.25])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id DF27C280075;
	Mon,  5 Feb 2024 08:26:11 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: linux-arm-kernel@lists.infradead.org, Adam Ford <aford173@gmail.com>
Cc: marex@denx.de, frieder.schrempf@kontron.de, Lucas Stach <l.stach@pengutronix.de>, Adam Ford <aford173@gmail.com>, Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
  Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Liu Ying <victor.liu@nxp.com>, Ulf Hansson <ulf.hansson@linaro.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH V8 05/12] arm64: dts: imx8mp: add HDMI power-domains
Date: Mon, 05 Feb 2024 08:26:12 +0100
Message-ID: <1880028.tdWV9SEqCh@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20240203165307.7806-6-aford173@gmail.com>
References: <20240203165307.7806-1-aford173@gmail.com> <20240203165307.7806-6-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240204_232618_628327_069A52F3 
X-CRM114-Status: GOOD (  13.90  )
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

Hi Adam,

thanks for working on this.

Am Samstag, 3. Februar 2024, 17:52:45 CET schrieb Adam Ford:
> From: Lucas Stach <l.stach@pengutronix.de>
> =

> This adds the PGC and HDMI blk-ctrl nodes providing power control for
> HDMI subsystem peripherals.
> =

> Signed-off-by: Adam Ford <aford173@gmail.com>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
> V2:  Add missing power-domains hdcp and hrv
> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 38 +++++++++++++++++++++++
>  1 file changed, 38 insertions(+)
> =

> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mp.dtsi index
> 76c73daf546b..5c54073de615 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -836,6 +836,23 @@ pgc_mediamix: power-domain@10 {
>  							 <&clk =

IMX8MP_CLK_MEDIA_APB_ROOT>;
>  					};
> =

> +					pgc_hdmimix: power-
domains@14 {

As per Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml the node =

should be called power-domain@.

> +						#power-domain-
cells =3D <0>;
> +						reg =3D =

<IMX8MP_POWER_DOMAIN_HDMIMIX>;
> +						clocks =3D <&clk =

IMX8MP_CLK_HDMI_ROOT>,
> +							 <&clk =

IMX8MP_CLK_HDMI_APB>;
> +						assigned-clocks =3D =

<&clk IMX8MP_CLK_HDMI_AXI>,
> +								=

  <&clk IMX8MP_CLK_HDMI_APB>;
> +						assigned-clock-
parents =3D <&clk IMX8MP_SYS_PLL2_500M>,
> +								=

	 <&clk IMX8MP_SYS_PLL1_133M>;
> +						assigned-clock-
rates =3D <500000000>, <133000000>;
> +					};
> +
> +					pgc_hdmi_phy: power-
domains@15 {

As per Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml the node =

should be called power-domain@.

> +						#power-domain-
cells =3D <0>;
> +						reg =3D =

<IMX8MP_POWER_DOMAIN_HDMI_PHY>;
> +					};
> +
>  					pgc_mipi_phy2: power-
domain@16 {
>  						#power-domain-
cells =3D <0>;
>  						reg =3D =

<IMX8MP_POWER_DOMAIN_MIPI_PHY2>;
> @@ -1361,6 +1378,27 @@ eqos: ethernet@30bf0000 {
>  				intf_mode =3D <&gpr 0x4>;
>  				status =3D "disabled";
>  			};
> +
> +			hdmi_blk_ctrl: blk-ctrl@32fc0000 {
> +				compatible =3D "fsl,imx8mp-hdmi-blk-
ctrl", "syscon";
> +				reg =3D <0x32fc0000 0x23c>;
> +				clocks =3D <&clk IMX8MP_CLK_HDMI_APB>,
> +					 <&clk =

IMX8MP_CLK_HDMI_ROOT>,
> +					 <&clk =

IMX8MP_CLK_HDMI_REF_266M>,
> +					 <&clk IMX8MP_CLK_HDMI_24M>,
> +					 <&clk =

IMX8MP_CLK_HDMI_FDCC_TST>;
> +				clock-names =3D "apb", "axi", =

"ref_266m", "ref_24m", "fdcc";
> +				power-domains =3D <&pgc_hdmimix>, =

<&pgc_hdmimix>,
> +						<&pgc_hdmimix>, =

<&pgc_hdmimix>,
> +						<&pgc_hdmimix>, =

<&pgc_hdmimix>,
> +						<&pgc_hdmimix>, =

<&pgc_hdmi_phy>,
> +						<&pgc_hdmimix>, =

<&pgc_hdmimix>;
> +				power-domain-names =3D "bus", =

"irqsteer", "lcdif",
> +						     "pai", "pvi", =

"trng",
> +						     "hdmi-tx", =

"hdmi-tx-phy",
> +						     "hdcp", =

"hrv";
> +				#power-domain-cells =3D <1>;
> +			};
>  		};
> =


According to RM this block is part of AIPS4, so it should be below =

hsio_blk_ctrl.

Best regards,
Alexander

>  		aips5: bus@30c00000 {


-- =

TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
