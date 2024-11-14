Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 517F5D65C7D
	for <linux-phy@archiver.kernel.org>; Thu, 14 Nov 2024 11:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kY822eoRugCoBk3sYLd1CDcmFXUxot23SmUGcvwkXeI=; b=EtutSOmhEvJHo2
	fgCXUbhR1R4H10y4NgJUO6Ze324SnKUsuPR2Hre1YaadrXH1sXZrTsHCTqXaI3KDdRHrDsgG0K/go
	KHsWCXgeeQB7N4hLp15sC2fmek09VACYRlu0/zkqW3bdBXli9MAnz+QJXPZ7oKAErEnd4zKE0X+KT
	nxtt6RHXMYG3GSHNnScykRCq+hM+zBO+6moxulJKRcxAqPZn13kXuCR6rG6eWkfLYr141nj2swKvJ
	o9nizSNPiRPdjC4zKUdHQ4mVaBD2eA5MNIia//AjzYCfn8sHYL+GHMzE/GLttFS09GlgklMOB4BnW
	llOGot+aPCNOPp6eK6mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBYIg-00000009mO2-0bNm;
	Thu, 14 Nov 2024 11:46:14 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBXZV-00000009dW9-1k2x;
	Thu, 14 Nov 2024 10:59:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1731581973; x=1763117973;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=PDTzpgyCcsIsQrrZZt0ZmVkITJ/vSABUrcmipqkCQmc=;
  b=J0YqImWFBvH0gvAx6LabCkWh1CaQGVJ0dl3uc/M8/IQTIuZIGJz9qXqI
   T7nmoSlAtl0zGNhmDIWLaQxqv6N7wlzkrhLQ/+qix4qEUQmXuaNlvd2ed
   XFAYbyGXaWgW4dA9cRjvX2CfT74AK6AfPAyCP8C9DySd9mbJwx+nTtW4h
   TFr+Sf/4LqVv5q/7UpIY+yE+IV/RamNL3myuynOE2sx7kLUYvLm3ft7qx
   tNVj+bgoT+IJT5gVURjP74im4fnxIPo2yxXaM6TjS/oIPevXoNk6wk3H+
   UPc4/YnKtf2zJO7BmtgJ1SXI5YNl12Ss0erxOC61OC0ncnbS+FLqlSjYG
   A==;
X-CSE-ConnectionGUID: 6/t++77bQzCqLu1Si6Avtg==
X-CSE-MsgGUID: GRh+e+j3QjuOKGKT4vHk0w==
X-IronPort-AV: E=Sophos;i="6.12,153,1728943200"; 
   d="scan'208";a="40037885"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 14 Nov 2024 11:59:28 +0100
X-CheckPoint: {6735D810-1A-1E10F2A5-CC0651E5}
X-MAIL-CPID: 0080E8DE299B7269A5879A7996F82C94_4
X-Control-Analysis: str=0001.0A682F18.6735D810.00AD,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 50BBB161730;
	Thu, 14 Nov 2024 11:59:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1731581963;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PDTzpgyCcsIsQrrZZt0ZmVkITJ/vSABUrcmipqkCQmc=;
	b=HoOAGfqM3P6FcrZRK4KcDfo3zyv7J56DchawjSvGruXe/HyM5oJiuOc2QbPG44Vw3Sort6
	MInZi9ozQCPhfK0qNcTJWisIVs3MKDfnwXMCpUkQucQhml0WG+Y/+CYFCP06HJjXgREMyZ
	Rpy4gU0iAc7gwnjEp83AEHPH28sXnftnGFIfTNVJTy2UVKT7zim4VoV2hv1g1mU2g8Z3hc
	wtQTTNFC6amkQzOI6oCTyk8GiC7c+fNpuVXz+0JybAanDBcxuFksk+BGJDwb2f01tCcxI9
	gzVJEky1WcF9lqUyUywm1staOzEm0ska8lQjxQesBkAh2YqLq2n8LFzpEYdy7g==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, gregkh@linuxfoundation.org, Frank.Li@nxp.com, jun.li@nxp.com, l.stach@pengutronix.de, aford173@gmail.com, hongxing.zhu@nxp.com, Xu Yang <xu.yang_2@nxp.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v9 2/3] arm64: dts: imx95: add usb3 related nodes
Date: Thu, 14 Nov 2024 11:59:23 +0100
Message-ID: <2968363.e9J7NaK4W3@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20241113080745.2300915-2-xu.yang_2@nxp.com>
References: <20241113080745.2300915-1-xu.yang_2@nxp.com> <20241113080745.2300915-2-xu.yang_2@nxp.com>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241114_025934_015590_321EAEAF 
X-CRM114-Status: GOOD (  13.10  )
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

Am Mittwoch, 13. November 2024, 09:07:44 CET schrieb Xu Yang:
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
> Changes in v9:
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

This adds the orientation-switch to all imx95 based boards, which in turn
requires a port subnode.
This is incorrect if this USB interface is not connected to a USB Type-C
connector but an on-board USB hub.

Best regards,
Alexander

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
