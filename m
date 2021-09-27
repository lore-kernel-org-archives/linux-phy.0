Return-Path: <SRS0=YzZ0=OR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D45B0C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 27 Sep 2021 08:35:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9542A60F94
	for <linux-phy@archiver.kernel.org>; Mon, 27 Sep 2021 08:35:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9542A60F94
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KOLF/tvnIQDHlaVywaJbsJ5ot4GdXJmcLsog14pLuoA=; b=Umf7pDVy5kXd3l
	fWYApKt9C4vsSKafV2uYpPxxIijf/Y9ExEFPnnZ8XemOySJgNYMSeyXx9VI3sqbPCWehNFcSrtFB7
	jB2QCKZCVOzrsW/u/3M75n1W1k+awvbFgkeald/FwGT1DtdNkt1CkrPmDt/JnQQg2BRuGd/f2+oV0
	usuxu0Owc3bWJYqO9lwh6nWA4RpTCbALghOv8XCN4PVSZh2cFI3euxFnZkMgWv4fvPMZw4aRMnxQU
	LF1CwVPBOI65KjwgfHcYjdn5a9pCTimeGvmzoVp6LXiSaF9PNFoYmG77ogeuwz9eP3fZ7QXGCs1rF
	B87WVhoq2vcT4Qd/Oo6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mUm6c-0023zs-0f; Mon, 27 Sep 2021 08:35:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mUm6X-0023xU-86
 for linux-phy@lists.infradead.org; Mon, 27 Sep 2021 08:35:19 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1mUm6R-0005O5-FN; Mon, 27 Sep 2021 10:35:11 +0200
Message-ID: <b7604aa25a5d6746025fadeea42a7cc4b5f884ff.camel@pengutronix.de>
Subject: Re: [PATCH v2 3/4] arm64: dts: imx8mm: add the pcie phy support
From: Lucas Stach <l.stach@pengutronix.de>
To: Richard Zhu <hongxing.zhu@nxp.com>, kishon@ti.com, vkoul@kernel.org, 
 robh@kernel.org, galak@kernel.crashing.org, shawnguo@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@pengutronix.de, linux-imx@nxp.com
Date: Mon, 27 Sep 2021 10:35:09 +0200
In-Reply-To: <1632641983-1455-4-git-send-email-hongxing.zhu@nxp.com>
References: <1632641983-1455-1-git-send-email-hongxing.zhu@nxp.com>
 <1632641983-1455-4-git-send-email-hongxing.zhu@nxp.com>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210927_013517_387116_CDB2D30A 
X-CRM114-Status: GOOD (  14.02  )
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

Am Sonntag, dem 26.09.2021 um 15:39 +0800 schrieb Richard Zhu:
> Add the PCIe PHY support on iMX8MM platforms.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi |  4 ++++
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi     | 12 ++++++++++++

This should be split into 2 patches: one for the SoC and one for the
EVK board.

>  2 files changed, 16 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> index e033d0257b5a..e7f398433486 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> @@ -289,6 +289,10 @@ pca6416: gpio@20 {
>  	};
>  };
>  
> +&pcie_phy {
> +	status = "okay";
> +};
> +
>  &sai3 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_sai3>;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index e7648c3b8390..de231d531ba4 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -998,6 +998,18 @@ usbmisc2: usbmisc@32e50200 {
>  				reg = <0x32e50200 0x200>;
>  			};
>  
> +			pcie_phy: pcie-phy@32f00000 {
> +				compatible = "fsl,imx8mm-pcie-phy";
> +				reg = <0x32f00000 0x10000>;
> +				clocks = <&clk IMX8MM_CLK_PCIE1_PHY>;
> +				clock-names = "phy";
> +				assigned-clocks = <&clk IMX8MM_CLK_PCIE1_PHY>;
> +				assigned-clock-rates = <100000000>;
> +				assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_100M>;
> +				#phy-cells = <0>;
> +				fsl,refclk-pad-mode = <1>;

Move this to the board DT, as the pad mode is a board level decision.
Also use the enum instead of raw value.

> +				status = "disabled";
> +			};
>  		};
>  
>  		dma_apbh: dma-controller@33000000 {



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
