Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 700E6D1AD30
	for <linux-phy@archiver.kernel.org>; Wed, 16 Oct 2024 08:57:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z/V0SFo+YoySnSffWMhVDNY7HlnxHT7lpXfZaGtbq48=; b=zsFrd7oSv+sw6q
	rkBnmn4R/ExgvLULb9mWeesZydTNXqfsEvJaLnmBjg0LejeMZ/NzrWkrEdyaXNdC9JDLRXgw4UdQr
	qP4iVH3p5B947RGwporh1uQjnSHjD8JL58+cnixAls/1djTotOTo1WIrK6HbbYF3ysnT9sA2WSJ/H
	SE0NUMqKi3d77nLNBKCU4YQdvbywgEsxS2/FxAwxfzC2/F/l9Me79+7PcgCd8scZk5eyGW0l07EwA
	8dAu0TzJHjKXJLBxIZ42vvD+ryZZW7XFoH5BCWq5sIektRl2aXxRdy9C2/jr4OeKEA8NoHVQddGEO
	DD3qIrUT1SIRVqbAzL/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0zqO-0000000B874-3P8y;
	Wed, 16 Oct 2024 08:57:24 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0zn5-0000000B7ML-2Ocb;
	Wed, 16 Oct 2024 08:54:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1729068839; x=1760604839;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=k6T+vMrh8+eViQD0mNH7DcuKMC8arv9x+jXY+RWhEHY=;
  b=kUjPRdnptEreX8hdcwj4QWjHfhodlkj7lb4MV6JEoIsaijQdqRwMkXZC
   +olHIp+Bot4z80ag7TNb51urbnEdlGFTVzkowqTrizDD9GJ5I7CB52ENo
   oBo5RXfERbsUHtamXixP0GJ295oKFgpDJ3MftDyF2zqX6rhlRLW0+9ny0
   5MO8Ku8Isa6l3vzfSifGYWUvlQ/GYRDU8Rn3Egt7I1arvv5WBsVJpoArk
   FW5YRpHZzQRAS+nKy5J6RRdwsK9jgOBaRsW0hdSA9U7V427Z7HpBr/sE+
   pBZJgva/3PzlD+2e/1HukdKgLml5SyxfBqa3XnmNSRaJ7YKLHv5qbNME1
   g==;
X-CSE-ConnectionGUID: uiMi2LlbS4yrX1ZxLP23XA==
X-CSE-MsgGUID: whIy4NY3Rh+x/VF+gai7Fw==
X-IronPort-AV: E=Sophos;i="6.11,207,1725314400"; 
   d="scan'208";a="39488222"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 16 Oct 2024 10:53:56 +0200
X-CheckPoint: {670F7F24-4F-65F98A6A-FADAF7F3}
X-MAIL-CPID: BD98F773564CB09642D99A66B771562A_5
X-Control-Analysis: str=0001.0A682F16.670F7F25.0060,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id DA47C169194;
	Wed, 16 Oct 2024 10:53:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1729068832;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=k6T+vMrh8+eViQD0mNH7DcuKMC8arv9x+jXY+RWhEHY=;
	b=PQnu6w7snCIkADUXXcOfldKtAbC76TFuSiboRpcrqI5evPvutmXjR34KE5MOgcLdjtmE1w
	tNDY/I9G5YD+Woe9TPbH/Kf5ED3siUbVs807u0thA2fWCdgj8yCJcVqr9XFc1ye/tM9/fl
	0wb+Cy8U6/Q5l21w9cxP2uuXY7Gc8DJvFQkjTs880vt5Dd3IJvFIf4F5I1MmS4cZ5bAxkm
	EDehLB4cktHPbIlf+B3gBIfWTibGz8D4hK14EzY8GuyMXVdtLxAb+uuWsRkshN424TRzyz
	6lbtNUcGNnkKugv4sgsIWdDwuzQa4XIF9+V8i/MJWcMNVeLzgNIBCpy10s41xg==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, gregkh@linuxfoundation.org, peter.chen@kernel.org, herve.codina@bootlin.com, Xu Yang <xu.yang_2@nxp.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org, jun.li@nxp.com
Subject: Re: [PATCH v8 2/3] arm64: dts: imx95: add usb3 related nodes
Date: Wed, 16 Oct 2024 10:53:50 +0200
Message-ID: <22464382.EfDdHjke4D@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20241015111018.2388913-2-xu.yang_2@nxp.com>
References: <20241015111018.2388913-1-xu.yang_2@nxp.com> <20241015111018.2388913-2-xu.yang_2@nxp.com>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_015400_205973_473B174A 
X-CRM114-Status: GOOD (  12.95  )
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

another thing I just noticed.

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

I got these dtbs check warnings:

arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dtb:
 phy@4c1f0040: 'oneOf' conditional failed, one must be fixed:
        'port' is a required property
        'ports' is a required property
        from schema $id: http://devicetree.org/schemas/phy/fsl,imx8mq-usb-p=
hy.yaml#
arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dtb: =

 phy@4c1f0040: Unevaluated properties are not allowed ('orientation-switch'=
 was unexpected)
        from schema $id: http://devicetree.org/schemas/phy/fsl,imx8mq-usb-p=
hy.yaml#


How am I supposed to specify a port when the usb3 is used in host mode, thus
no USB Type-C connector and no 'port' OF-graph accordingly?

Best regards,
Alexander

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
