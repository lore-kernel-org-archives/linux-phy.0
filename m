Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D985CD37487
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 12:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=khrCZfnjMMoo0DAK4v986D8fClQwWOVKlZjxOn3r8Mg=; b=yKCoL+RUJFWjPc
	OahGBnkYOy+0bF/3IaywgFCRv0jasKZjodNoAzB/WzV6wPZQLT8hG4MEIipvhkxQy25berOPzCGfa
	6H3xTXtfRdJwn92Qh9loIxXxMCatvM187JY1aZqZAZe4+4uBg4gbCghN2JZQl67NBxmw9PfAsfeRh
	BmaDTqS2n0dzxgXfDTyzhzhv6GZRqMjsCx3kqjdjZmpd5fZhaAdnaPptkdDsKi0vh3eYhQS97tAYH
	dot1qf5sAQRuHlqeaX0BHkH3x0rL+6HO/Dz2YevUGBl53A2CZMahq51ZyprvrCJqF94J451Lz1ouZ
	3kMscNjJnu+hQrBZgcWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1PtA-0000000Ep0F-2UE1;
	Thu, 17 Oct 2024 12:46:00 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1Ora-0000000EeyT-15vM;
	Thu, 17 Oct 2024 11:40:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1729165218; x=1760701218;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=kJuzgQVggSFZDvndl8gdAWLVRotKHx86fblnh5fFmd0=;
  b=A0zrpxzNdlKpENz2gPQAYFb0nVMcfirVNkl1nZ0eqorZlDBy5Oy+YxJy
   bVPb+Hu2zeLNcS5p+l+1hVhF5OBffZNy60eJ0aqOUk6bqMXKiRVSX2I47
   v1MXIlCHMbpCyPW2gGwmqMIAInVqAkj7gaKKSfKmga7uV2Ct0L1O8RKL9
   andMhMZXPK9mn52BufKlNLOKM5qwOkf6YBTk9K1JQ3NnVFLOzCqkKpjdT
   H7Ff1mimbd8P2CB0ZqHlyfoUozsLf/Som+bmCZ0SarebUBDXUqIPHyMIV
   rNWPSOPP3IKBkAAB0ohUlejU39AJcabIMryMcPMifrRAFivKdYaELRISV
   w==;
X-CSE-ConnectionGUID: mMs4STnGQGKSUKQeXL98tQ==
X-CSE-MsgGUID: zdgezkh5QuO44LczNX/GRQ==
X-IronPort-AV: E=Sophos;i="6.11,210,1725314400"; 
   d="scan'208";a="39518762"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 17 Oct 2024 13:40:13 +0200
X-CheckPoint: {6710F79D-1F-65F98A6A-FADAF7F3}
X-MAIL-CPID: 95AEEE99C7620A490EDDA5333648FD71_5
X-Control-Analysis: str=0001.0A682F25.6710F79D.00C9,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id C62D916A787;
	Thu, 17 Oct 2024 13:40:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1729165209;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=kJuzgQVggSFZDvndl8gdAWLVRotKHx86fblnh5fFmd0=;
	b=Njq8yjQscqnQppBZKWbdBYP0mmRqD6gNmkUf1KsNIpm4EWpUzQSOypBareewyf68w0i84D
	DQxBiTN+2aBBxIy6cikVVZshOvuWIIvpq9HT8rRYp18Fz5+PRzrVPuzxgCgFXD/KVZnhnm
	nQkn4ZThJ9Yc2dilD0vMYGfH6aA0rKg+qm2LMnjKDdR0+42aMqtUAj2d6Das8xxfDOpeps
	YO5rqOUV/HtIUwOVLtyervM83AGbeavCNS2bOQXNvwGrUr2Hx3narUYBLa0ff1e3+l0c5z
	AasvXn4OwCJmKhtF0/J+YgagCKE9iB1xvDPaGe/984/x5ajS0Q2vkB+Nq35iFA==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Xu Yang <xu.yang_2@nxp.com>, robh@kernel.org, krzk+dt@kernel.org
Cc: vkoul@kernel.org, kishon@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, gregkh@linuxfoundation.org, peter.chen@kernel.org, herve.codina@bootlin.com, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org, jun.li@nxp.com
Subject: Re: [PATCH v8 2/3] arm64: dts: imx95: add usb3 related nodes
Date: Thu, 17 Oct 2024 13:40:06 +0200
Message-ID: <4386576.ejJDZkT8p0@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20241017102811.oweshkoxavt2l4hi@hippo>
References: <20241015111018.2388913-1-xu.yang_2@nxp.com> <3252989.5fSG56mABF@steina-w> <20241017102811.oweshkoxavt2l4hi@hippo>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_044018_832847_0D0CA4E5 
X-CRM114-Status: GOOD (  28.07  )
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

Am Donnerstag, 17. Oktober 2024, 12:28:11 CEST schrieb Xu Yang:
> On Wed, Oct 16, 2024 at 01:03:53PM +0200, Alexander Stein wrote:
> > Hi,
> > =

> > Am Mittwoch, 16. Oktober 2024, 12:41:40 CEST schrieb Xu Yang:
> > > On Wed, Oct 16, 2024 at 10:53:50AM +0200, Alexander Stein wrote:
> > > > Hi,
> > > > =

> > > > another thing I just noticed.
> > > > =

> > > > Am Dienstag, 15. Oktober 2024, 13:10:17 CEST schrieb Xu Yang:
> > > > > Add usb3 phy and controller nodes for imx95.
> > > > > =

> > > > > Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> > > > > =

> > > > > ---
> > > > > Changes in v2:
> > > > >  - no changes
> > > > > Changes in v3:
> > > > >  - no changes
> > > > > Changes in v4:
> > > > >  - reorder nodes
> > > > > Changes in v5:
> > > > >  - no changes
> > > > > Changes in v6:
> > > > >  - rebase to latest
> > > > > Changes in v7:
> > > > >  - no changes
> > > > > Changes in v8:
> > > > >  - no changes
> > > > > ---
> > > > >  arch/arm64/boot/dts/freescale/imx95.dtsi | 43 ++++++++++++++++++=
++++++
> > > > >  1 file changed, 43 insertions(+)
> > > > > =

> > > > > diff --git a/arch/arm64/boot/dts/freescale/imx95.dtsi b/arch/arm6=
4/boot/dts/freescale/imx95.dtsi
> > > > > index 03661e76550f..e3faa8462759 100644
> > > > > --- a/arch/arm64/boot/dts/freescale/imx95.dtsi
> > > > > +++ b/arch/arm64/boot/dts/freescale/imx95.dtsi
> > > > > @@ -1473,6 +1473,49 @@ smmu: iommu@490d0000 {
> > > > >  			};
> > > > >  		};
> > > > >  =

> > > > > +		usb3: usb@4c010010 {
> > > > > +			compatible =3D "fsl,imx95-dwc3", "fsl,imx8mp-dwc3";
> > > > > +			reg =3D <0x0 0x4c010010 0x0 0x04>,
> > > > > +			      <0x0 0x4c1f0000 0x0 0x20>;
> > > > > +			clocks =3D <&scmi_clk IMX95_CLK_HSIO>,
> > > > > +				 <&scmi_clk IMX95_CLK_32K>;
> > > > > +			clock-names =3D "hsio", "suspend";
> > > > > +			interrupts =3D <GIC_SPI 173 IRQ_TYPE_LEVEL_HIGH>;
> > > > > +			#address-cells =3D <2>;
> > > > > +			#size-cells =3D <2>;
> > > > > +			ranges;
> > > > > +			power-domains =3D <&scmi_devpd IMX95_PD_HSIO_TOP>;
> > > > > +			dma-ranges =3D <0x0 0x0 0x0 0x0 0x10 0x0>;
> > > > > +			status =3D "disabled";
> > > > > +
> > > > > +			usb3_dwc3: usb@4c100000 {
> > > > > +				compatible =3D "snps,dwc3";
> > > > > +				reg =3D <0x0 0x4c100000 0x0 0x10000>;
> > > > > +				clocks =3D <&scmi_clk IMX95_CLK_HSIO>,
> > > > > +					 <&scmi_clk IMX95_CLK_24M>,
> > > > > +					 <&scmi_clk IMX95_CLK_32K>;
> > > > > +				clock-names =3D "bus_early", "ref", "suspend";
> > > > > +				interrupts =3D <GIC_SPI 175 IRQ_TYPE_LEVEL_HIGH>;
> > > > > +				phys =3D <&usb3_phy>, <&usb3_phy>;
> > > > > +				phy-names =3D "usb2-phy", "usb3-phy";
> > > > > +				snps,gfladj-refclk-lpm-sel-quirk;
> > > > > +				snps,parkmode-disable-ss-quirk;
> > > > > +				iommus =3D <&smmu 0xe>;
> > > > > +			};
> > > > > +		};
> > > > > +
> > > > > +		usb3_phy: phy@4c1f0040 {
> > > > > +			compatible =3D "fsl,imx95-usb-phy", "fsl,imx8mp-usb-phy";
> > > > > +			reg =3D <0x0 0x4c1f0040 0x0 0x40>,
> > > > > +			      <0x0 0x4c1fc000 0x0 0x100>;
> > > > > +			clocks =3D <&scmi_clk IMX95_CLK_HSIO>;
> > > > > +			clock-names =3D "phy";
> > > > > +			#phy-cells =3D <0>;
> > > > > +			power-domains =3D <&scmi_devpd IMX95_PD_HSIO_TOP>;
> > > > > +			orientation-switch;
> > > > > +			status =3D "disabled";
> > > > =

> > > > I got these dtbs check warnings:
> > > > =

> > > > arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dtb:
> > > >  phy@4c1f0040: 'oneOf' conditional failed, one must be fixed:
> > > >         'port' is a required property
> > > >         'ports' is a required property
> > > >         from schema $id: http://devicetree.org/schemas/phy/fsl,imx8=
mq-usb-phy.yaml#
> > > > arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dtb: =

> > > >  phy@4c1f0040: Unevaluated properties are not allowed ('orientation=
-switch' was unexpected)
> > > >         from schema $id: http://devicetree.org/schemas/phy/fsl,imx8=
mq-usb-phy.yaml#
> > > =

> > > Are you checking on usb tree? You need below two dt-binding patch.
> > > =

> > >  - dt-bindings: usb: dwc3-imx8mp: add compatible string for imx95
> > >  - dt-bindings: phy: imx8mq-usb: add compatible "fsl,imx95-usb-phy"
> > =

> > Yes, these patches are already in linux-next. I'm on next-20241016.
> > =

> > > > =

> > > > =

> > > > How am I supposed to specify a port when the usb3 is used in host m=
ode, thus
> > > > no USB Type-C connector and no 'port' OF-graph accordingly?
> > > =

> > > Host-only mode with Type-A connector? No Typec-C connector?
> > > Sorry, I do not get your meaning.
> > =

> > Yes, no Type-C connector. Actually not even a Type-A as there is an
> > on-board USB hub attached to this host.
> =

> Understood. imx95 usb phy can work w/o typec. So I may need modify the
> dt-binding to be similar to the following format:
> =

> If property "orientation-switch" exist and compatible contain "fsl,imx95-=
usb-phy",
> then refer to usb-switch.yaml.

What 'works' is adding an empty port node to the usb3_phy. But this feels l=
ike a workaround.

> However, I'm not sure how to do that now. Do you know?

DT guys, can you more input how to proceed?

Best regards,
Alexander
-- =

TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
