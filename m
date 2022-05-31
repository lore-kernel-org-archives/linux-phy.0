Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2032CC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 31 May 2022 08:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u1Bq6VSy00rg3yyjzASJ4DWwbtU5LgwauSAedxmI6k8=; b=lcrxiP3yhP9xrD
	2yAM8X9lNZfDM4pXueKGzQJwfzK76eFACWH7vQghbK4i/yhvBJ2yvoSbOpHJm5HZ1aTatSsNBLmO9
	w78O0YAJE2bKpFf8evr/XfbIjKlBHrxDGgbBofs6HIqwBUNTo1Bp3D1MLyH+/as2ZxamORvrfZb3f
	z+5ZrrLZo10t5Pc1owXPqWaVrocBqgy2fku9NprMNuUjiL9/xfxYGDbM2KGq/Nc+er2Hai4reIaLl
	ufsVDSKItuzukLc9bw/AEMj2+AntUVmRWyc2AGApJBAm/aIZjy5hU/1upD/I72CjTYdAwCXh4lhzp
	C+hMpexIQnA5V8m4ZmNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvxIX-009qew-Fd; Tue, 31 May 2022 08:32:17 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvxIL-009qbA-NF; Tue, 31 May 2022 08:32:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1653985925; x=1685521925;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=n0MlSyv4m4NqUi7kCGI4FwLhvb140adLuDksFUetojk=;
  b=oPc3UQR7YJ3M71HqMmT57/b1Kkq5c3qo8apJH/Hf0XoWbu18P7MyK+IX
   nYYiArqR33swSiIC/2inXiGxZd/aHQUvS42hK89GuBaQyP2+LjsAQEARp
   zgbpisECiIVlqsewCQgmoes+ckTmUkBjwQFlJu+3KZIJnG/8UVIBW/CY6
   0+qk4B2GviTZyG8plHxNNjKgEq1WYcYauLEnn3ztqLhCTkL/jZUroZZ5m
   0DoYueXWOZY8DHS37YobHozHOF3g69OgHHGTPNLr9dLUaRkR3wIu3mN5M
   ooyI/50bC1R8HNll0B1E5F2lV7CRGXH3ZrLoJfSCEL3PVQ0LoUJc9z/He
   Q==;
X-IronPort-AV: E=Sophos;i="5.91,264,1647298800"; 
   d="scan'208";a="24167931"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 31 May 2022 10:31:52 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 31 May 2022 10:31:54 +0200
X-PGP-Universal: processed;
	by tq-pgp-pr1.tq-net.de on Tue, 31 May 2022 10:31:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1653985914; x=1685521914;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=n0MlSyv4m4NqUi7kCGI4FwLhvb140adLuDksFUetojk=;
  b=RNT8yAIgsGLbU6F6nUKqGTon7paoihwhkYZhEmbkIO/+YmPDguraMzzs
   klHluJLGnLPoiE+2Lp9eECxfCxgQ59kwhbRj5qrKG8Ig3E5TEwo0Oj8Pz
   b0VbT+sN3kiUNV+kl0RZ53DeN1OTqqxKCMdaHbu107FDUfeBLIUcr8ToJ
   YaSwhIf0To2yQXMGN0zAxAEeFkie4OzRYFu2hMVr7PlfE4hR9E1Mj6cFU
   pPsHSuPXxpQIODM3N5c3Uc6gmxXChLNAlASEX69cnyeoboNnOblH82Q9s
   mvKn7rN4CpbMfZGf5uxy6xDaT+8S802LsbNM3OU7FRV/kTpmKVzL6FJgi
   A==;
X-IronPort-AV: E=Sophos;i="5.91,264,1647298800"; 
   d="scan'208";a="24167929"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 31 May 2022 10:31:51 +0200
Received: from steina-w.localnet (unknown [10.123.49.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 7AD06280004;
	Tue, 31 May 2022 10:31:51 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, NXP Linux Team <linux-imx@nxp.com>, linux-arm-kernel@lists.infradead.org
Cc: Fabio Estevam <festevam@gmail.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, Robert Foss <robert.foss@linaro.org>, Neil Armstrong <narmstrong@baylibre.com>, Andrzej Hajda <andrzej.hajda@intel.com>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, patchwork-lst@pengutronix.de, Lucas Stach <l.stach@pengutronix.de>
Subject: Re: (EXT) [PATCH v0 09/10] arm64: dts: imx8mp: add HDMI display pipeline
Date: Tue, 31 May 2022 10:31:49 +0200
Message-ID: <8174014.NyiUUSuA9g@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20220406160123.1272911-10-l.stach@pengutronix.de>
References: <20220406160123.1272911-1-l.stach@pengutronix.de> <20220406160123.1272911-10-l.stach@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_013206_277590_75969E56 
X-CRM114-Status: GOOD (  15.27  )
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

Hi Lucas,

Am Mittwoch, 6. April 2022, 18:01:22 CEST schrieb Lucas Stach:
> This adds the DT nodes for all the peripherals that make up the
> HDMI display pipeline.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 80 +++++++++++++++++++++++
>  1 file changed, 80 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mp.dtsi index
> 6b7b5ba32b48..a41da99e9537 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -1087,6 +1087,86 @@ irqsteer_hdmi: interrupt-controller@32fc2000 {
>  				clock-names = "ipg";
>  				power-domains = <&hdmi_blk_ctrl 
IMX8MP_HDMIBLK_PD_IRQSTEER>;
>  			};
> +
> +			hdmi_pvi: display-bridge@32fc4000 {
> +				compatible = "fsl,imx8mp-hdmi-
pvi";
> +				reg = <0x32fc4000 0x40>;
> +				power-domains = <&hdmi_blk_ctrl 
IMX8MP_HDMIBLK_PD_PVI>;

This should be disabled by default as well. Unless 'hdmi_tx: hdmi@32fd8000' is 
enabled, this results in the warning:
imx-hdmi-pvi: probe of 32fc4000.display-bridge failed with error -22

Best regards
Alexander

> +
> +				ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					port@0 {
> +						reg = <0>;
> +						
pvi_from_lcdif3: endpoint {
> +							
remote-endpoint = <&lcdif3_to_pvi>;
> +						};
> +					};
> +
> +					port@1 {
> +						reg = <1>;
> +						
pvi_to_hdmi_tx: endpoint {
> +							
remote-endpoint = <&hdmi_tx_from_pvi>;
> +						};
> +					};
> +				};
> +			};
> +
> +			lcdif3: display-controller@32fc6000 {
> +				compatible = "fsl,imx8mp-lcdif";
> +				reg = <0x32fc6000 0x238>;
> +				interrupts = <8 
IRQ_TYPE_LEVEL_HIGH>;
> +				interrupt-parent = 
<&irqsteer_hdmi>;
> +				clocks = <&hdmi_tx_phy>,
> +					 <&clk 
IMX8MP_CLK_HDMI_APB>,
> +					 <&clk 
IMX8MP_CLK_HDMI_ROOT>;
> +				clock-names = "pix", "axi", 
"disp_axi";
> +				power-domains = <&hdmi_blk_ctrl 
IMX8MP_HDMIBLK_PD_LCDIF>;
> +
> +				port {
> +					lcdif3_to_pvi: endpoint 
{
> +						remote-
endpoint = <&pvi_from_lcdif3>;
> +					};
> +				};
> +			};
> +
> +			hdmi_tx: hdmi@32fd8000 {
> +				compatible = "fsl,imx8mp-hdmi";
> +				reg = <0x32fd8000 0x7eff>;
> +				interrupts = <0 
IRQ_TYPE_LEVEL_HIGH>;
> +				interrupt-parent = 
<&irqsteer_hdmi>;
> +				clocks = <&clk 
IMX8MP_CLK_HDMI_APB>,
> +					 <&clk 
IMX8MP_CLK_HDMI_REF_266M>,
> +					 <&clk IMX8MP_CLK_32K>,
> +					 <&hdmi_tx_phy>;
> +				clock-names = "iahb", "isfr", 
"cec", "pix";
> +				assigned-clocks = <&clk 
IMX8MP_CLK_HDMI_REF_266M>;
> +				assigned-clock-parents = <&clk 
IMX8MP_SYS_PLL1_266M>;
> +				power-domains = <&hdmi_blk_ctrl 
IMX8MP_HDMIBLK_PD_HDMI_TX>;
> +				reg-io-width = <1>;
> +				status = "disabled";
> +
> +				port {
> +					hdmi_tx_from_pvi: 
endpoint {
> +						remote-
endpoint = <&pvi_to_hdmi_tx>;
> +					};
> +				};
> +			};
> +
> +			hdmi_tx_phy: phy@32fdff00 {
> +				compatible = "fsl,imx8mp-hdmi-
phy";
> +				reg = <0x32fdff00 0x100>;
> +				clocks = <&clk 
IMX8MP_CLK_HDMI_APB>,
> +					 <&clk 
IMX8MP_CLK_HDMI_24M>;
> +				clock-names = "apb", "ref";
> +				assigned-clocks = <&clk 
IMX8MP_CLK_HDMI_24M>;
> +				assigned-clock-parents = <&clk 
IMX8MP_CLK_24M>;
> +				power-domains = <&hdmi_blk_ctrl 
IMX8MP_HDMIBLK_PD_HDMI_TX_PHY>;
> +				#clock-cells = <0>;
> +				#phy-cells = <0>;
> +				status = "disabled";
> +			};
>  		};
> 
>  		gpu3d: gpu@38000000 {





-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
