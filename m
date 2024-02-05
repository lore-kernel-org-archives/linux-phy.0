Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9E8AC4828D
	for <linux-phy@archiver.kernel.org>; Mon,  5 Feb 2024 07:29:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vC3dEfw3whp5+6ksvYbnxZmXWNXoTfLYm9pYoKvyPz0=; b=H2Hmw1cViR1mLI
	yaVOa9i2e0kgFV8yXwhTE2RDO0E6NQtvPodSF6gpMUYdr7esmFWJKL1hjOu5B5ztR377REsyWhnj7
	WHzPi8iHd7vV0Ty9WqXnjfKVU9VweFnLAVwcWYexQmyOwztmug5TffFf3oQjw9azwM5Z592Fu++pk
	zZvvvc4PGGsmwtn1XlGHpHq0hF23+vM6+e72s+Zx06rzUnTPZK0atO/NY7kKZHq2TthDx7nu0zGzl
	XWRKhCQ7pGJg26CS4MjzvMD82RR0BcD7GAaiAYvkOEuCcybxyfgSjuV+g1CC2VXwX16KjdU90NVz+
	1HQU0TVsw1T4N69f6ShA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWtQS-00000002Ial-1eLD;
	Mon, 05 Feb 2024 07:29:56 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWtQP-00000002IZa-15gv;
	Mon, 05 Feb 2024 07:29:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1707118193; x=1738654193;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=qZcmn/OIlR5Udu+W3cVR16fsRHqzu2hvYW43r3YLp2A=;
  b=ez0BbGCll9Pen/7SdqNedzo81X3zfnt1bSR84I9noy31uo+1nBBgZCn4
   /mK0cd4alngDlhceZRSF4X1DFnHNVYomrVtn57EiJ4qYQmmoirx99d5ja
   3Fhqc7d414JUqcdx9EMAhwe5kewkdQC8KCoUa53cLRBTW7G1YDy2TOgNU
   nxGwOZur9u23XT0tAmgfZ2Yf/Gr/sYDYZ1CkV3d5/InPVaBNHx9y+UDoD
   jMLJKFHb7w73RgjQQ1tBBKtCo320OFXG1sJV6uwInHPQdwDbkdzOWadql
   vCVjImLGxy02yFRGxUqa2LwOYTr6DRRCVGNaw+NFVi7kiI8PmanejFpqa
   A==;
X-IronPort-AV: E=Sophos;i="6.05,242,1701126000"; 
   d="scan'208";a="35238305"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 05 Feb 2024 08:29:50 +0100
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.25])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 013B7280075;
	Mon,  5 Feb 2024 08:29:49 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: linux-arm-kernel@lists.infradead.org, Adam Ford <aford173@gmail.com>
Cc: marex@denx.de, frieder.schrempf@kontron.de, Lucas Stach <l.stach@pengutronix.de>, Adam Ford <aford173@gmail.com>, Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
  Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Liu Ying <victor.liu@nxp.com>, Ulf Hansson <ulf.hansson@linaro.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH V8 11/12] arm64: dts: imx8mp: add HDMI display pipeline
Date: Mon, 05 Feb 2024 08:29:50 +0100
Message-ID: <2924284.e9J7NaK4W3@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20240203165307.7806-12-aford173@gmail.com>
References: <20240203165307.7806-1-aford173@gmail.com> <20240203165307.7806-12-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240204_232953_626314_F00C8771 
X-CRM114-Status: GOOD (  17.46  )
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

Am Samstag, 3. Februar 2024, 17:52:51 CET schrieb Adam Ford:
> From: Lucas Stach <l.stach@pengutronix.de>
> =

> This adds the DT nodes for all the peripherals that make up the
> HDMI display pipeline.
> =

> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Signed-off-by: Adam Ford <aford173@gmail.com>
> =

> ---
> V2:  I took this from Lucas' original submission with the following:
>      Removed extra clock from HDMI-TX since it is now part of the
>      power domain
>      Added interrupt-parent to PVI
>      Changed the name of the HDMI tranmitter to fsl,imx8mp-hdmi-tx
>      Added ports to HDMI-tx
> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 94 +++++++++++++++++++++++
>  1 file changed, 94 insertions(+)
> =

> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mp.dtsi index
> 5e51a766f3d9..e84b4f40e570 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -1412,6 +1412,100 @@ irqsteer_hdmi: interrupt-controller@32fc2000 {
>  				clock-names =3D "ipg";
>  				power-domains =3D <&hdmi_blk_ctrl =

IMX8MP_HDMIBLK_PD_IRQSTEER>;
>  			};
> +
> +			hdmi_pvi: display-bridge@32fc4000 {
> +				compatible =3D "fsl,imx8mp-hdmi-pvi";
> +				reg =3D <0x32fc4000 0x40>;
> +				interrupt-parent =3D <&irqsteer_hdmi>;
> +				interrupts =3D <12 IRQ_TYPE_LEVEL_HIGH>;

irqsteer_hdmi has #interrupt-cells =3D <1>, so IRQ flags should be removed. =

dtbs_check also warns about this.

> +				power-domains =3D <&hdmi_blk_ctrl =

IMX8MP_HDMIBLK_PD_PVI>;
> +
> +				ports {
> +					#address-cells =3D <1>;
> +					#size-cells =3D <0>;
> +
> +					port@0 {
> +						reg =3D <0>;
> +						pvi_from_lcdif3: =

endpoint {
> +							remote-
endpoint =3D <&lcdif3_to_pvi>;
> +						};
> +					};
> +
> +					port@1 {
> +						reg =3D <1>;
> +						pvi_to_hdmi_tx: =

endpoint {
> +							remote-
endpoint =3D <&hdmi_tx_from_pvi>;
> +						};
> +					};
> +				};
> +			};
> +
> +			lcdif3: display-controller@32fc6000 {
> +				compatible =3D "fsl,imx8mp-lcdif";
> +				reg =3D <0x32fc6000 0x238>;
> +				interrupts =3D <8 IRQ_TYPE_LEVEL_HIGH>;

irqsteer_hdmi has #interrupt-cells =3D <1>, so IRQ flags should be removed. =

dtbs_check also warns about this.

> +				interrupt-parent =3D <&irqsteer_hdmi>;
> +				clocks =3D <&hdmi_tx_phy>,
> +					 <&clk IMX8MP_CLK_HDMI_APB>,
> +					 <&clk =

IMX8MP_CLK_HDMI_ROOT>;
> +				clock-names =3D "pix", "axi", =

"disp_axi";
> +				power-domains =3D <&hdmi_blk_ctrl =

IMX8MP_HDMIBLK_PD_LCDIF>;
> +
> +				port {
> +					lcdif3_to_pvi: endpoint {
> +						remote-endpoint =3D =

<&pvi_from_lcdif3>;
> +					};
> +				};
> +			};
> +
> +			hdmi_tx: hdmi@32fd8000 {
> +				compatible =3D "fsl,imx8mp-hdmi-tx";
> +				reg =3D <0x32fd8000 0x7eff>;
> +				interrupts =3D <0 IRQ_TYPE_LEVEL_HIGH>;

irqsteer_hdmi has #interrupt-cells =3D <1>, so IRQ flags should be removed. =

dtbs_check also warns about this.

> +				interrupt-parent =3D <&irqsteer_hdmi>;
> +				clocks =3D <&clk IMX8MP_CLK_HDMI_APB>,
> +					 <&clk =

IMX8MP_CLK_HDMI_REF_266M>,
> +					 <&clk IMX8MP_CLK_32K>,
> +					 <&hdmi_tx_phy>;
> +				clock-names =3D "iahb", "isfr", "cec", =

"pix";
> +				assigned-clocks =3D <&clk =

IMX8MP_CLK_HDMI_REF_266M>;
> +				assigned-clock-parents =3D <&clk =

IMX8MP_SYS_PLL1_266M>;
> +				power-domains =3D <&hdmi_blk_ctrl =

IMX8MP_HDMIBLK_PD_HDMI_TX>;
> +				reg-io-width =3D <1>;
> +				status =3D "disabled";
> +
> +				ports {
> +					#address-cells =3D <1>;
> +					#size-cells =3D <0>;
> +
> +					port@0 {
> +						reg =3D <0>;
> +
> +						hdmi_tx_from_pvi: =

endpoint {
> +							remote-
endpoint =3D <&pvi_to_hdmi_tx>;
> +						};
> +					};
> +
> +					port@1 {
> +						reg =3D <1>;
> +						/* Point endpoint =

to the HDMI connector */
> +					};
> +				};
> +			};
> +
> +			hdmi_tx_phy: phy@32fdff00 {
> +				compatible =3D "fsl,imx8mp-hdmi-phy";
> +				reg =3D <0x32fdff00 0x100>;
> +				clocks =3D <&clk IMX8MP_CLK_HDMI_APB>,
> +					 <&clk IMX8MP_CLK_HDMI_24M>;
> +				clock-names =3D "apb", "ref";
> +				assigned-clocks =3D <&clk =

IMX8MP_CLK_HDMI_24M>;
> +				assigned-clock-parents =3D <&clk =

IMX8MP_CLK_24M>;
> +				power-domains =3D <&hdmi_blk_ctrl =

IMX8MP_HDMIBLK_PD_HDMI_TX_PHY>;
> +				#clock-cells =3D <0>;
> +				#phy-cells =3D <0>;
> +				status =3D "disabled";
> +			};

According to RM these blocks are part of AIPS4, so it should be below =

hsio_blk_ctrl.

Best regards,
Alexander

>  		};
> =

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
