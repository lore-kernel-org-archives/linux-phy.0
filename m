Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E8CECA101E
	for <linux-phy@archiver.kernel.org>; Sun,  1 Sep 2024 08:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lDpwFXpq/PT9aT2IhJMHMYZhAhTis9HpkP2t7KbM1OI=; b=iQsSCNTEAXu3+j
	KGR5LHKzOIknB/0uVSqGKu9dXg2uvuKgA3TBwsvLCCgadbLieF6snwY5MiNzwG9W8MdYDrF27SIi5
	8V+gsHHZ4QUrFd6fe7FwIIR0ba77UfvbYWFfKS32TXUgFS/awiQnpA02yHk41WibV9XvC9X2f+IM3
	rtM4TIeZLp3NQB7BFSnKiDTvEKjF/BK9SpLZKil7W/MKhPcopb2Wo9nGMtIQLJvqj/VX0RdTRiyTK
	PShPfF7mwMUACX+Hu31WDKKiEBT/JQSnNTgXg0lEyPbE8DZZo1Mju1v7StYNqKVMzW41KuSWc4u/7
	DYyRbI2xgAEss3XJW0uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skfcL-0000000B9UT-2tZq;
	Sun, 01 Sep 2024 08:07:25 +0000
Received: from mail-m16.yeah.net ([220.197.32.19])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skfcJ-0000000B9Ty-0Wqs;
	Sun, 01 Sep 2024 08:07:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=7u7AOaHLwE9q3P+6liu00OMqbJ/gWmnFJKpZmoN9Dr8=;
	b=FPrdAQY1DM27COWhDwJugxNQf/KqQIdLYBlWIyNlx4Q1HyepMrxfzJmnt0tK/v
	bCT1rOMfSo9mbsab8xCxYj3K6072FOB4oX8XjRXJOYAELyGr1GMQHtbKSPu/dF+t
	M2DeA5hzAT8zMroZOJvu0fCy6aIoMAdynhxjPvK+i58X8=
Received: from dragon (unknown [114.216.210.89])
	by gzsmtp3 (Coremail) with SMTP id M88vCgDnzwKlINRmKt9CAA--.32856S3;
	Sun, 01 Sep 2024 16:07:03 +0800 (CST)
Date: Sun, 1 Sep 2024 16:07:01 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	gregkh@linuxfoundation.org, Frank.Li@nxp.com, jun.li@nxp.com,
	l.stach@pengutronix.de, aford173@gmail.com, hongxing.zhu@nxp.com,
	alexander.stein@ew.tq-group.com, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v3 4/5] arm64: dts: imx95: add usb3 related nodes
Message-ID: <ZtQgpYY9KjP9FUi5@dragon>
References: <20240826070854.1948347-1-xu.yang_2@nxp.com>
 <20240826070854.1948347-4-xu.yang_2@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240826070854.1948347-4-xu.yang_2@nxp.com>
X-CM-TRANSID: M88vCgDnzwKlINRmKt9CAA--.32856S3
X-Coremail-Antispam: 1Uf129KBjvJXoW7KFyftrW8CrWDCr1xCw47twb_yoW8try8p3
	srGayUZrs2gF1IkFWaqF48KF95J3y0kFZ5ur1fWryjkr9xZ3sFgFWIkF1S9r18XrsrXw4j
	qFsaqF12kFnxtw7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07j4g4fUUUUU=
X-Originating-IP: [114.216.210.89]
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiAgtNZWbUDSsrwgAAsc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240901_010723_507170_C1D9D9D6 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Mon, Aug 26, 2024 at 03:08:53PM +0800, Xu Yang wrote:
> Add usb3 phy and controller nodes for imx95.
> 
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> 
> ---
> Changes in v2:
>  - no changes
> Changes in v3:
>  - no changes
> ---
>  arch/arm64/boot/dts/freescale/imx95.dtsi | 43 ++++++++++++++++++++++++
>  1 file changed, 43 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx95.dtsi b/arch/arm64/boot/dts/freescale/imx95.dtsi
> index 1bbf9a0468f6..06a7c2f1e211 100644
> --- a/arch/arm64/boot/dts/freescale/imx95.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx95.dtsi
> @@ -1188,5 +1188,48 @@ pcie1_ep: pcie-ep@4c380000 {
>  			power-domains = <&scmi_devpd IMX95_PD_HSIO_TOP>;
>  			status = "disabled";
>  		};
> +
> +		usb3_phy: phy@4c1f0040 {
> +			compatible = "fsl,imx95-usb-phy", "fsl,imx8mp-usb-phy";
> +			reg = <0x0 0x4c1f0040 0x0 0x40>,
> +			      <0x0 0x4c1fc000 0x0 0x100>;
> +			clocks = <&scmi_clk IMX95_CLK_HSIO>;
> +			clock-names = "phy";
> +			#phy-cells = <0>;
> +			power-domains = <&scmi_devpd IMX95_PD_HSIO_TOP>;
> +			orientation-switch;
> +			status = "disabled";
> +		};
> +
> +		usb3: usb@4c010010 {

Please try to sort nodes with unit-address in the address.

Shawn

> +			compatible = "fsl,imx95-dwc3", "fsl,imx8mp-dwc3";
> +			reg = <0x0 0x4c010010 0x0 0x04>,
> +			      <0x0 0x4c1f0000 0x0 0x20>;
> +			clocks = <&scmi_clk IMX95_CLK_HSIO>,
> +				 <&scmi_clk IMX95_CLK_32K>;
> +			clock-names = "hsio", "suspend";
> +			interrupts = <GIC_SPI 173 IRQ_TYPE_LEVEL_HIGH>;
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			ranges;
> +			power-domains = <&scmi_devpd IMX95_PD_HSIO_TOP>;
> +			dma-ranges = <0x0 0x0 0x0 0x0 0x10 0x0>;
> +			status = "disabled";
> +
> +			usb3_dwc3: usb@4c100000 {
> +				compatible = "snps,dwc3";
> +				reg = <0x0 0x4c100000 0x0 0x10000>;
> +				clocks = <&scmi_clk IMX95_CLK_HSIO>,
> +					 <&scmi_clk IMX95_CLK_24M>,
> +					 <&scmi_clk IMX95_CLK_32K>;
> +				clock-names = "bus_early", "ref", "suspend";
> +				interrupts = <GIC_SPI 175 IRQ_TYPE_LEVEL_HIGH>;
> +				phys = <&usb3_phy>, <&usb3_phy>;
> +				phy-names = "usb2-phy", "usb3-phy";
> +				snps,gfladj-refclk-lpm-sel-quirk;
> +				snps,parkmode-disable-ss-quirk;
> +				iommus = <&smmu 0xe>;
> +			};
> +		};
>  	};
>  };
> -- 
> 2.34.1
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
