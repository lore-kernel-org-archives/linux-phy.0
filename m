Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFA05C5478C
	for <linux-phy@archiver.kernel.org>; Tue, 27 Feb 2024 08:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w8YT4ZaaD4n1CJAUbLQ73AelvuqJxJJgd1Cg9xOyZyc=; b=fR09UmEZWurU01
	s1k3zaFVuz3ylqxDA86O38S47bDTLwuksG5126UdyAbmbSli6DFBUudISD4rnGFlbUgr9pbXxpD+W
	VVCBcbC+lMWw7w6Pr6SS3HIkMZuopy8z6ZeWbC8HsHwjHiOimU/hGDRvH4hDrSMHWh2aZuqIubEqk
	T6dpm/yDp3QR072l/6fvdU16VcNRGXPo+aWIvRnd9O60Z/AmjMJBwa3DgUfQ4CQ7akl4OI0XyfwFc
	HcNkJen3YfFdoFCKeQZA98CBRJEhSXNtNMt4X+l8gWQ98aMGXvk/hefVwsNP+2Ax2MdadxlC7ODma
	cqW5DJYEnAAAKXaZSrOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1resti-00000004Jxs-1bZR;
	Tue, 27 Feb 2024 08:33:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1restf-00000004Jwr-1OWv
	for linux-phy@lists.infradead.org;
	Tue, 27 Feb 2024 08:33:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1resta-0001UR-RL; Tue, 27 Feb 2024 09:33:02 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1restZ-0039fx-Ie; Tue, 27 Feb 2024 09:33:01 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1restZ-00AXPK-1V;
	Tue, 27 Feb 2024 09:33:01 +0100
Date: Tue, 27 Feb 2024 09:33:01 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Adam Ford <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	Marek Vasut <marex@denx.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>,
	imx@lists.linux.dev, Sascha Hauer <s.hauer@pengutronix.de>,
	aford@beaconembedded.com, linux-kernel@vger.kernel.org,
	Vinod Koul <vkoul@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	devicetree@vger.kernel.org, Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH V6 5/6] arm64: dts: imx8mp: add HDMI display pipeline
Message-ID: <20240227083301.4saxxuv4n6aoqnl6@pengutronix.de>
References: <20240226234532.80114-1-aford173@gmail.com>
 <20240226234532.80114-6-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240226234532.80114-6-aford173@gmail.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_003307_412239_650072B0 
X-CRM114-Status: GOOD (  18.54  )
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

Hi Adam,

thanks a lot for pushing this topic.

On 24-02-26, Adam Ford wrote:
> From: Lucas Stach <l.stach@pengutronix.de>
> 
> This adds the DT nodes for all the peripherals that make up the
> HDMI display pipeline.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Signed-off-by: Adam Ford <aford173@gmail.com>
> Tested-by: Marek Vasut <marex@denx.de>
> Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
> ---
> V6:  Make LCDIF3 disabled by default
> 
> V5:  No change
> 
> V3:  Re-ordered the HDMI parts to properly come after irqstree_hdmi
>      inside AIPS4.  Change size of LCDIF3 and PVI to match TRM sizes
>      of 4KB.
> 
> V2:  I took this from Lucas' original submission with the following:
>      Removed extra clock from HDMI-TX since it is now part of the
>      power domain
>      Added interrupt-parent to PVI
>      Changed the name of the HDMI tranmitter to fsl,imx8mp-hdmi-tx
>      Added ports to HDMI-tx
> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 95 +++++++++++++++++++++++
>  1 file changed, 95 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> index 18bfa7d9aa7f..637b0265b0f1 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -1940,6 +1940,101 @@ irqsteer_hdmi: interrupt-controller@32fc2000 {
>  				clock-names = "ipg";
>  				power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_IRQSTEER>;
>  			};
> +
> +			hdmi_pvi: display-bridge@32fc4000 {
> +				compatible = "fsl,imx8mp-hdmi-pvi";
> +				reg = <0x32fc4000 0x1000>;
> +				interrupt-parent = <&irqsteer_hdmi>;
> +				interrupts = <12>;
> +				power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_PVI>;

this node should be 'status = "disabled";' as reported by Luca else this
node will EPROBE_DEFER. With that beeing fixed you can add my:

Tested-by: Marco Felsch <m.felsch@pengutronix.de>

Regards,
  Marco

> +
> +				ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					port@0 {
> +						reg = <0>;
> +						pvi_from_lcdif3: endpoint {
> +							remote-endpoint = <&lcdif3_to_pvi>;
> +						};
> +					};
> +
> +					port@1 {
> +						reg = <1>;
> +						pvi_to_hdmi_tx: endpoint {
> +							remote-endpoint = <&hdmi_tx_from_pvi>;
> +						};
> +					};
> +				};
> +			};
> +
> +			lcdif3: display-controller@32fc6000 {
> +				compatible = "fsl,imx8mp-lcdif";
> +				reg = <0x32fc6000 0x1000>;
> +				interrupt-parent = <&irqsteer_hdmi>;
> +				interrupts = <8>;
> +				clocks = <&hdmi_tx_phy>,
> +					 <&clk IMX8MP_CLK_HDMI_APB>,
> +					 <&clk IMX8MP_CLK_HDMI_ROOT>;
> +				clock-names = "pix", "axi", "disp_axi";
> +				power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_LCDIF>;
> +				status = "disabled";
> +
> +				port {
> +					lcdif3_to_pvi: endpoint {
> +						remote-endpoint = <&pvi_from_lcdif3>;
> +					};
> +				};
> +			};
> +
> +			hdmi_tx: hdmi@32fd8000 {
> +				compatible = "fsl,imx8mp-hdmi-tx";
> +				reg = <0x32fd8000 0x7eff>;
> +				interrupt-parent = <&irqsteer_hdmi>;
> +				interrupts = <0>;
> +				clocks = <&clk IMX8MP_CLK_HDMI_APB>,
> +					 <&clk IMX8MP_CLK_HDMI_REF_266M>,
> +					 <&clk IMX8MP_CLK_32K>,
> +					 <&hdmi_tx_phy>;
> +				clock-names = "iahb", "isfr", "cec", "pix";
> +				assigned-clocks = <&clk IMX8MP_CLK_HDMI_REF_266M>;
> +				assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_266M>;
> +				power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_HDMI_TX>;
> +				reg-io-width = <1>;
> +				status = "disabled";
> +
> +				ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					port@0 {
> +						reg = <0>;
> +
> +						hdmi_tx_from_pvi: endpoint {
> +							remote-endpoint = <&pvi_to_hdmi_tx>;
> +						};
> +					};
> +
> +					port@1 {
> +						reg = <1>;
> +						/* Point endpoint to the HDMI connector */
> +					};
> +				};
> +			};
> +
> +			hdmi_tx_phy: phy@32fdff00 {
> +				compatible = "fsl,imx8mp-hdmi-phy";
> +				reg = <0x32fdff00 0x100>;
> +				clocks = <&clk IMX8MP_CLK_HDMI_APB>,
> +					 <&clk IMX8MP_CLK_HDMI_24M>;
> +				clock-names = "apb", "ref";
> +				assigned-clocks = <&clk IMX8MP_CLK_HDMI_24M>;
> +				assigned-clock-parents = <&clk IMX8MP_CLK_24M>;
> +				power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_HDMI_TX_PHY>;
> +				#clock-cells = <0>;
> +				#phy-cells = <0>;
> +				status = "disabled";
> +			};
>  		};
>  
>  		pcie: pcie@33800000 {
> -- 
> 2.43.0
> 
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
