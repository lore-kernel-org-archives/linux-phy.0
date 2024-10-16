Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC6DCD1AD2A
	for <linux-phy@archiver.kernel.org>; Wed, 16 Oct 2024 08:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2JeqIDZA5LO1Xh5/iNmtPnep0OpCzn/aQHPDpq9wc8o=; b=3XL9CRk2IyTFGH
	prsS3c8GzhWucMzChfMdkHOu1QfN5rUn/xyVMiyxDAl20BOl6CROp1t87sBUybhb1FExbqiZ36Pbx
	FugF8iGWO9e81YQ/6UQunrpedjbOMYju5aKSvlWTcjNfuRe7dSqhzU928f2xGlql5mJ6VcARziSrN
	lnpAaeESPo7fe3aR6OfkCqoxUSiQXB99GOe6sQFvxdct1x0WGQQ7hGyX6YWkRt0nzm/4KWbk/MeFt
	WihMUQnI7cU+WJkrPhd+SCzDj2KrwBfF1TyEg5EAZ7jZ+DsfS5a+viqyrSu0XnApNG8222jcca4eK
	MWKzPC2n9K6/WMBPzOCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0zgQ-0000000B5pu-106y;
	Wed, 16 Oct 2024 08:47:06 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0zYg-0000000B4CA-3yit;
	Wed, 16 Oct 2024 08:39:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1729067947; x=1760603947;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Al16EzMBGhlTDMwmtBM4msdAumqBKH3tC5qZ61ZgNHo=;
  b=YZ7RTp2kklKfxXedsS/IA5pSvy6oGLGdhJMoW5OaXCn6EtVz2QtJyUMv
   3jC+QNajTrQMK68/ShcK5X0ezI5z1QFgRGsXi3l1UNdUlwrb49Wt9NTCM
   Pe5moWHt4gwUZnPouLK56sgIO9P+Uvjy/nNH+Ttei7YBaQ0ZMpfFDyEDP
   ztVw6eo9VWYGfNiI5+K6lyDv9ZAYeEZgqHNaMWkInY4HFiAIm/XlRG1G1
   tLn6xLJxkRDIeFviBqmlDV4tiyHM48VNrHvDSD96sv0vQS9aowSy20dyW
   kZzl21k55D0Te3zdCvk6Iv8/G63FKVyjleGfbMgdFBXjaaKzijSbn/9d/
   A==;
X-CSE-ConnectionGUID: Fi5IwMEnS1239q5Z2avZ4w==
X-CSE-MsgGUID: B2edffbpQDayc5i4k+NcIw==
X-IronPort-AV: E=Sophos;i="6.11,207,1725314400"; 
   d="scan'208";a="39487747"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 16 Oct 2024 10:39:03 +0200
X-CheckPoint: {670F7BA7-24-8E59014-E6F31237}
X-MAIL-CPID: FEC6AC4042E72B571F7164006AB52AB5_1
X-Control-Analysis: str=0001.0A682F1E.670F7BA7.0111,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id DD23B169731;
	Wed, 16 Oct 2024 10:38:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1729067939;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=Al16EzMBGhlTDMwmtBM4msdAumqBKH3tC5qZ61ZgNHo=;
	b=cbUb64k0DGgAGUFfgmMKQ6F1/UnLGvEJdf3Iy/3oVwTiBiA84LPKazf5LEwLtuafRK48C/
	MGLHRyLNif3HfiJMcCY/oQ94zla/JcR4D58sjU4nnQGbfKmHOIz/Sq4EI8eBYgmEY5AfKr
	GM3SaGF5nwImNLYB7Uw51p3A6gylzmWdPWXCb/reUuO+NL5TeaMZu/wGGpPoi+E0ZeIWsS
	8Vw6drhx9vNylbhz2fjx40m3Y75Drt/SYpCnx5g6xMO2dCsigiKcHB4mI1HHR7GtivzI+a
	zAtV3FM3LknyPP0l6t5QHwnc7XeC7dbmI43HLBjR7I6ccsT8PVvv+m/Ah01hvQ==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, gregkh@linuxfoundation.org, peter.chen@kernel.org, herve.codina@bootlin.com, Xu Yang <xu.yang_2@nxp.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org, jun.li@nxp.com
Subject: Re: [PATCH v8 2/3] arm64: dts: imx95: add usb3 related nodes
Date: Wed, 16 Oct 2024 10:38:52 +0200
Message-ID: <3321333.aeNJFYEL58@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20241015111018.2388913-2-xu.yang_2@nxp.com>
References: <20241015111018.2388913-1-xu.yang_2@nxp.com> <20241015111018.2388913-2-xu.yang_2@nxp.com>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_013907_519383_4200E572 
X-CRM114-Status: GOOD (  11.35  )
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

Hello,

Am Dienstag, 15. Oktober 2024, 13:10:17 CEST schrieb Xu Yang:
> Add usb3 phy and controller nodes for imx95.
> =

> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> =

> ---
> Changes in v2:
>  - no changes
> Changes in v3:
>  - no changes
> Changes in v4:
>  - reorder nodes
> Changes in v5:
>  - no changes
> Changes in v6:
>  - rebase to latest
> Changes in v7:
>  - no changes
> Changes in v8:
>  - no changes
> ---
>  arch/arm64/boot/dts/freescale/imx95.dtsi | 43 ++++++++++++++++++++++++
>  1 file changed, 43 insertions(+)
> =

> diff --git a/arch/arm64/boot/dts/freescale/imx95.dtsi b/arch/arm64/boot/d=
ts/freescale/imx95.dtsi
> index 03661e76550f..e3faa8462759 100644
> --- a/arch/arm64/boot/dts/freescale/imx95.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx95.dtsi
> @@ -1473,6 +1473,49 @@ smmu: iommu@490d0000 {
>  			};
>  		};
>  =

> +		usb3: usb@4c010010 {
> +			compatible =3D "fsl,imx95-dwc3", "fsl,imx8mp-dwc3";
> +			reg =3D <0x0 0x4c010010 0x0 0x04>,
> +			      <0x0 0x4c1f0000 0x0 0x20>;
> +			clocks =3D <&scmi_clk IMX95_CLK_HSIO>,
> +				 <&scmi_clk IMX95_CLK_32K>;
> +			clock-names =3D "hsio", "suspend";
> +			interrupts =3D <GIC_SPI 173 IRQ_TYPE_LEVEL_HIGH>;
> +			#address-cells =3D <2>;
> +			#size-cells =3D <2>;
> +			ranges;
> +			power-domains =3D <&scmi_devpd IMX95_PD_HSIO_TOP>;
> +			dma-ranges =3D <0x0 0x0 0x0 0x0 0x10 0x0>;
> +			status =3D "disabled";
> +
> +			usb3_dwc3: usb@4c100000 {
> +				compatible =3D "snps,dwc3";
> +				reg =3D <0x0 0x4c100000 0x0 0x10000>;
> +				clocks =3D <&scmi_clk IMX95_CLK_HSIO>,
> +					 <&scmi_clk IMX95_CLK_24M>,
> +					 <&scmi_clk IMX95_CLK_32K>;
> +				clock-names =3D "bus_early", "ref", "suspend";
> +				interrupts =3D <GIC_SPI 175 IRQ_TYPE_LEVEL_HIGH>;
> +				phys =3D <&usb3_phy>, <&usb3_phy>;
> +				phy-names =3D "usb2-phy", "usb3-phy";
> +				snps,gfladj-refclk-lpm-sel-quirk;
> +				snps,parkmode-disable-ss-quirk;

Downstream kernel also configures
> snps,tx-max-burst =3D /bits/ 8 <4>;
> snps,tx-thr-num-pkt =3D /bits/ 8 <1>;

is this not needed and omitted on purpose?

Best regards,
Alexander

> +				iommus =3D <&smmu 0xe>;
> +			};
> +		};
> +
> +		usb3_phy: phy@4c1f0040 {
> +			compatible =3D "fsl,imx95-usb-phy", "fsl,imx8mp-usb-phy";
> +			reg =3D <0x0 0x4c1f0040 0x0 0x40>,
> +			      <0x0 0x4c1fc000 0x0 0x100>;
> +			clocks =3D <&scmi_clk IMX95_CLK_HSIO>;
> +			clock-names =3D "phy";
> +			#phy-cells =3D <0>;
> +			power-domains =3D <&scmi_devpd IMX95_PD_HSIO_TOP>;
> +			orientation-switch;
> +			status =3D "disabled";
> +		};
> +
>  		pcie0: pcie@4c300000 {
>  			compatible =3D "fsl,imx95-pcie";
>  			reg =3D <0 0x4c300000 0 0x10000>,
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
