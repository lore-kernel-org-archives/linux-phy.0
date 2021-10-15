Return-Path: <SRS0=Q62d=PD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE402C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 15 Oct 2021 18:30:40 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8FE0D61040
	for <linux-phy@archiver.kernel.org>; Fri, 15 Oct 2021 18:30:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8FE0D61040
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zMTxd3rc4v8ARR5inrt4mHI0PisK1AwxsAVLf9NOnbk=; b=F3ALV3Ab9Ua+R9
	NVwPOTiS0ybV6z9HXIHt+hajXWXml0SQ+Lx4M4/LKisccs3Kd0jOHcFGvPXrKAd87DUrTv9n2+2H+
	3iNk4rN6ZRe6ezOydE1Z34FfN86BZFkUzZKqdkjvISSv582bCc/HcLy6kyxhdr7aQ4xVO3hJ+45PA
	ruNeGl/TnepQAzq4prhjvSF++On3bVbEhE6GJVV/MmGH7ynVLSe9F5mPw7AKMujkqpNj4JgQKETr4
	42ZifaL+2mFeAedTrVog1oTuQPEvANOyjMVaMlXeed8pJ9Wp/IU91CC2uYEJcNElBYpDSUybWdpS0
	+TWt1NHvUfaJGVulyqJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbRya-008SAa-33; Fri, 15 Oct 2021 18:30:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbRyX-008S9T-Q2
 for linux-phy@lists.infradead.org; Fri, 15 Oct 2021 18:30:39 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1mbRyR-0002Jg-8A; Fri, 15 Oct 2021 20:30:31 +0200
Message-ID: <81462d405b92472c699f47c0d49e980cda857426.camel@pengutronix.de>
Subject: Re: [PATCH v3 3/9] arm64: dts: imx8mm: add the pcie phy support
From: Lucas Stach <l.stach@pengutronix.de>
To: Richard Zhu <hongxing.zhu@nxp.com>, tharvey@gateworks.com,
 kishon@ti.com,  vkoul@kernel.org, robh@kernel.org,
 galak@kernel.crashing.org, shawnguo@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@pengutronix.de, linux-imx@nxp.com
Date: Fri, 15 Oct 2021 20:30:28 +0200
In-Reply-To: <1634028078-2387-4-git-send-email-hongxing.zhu@nxp.com>
References: <1634028078-2387-1-git-send-email-hongxing.zhu@nxp.com>
 <1634028078-2387-4-git-send-email-hongxing.zhu@nxp.com>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211015_113037_875726_40A257DF 
X-CRM114-Status: GOOD (  12.83  )
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

Am Dienstag, dem 12.10.2021 um 16:41 +0800 schrieb Richard Zhu:
> Add the PCIe PHY support on iMX8MM platforms.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index c2f3f118f82e..ac5d11466608 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -1135,6 +1135,19 @@ usbmisc2: usbmisc@32e50200 {
>  				reg = <0x32e50200 0x200>;
>  			};
>  
> +			pcie_phy: pcie-phy@32f00000 {
> +				compatible = "fsl,imx8mm-pcie-phy";
> +				reg = <0x32f00000 0x10000>;
> +				clocks = <&clk IMX8MM_CLK_PCIE1_PHY>;
> +				clock-names = "phy";

Clock name specified in the binding is "ref".

> +				assigned-clocks = <&clk IMX8MM_CLK_PCIE1_PHY>;
> +				assigned-clock-rates = <100000000>;
> +				assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_100M>;
> +				resets = <&src IMX8MQ_RESET_PCIEPHY>;
> +				reset-names = "pciephy";
> +				#phy-cells = <0>;
> +				status = "disabled";
> +			};
>  		};
>  
>  		dma_apbh: dma-controller@33000000 {



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
