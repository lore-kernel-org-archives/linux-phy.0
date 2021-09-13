Return-Path: <SRS0=BhbR=OD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D14A5C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 13 Sep 2021 07:45:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6545360F6F
	for <linux-phy@archiver.kernel.org>; Mon, 13 Sep 2021 07:45:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6545360F6F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MNa6RrtIe9MT7XUW909vT75gpFaS2J+JYbzAyReqlGM=; b=quXZp1upaDUyipF1X4vE/fqn/C
	MAZAYgB4M9usQ8AkMcjr3TonOywGVBhtbCtRXVm0GV5WCswIkKv3M/H8/b5pAU0BrOQ/DiCeHbTVY
	9L6a86QSKxcprUurvu9JeQ+iBvXDsODSErxrn2LIQnIS8Q1IwB5+HtXwnKjRGcdObRVsFNh0Zt2+H
	4U0ZoS7ByHtjYdfvOBVghSGN3QoslC/SzbKI93UTtpYuB2c88otDq7OoLuZ1FsWrR5tkEuKWfPTy0
	CqTnZraZ+R1fRO4q9s8GtvZG0mqqrtQ2ShbQ//T/WXMnVbCpChmYUjz3eeJmTbCOuGbi570RZ3VoB
	5S25++0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPgeB-000Y5M-Ue; Mon, 13 Sep 2021 07:44:59 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPgdr-000Xzv-D7; Mon, 13 Sep 2021 07:44:42 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 6AD0F100018;
 Mon, 13 Sep 2021 07:44:23 +0000 (UTC)
Date: Mon, 13 Sep 2021 09:44:22 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Samuel Holland <samuel@sholland.org>
Cc: Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-staging@lists.linux.dev
Subject: Re: [PATCH 09/22] ARM: dts: sun8i: v3s: Add nodes for MIPI CSI-2
 support
Message-ID: <YT8BVo61qL1jq/er@aptenodytes>
References: <20210910184147.336618-1-paul.kocialkowski@bootlin.com>
 <20210910184147.336618-10-paul.kocialkowski@bootlin.com>
 <483288cb-d9fa-4581-7986-d15c4aa27769@sholland.org>
MIME-Version: 1.0
In-Reply-To: <483288cb-d9fa-4581-7986-d15c4aa27769@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_004439_774876_6D71A34C 
X-CRM114-Status: GOOD (  25.30  )
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
Content-Type: multipart/mixed; boundary="===============3405981014294425693=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============3405981014294425693==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="QZVQzP+VTAJydr5U"
Content-Disposition: inline


--QZVQzP+VTAJydr5U
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Samuel,

On Fri 10 Sep 21, 21:32, Samuel Holland wrote:
> On 9/10/21 1:41 PM, Paul Kocialkowski wrote:
> > MIPI CSI-2 is supported on the V3s with an A31-based MIPI CSI-2 bridge
> > controller. The controller uses a separate D-PHY, which is the same
> > that is otherwise used for MIPI DSI, but used in Rx mode.
> >=20
> > On the V3s, the CSI0 controller is dedicated to MIPI CSI-2 as it does
> > not have access to any parallel interface pins.
> >=20
> > Add all the necessary nodes (CSI0, MIPI CSI-2 bridge and D-PHY) to
> > support the MIPI CSI-2 interface.
> >=20
> > Note that a fwnode graph link is created between CSI0 and MIPI CSI-2
> > even when no sensor is connected. This will result in a probe failure
> > for the controller as long as no sensor is connected but this is fine
> > since no other interface is available.
> >=20
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > ---
> >  arch/arm/boot/dts/sun8i-v3s.dtsi | 72 ++++++++++++++++++++++++++++++++
> >  1 file changed, 72 insertions(+)
> >=20
> > diff --git a/arch/arm/boot/dts/sun8i-v3s.dtsi b/arch/arm/boot/dts/sun8i=
-v3s.dtsi
> > index a77b63362a1d..ec7fa6459547 100644
> > --- a/arch/arm/boot/dts/sun8i-v3s.dtsi
> > +++ b/arch/arm/boot/dts/sun8i-v3s.dtsi
> > @@ -612,6 +612,34 @@ spi0: spi@1c68000 {
> >  			#size-cells =3D <0>;
> >  		};
> > =20
> > +		csi0: camera@1cb0000 {
> > +			compatible =3D "allwinner,sun8i-v3s-csi";
> > +			reg =3D <0x01cb0000 0x1000>;
> > +			interrupts =3D <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
> > +			clocks =3D <&ccu CLK_BUS_CSI>,
> > +				 <&ccu CLK_CSI1_SCLK>,
> > +				 <&ccu CLK_DRAM_CSI>;
> > +			clock-names =3D "bus", "mod", "ram";
> > +			resets =3D <&ccu RST_BUS_CSI>;
> > +			status =3D "disabled";
> > +
> > +			assigned-clocks =3D <&ccu CLK_CSI1_SCLK>;
> > +			assigned-clock-parents =3D <&ccu CLK_PLL_ISP>;
> > +
> > +			ports {
> > +				#address-cells =3D <1>;
> > +				#size-cells =3D <0>;
> > +
> > +				port@1 {
> > +					reg =3D <1>;
> > +
> > +					csi0_in_mipi_csi2: endpoint {
> > +						remote-endpoint =3D <&mipi_csi2_out_csi0>;
> > +					};
> > +				};
> > +			};
> > +		};
> > +
> >  		csi1: camera@1cb4000 {
> >  			compatible =3D "allwinner,sun8i-v3s-csi";
> >  			reg =3D <0x01cb4000 0x3000>;
>=20
> All of the new nodes should be added above this one, to maintain unit
> address order.

Good catch, this was an overlook on my side.

Thanks,

Paul

> Regards,
> Samuel
>=20
> > @@ -637,5 +665,49 @@ gic: interrupt-controller@1c81000 {
> >  			#interrupt-cells =3D <3>;
> >  			interrupts =3D <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_=
HIGH)>;
> >  		};
> > +
> > +		mipi_csi2: csi@1cb1000 {
> > +			compatible =3D "allwinner,sun8i-v3s-mipi-csi2",
> > +				     "allwinner,sun6i-a31-mipi-csi2";
> > +			reg =3D <0x01cb1000 0x1000>;
> > +			interrupts =3D <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
> > +			clocks =3D <&ccu CLK_BUS_CSI>,
> > +				 <&ccu CLK_CSI1_SCLK>;
> > +			clock-names =3D "bus", "mod";
> > +			resets =3D <&ccu RST_BUS_CSI>;
> > +			status =3D "disabled";
> > +
> > +			phys =3D <&dphy>;
> > +			phy-names =3D "dphy";
> > +
> > +			ports {
> > +				#address-cells =3D <1>;
> > +				#size-cells =3D <0>;
> > +
> > +				mipi_csi2_in: port@0 {
> > +					reg =3D <0>;
> > +				};
> > +
> > +				mipi_csi2_out: port@1 {
> > +					reg =3D <1>;
> > +
> > +					mipi_csi2_out_csi0: endpoint {
> > +						remote-endpoint =3D <&csi0_in_mipi_csi2>;
> > +					};
> > +				};
> > +			};
> > +		};
> > +
> > +		dphy: d-phy@1cb2000 {
> > +			compatible =3D "allwinner,sun6i-a31-mipi-dphy";
> > +			reg =3D <0x01cb2000 0x1000>;
> > +			clocks =3D <&ccu CLK_BUS_CSI>,
> > +				 <&ccu CLK_MIPI_CSI>;
> > +			clock-names =3D "bus", "mod";
> > +			resets =3D <&ccu RST_BUS_CSI>;
> > +			allwinner,direction =3D "rx";
> > +			status =3D "disabled";
> > +			#phy-cells =3D <0>;
> > +		};
> >  	};
> >  };
> >=20
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--QZVQzP+VTAJydr5U
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmE/AVYACgkQ3cLmz3+f
v9EFwAgAlLhO92v/X6G6gs1EKL/Ve3k5WVgSYDcp38cxhVkn9TYIx+u97xSfyDLC
P5PABn2O8tERf6e7U1NBmqr64vSzvziaRmeLo6co6sdLEJuNvk4wrp3/9U7+dp/Q
9Pp/tPxadAO4SKID7BW5UKTEzWqzGlsGJf/6p83oKzwWtBCTBXTfK0PjkmESPFy8
kTX1gqi9/Pe0oiWH0PRZJIZzPYDP8PpRNPQNxhPlXivuSnDLFwNAhaSXrMvqOnl2
/Y+tpSRPXTKGPqjIAzRn3G2fTveiHMw0fTLwVgcZqqNIK4dACeQLJYNdSxjTMORZ
J1xWZQdStHkESCp9DRxlxV8TLbiItg==
=95oz
-----END PGP SIGNATURE-----

--QZVQzP+VTAJydr5U--


--===============3405981014294425693==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============3405981014294425693==--

