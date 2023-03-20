Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3587C7618A
	for <linux-phy@archiver.kernel.org>; Mon, 20 Mar 2023 06:33:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:CC:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MXqRzt3e1fX1DK5ZfbYPjyZhgWZbnlFNyzOFbY2mu9k=; b=CyUiy4quu/gZKO/7/w6PXxP/uk
	2QZVcefFHCeDgVwj9bp7UUIPHrhR9GDZ4h6qB0Ux5AwHL9T/yahOq4cSDojjwLndBlVKzF1AYJT6z
	E3iD9IAjouXeB/2O3CLibCQtX8KVylQSnkrbouLd91NlxJjEw1OAwAMj86xOXRkNgJIwT5yqHd4n8
	/QmqeYKm0Yqr32blsLbtiS0koIXFhOjHHSRzObeWQpqx0v1dFfglMSW6CvvK7chO+QtxGGCJOwxQ4
	kqTirGzA9BUc0defsLFmbKT0WOUggwkblGToKp/wK8sc8CvMp71E7tPtPU8/dDHtNgh14vBb04NVr
	ShyQhbGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pe95Y-008Ekb-15;
	Mon, 20 Mar 2023 06:33:48 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pe95V-008Ek7-0X
	for linux-phy@lists.infradead.org;
	Mon, 20 Mar 2023 06:33:46 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 32K6XanB013678;
	Mon, 20 Mar 2023 01:33:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1679294016;
	bh=PpWfLDL8EN47urhltItaJFJ868B98/oY43mUbJWqm+s=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=JtMH+Ws+mniuKEgVVyrumnMv6I0GLuutPy4AKdIMkgxUV+SRyMVo6cjAvYqO2oG16
	 fXU4hbP4OY+aHyZKP8TqAAfyZQ9DaJ5zcmEHQiOktrC6yhct6HSs2PqwBCIuWAe7SK
	 IIYUWJYNRSKFt8oRJKVGc3os1yWPBIoylWL/OJrs=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 32K6XaBK030290
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 20 Mar 2023 01:33:36 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Mon, 20
 Mar 2023 01:33:36 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Mon, 20 Mar 2023 01:33:36 -0500
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 32K6XZHH116601;
	Mon, 20 Mar 2023 01:33:36 -0500
Date: Mon, 20 Mar 2023 12:03:37 +0530
From: Jai Luthra <j-luthra@ti.com>
To: Vaishnav Achath <vaishnav.a@ti.com>
CC: <linux-phy@lists.infradead.org>, <vkoul@kernel.org>, <kishon@kernel.org>,
        <linux-kernel@vger.kernel.org>, <devarsht@ti.com>,
        <tomi.valkeinen@ideasonboard.com>, <praneeth@ti.com>,
        <u-kumar1@ti.com>, <vigneshr@ti.com>, <nm@ti.com>,
        <sinthu.raja@ti.com>
Subject: Re: [PATCH] phy: cadence: cdns-dphy-rx: Add common module reset
 support
Message-ID: <20230320063337.oeta63lyes72pfxb@uda0497096>
References: <20230314073137.2153-1-vaishnav.a@ti.com>
MIME-Version: 1.0
In-Reply-To: <20230314073137.2153-1-vaishnav.a@ti.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230319_233345_351199_A97E1A0A 
X-CRM114-Status: GOOD (  21.59  )
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
Content-Type: multipart/mixed; boundary="===============0722958789461229642=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============0722958789461229642==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zu4fbieikuth2lrl"
Content-Disposition: inline

--zu4fbieikuth2lrl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mar 14, 2023 at 13:01:37 +0530, Vaishnav Achath wrote:
> From: Sinthu Raja <sinthu.raja@ti.com>
>=20
> DPHY RX module has a common module reset (RSTB_CMN) which is expected
> to be released during configuration. In J721E SR1.0 the RSTB_CMN is
> internally tied to CSI_RX_RST and is hardware controlled, for all
> other newer platforms the common module reset is software controlled.
> Add support to control common module reset during configuration and
> also skip common module reset based on soc_device_match() for J721E SR1.0.
>=20
> Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
> Co-developed-by: Vaishnav Achath <vaishnav.a@ti.com>
> Signed-off-by: Vaishnav Achath <vaishnav.a@ti.com>

Reviewed-by: Jai Luthra <j-luthra@ti.com>

> ---
>=20
> Tested on J721E SR1.0 and SR 1.1 by CSI2RX streaming,
> without this changes CSI2RX streaming fails on J721E SR1.1
> and all other newer TI platforms (J721S2, J784S4, AM62X).
>=20
> Logs: https://gist.github.com/vaishnavachath/3ecda7de0e63b13c6f765ae2c4f9=
c5ff
>=20
>  drivers/phy/cadence/cdns-dphy-rx.c | 32 ++++++++++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
>=20
> diff --git a/drivers/phy/cadence/cdns-dphy-rx.c b/drivers/phy/cadence/cdn=
s-dphy-rx.c
> index 572c70089a94..c05b043893a9 100644
> --- a/drivers/phy/cadence/cdns-dphy-rx.c
> +++ b/drivers/phy/cadence/cdns-dphy-rx.c
> @@ -11,10 +11,12 @@
>  #include <linux/phy/phy.h>
>  #include <linux/phy/phy-mipi-dphy.h>
>  #include <linux/platform_device.h>
> +#include <linux/sys_soc.h>
> =20
>  #define DPHY_PMA_CMN(reg)		(reg)
>  #define DPHY_PCS(reg)			(0xb00 + (reg))
>  #define DPHY_ISO(reg)			(0xc00 + (reg))
> +#define DPHY_WRAP(reg)			(0x1000 + (reg))
> =20
>  #define DPHY_CMN_SSM			DPHY_PMA_CMN(0x20)
>  #define DPHY_CMN_RX_MODE_EN		BIT(10)
> @@ -33,6 +35,9 @@
>  #define DPHY_POWER_ISLAND_EN_CLK	DPHY_PCS(0xc)
>  #define DPHY_POWER_ISLAND_EN_CLK_VAL	0xaa
> =20
> +#define DPHY_LANE			DPHY_WRAP(0x0)
> +#define DPHY_LANE_RESET_CMN_EN		BIT(23)
> +
>  #define DPHY_ISO_CL_CTRL_L		DPHY_ISO(0x10)
>  #define DPHY_ISO_DL_CTRL_L0		DPHY_ISO(0x14)
>  #define DPHY_ISO_DL_CTRL_L1		DPHY_ISO(0x20)
> @@ -57,6 +62,10 @@ struct cdns_dphy_rx_band {
>  	unsigned int max_rate;
>  };
> =20
> +struct cdns_dphy_soc_data {
> +	bool has_hw_cmn_rstb;
> +};
> +
>  /* Order of bands is important since the index is the band number. */
>  static const struct cdns_dphy_rx_band bands[] =3D {
>  	{ 80, 100 }, { 100, 120 }, { 120, 160 }, { 160, 200 }, { 200, 240 },
> @@ -142,13 +151,36 @@ static int cdns_dphy_rx_wait_lane_ready(struct cdns=
_dphy_rx *dphy,
>  	return 0;
>  }
> =20
> +static struct cdns_dphy_soc_data j721e_soc_data =3D {
> +	.has_hw_cmn_rstb =3D true,
> +};
> +
> +static const struct soc_device_attribute cdns_dphy_socinfo[] =3D {
> +	{
> +		.family =3D "J721E",
> +		.revision =3D "SR1.0",
> +		.data =3D &j721e_soc_data,
> +	},
> +	{/* sentinel */}
> +};
> +
>  static int cdns_dphy_rx_configure(struct phy *phy,
>  				  union phy_configure_opts *opts)
>  {
>  	struct cdns_dphy_rx *dphy =3D phy_get_drvdata(phy);
>  	unsigned int reg, lanes =3D opts->mipi_dphy.lanes;
> +	const struct cdns_dphy_soc_data *soc_data =3D NULL;
> +	const struct soc_device_attribute *soc;
>  	int band_ctrl, ret;
> =20
> +	soc =3D soc_device_match(cdns_dphy_socinfo);
> +	if (soc && soc->data)
> +		soc_data =3D soc->data;
> +	if (!soc || (soc_data && !soc_data->has_hw_cmn_rstb)) {
> +		reg =3D DPHY_LANE_RESET_CMN_EN;
> +		writel(reg, dphy->regs + DPHY_LANE);
> +	}
> +
>  	/* Data lanes. Minimum one lane is mandatory. */
>  	if (lanes < DPHY_LANES_MIN || lanes > DPHY_LANES_MAX)
>  		return -EINVAL;
> --=20
> 2.17.1
>=20

--zu4fbieikuth2lrl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEETeDYGOXVdejUWq/FQ96R+SSacUUFAmQX/j0ACgkQQ96R+SSa
cUV8DQ//TQSS+B32sjEFR5WtQKDvogX+qctvjlzUGW9tQlmhoiA/jGbppC7lzd+e
AG+urSCcw2+VG/kfaI4K4DDAvTeRdpGJiQT4VtYczN2pQab7sg1Did69UOIUDaSL
UKZVbalrwofC/VBgimirF3/SpRQrVT3LspUydB3FFmxGRwswAcTNsx/yZ7/Q/wlY
r+LkC4l0iasKre5y1rVGYMIdpOYoXi+tIKjF/T/3QflyRk44DtUBQYALcPPK/Qpn
4w1WY4eUz/XRrFk3bgGR8moAxaZjSrDv6mK1g+8BuOeyJ+k2Tw1E4LAmht2nIOwh
kqrxBVukkfWqxgxZI24YQZGb15tcMgb58DatFjPOQzOezMt+FkDZx/yYGt4lyQcQ
7TGrXIyM0u5OauTD8UPUpa6FYUTf0vwyARxeT8XmuX0tIWNEtmTM6zacLXnx+Zzm
8eVeVlpdq0rzZvgGEsTOLJzlc94ylVzgl8WeN8XU4ldkWFKPaEY3KwCKbg8GI+7J
r2HXza9YX6g7sJpiMyONAzZ4ZK4aIchmsQtSh4a56ZxbQb6NEfmpBXj3d4JC1n6M
8FNMR+Wcz7FQmDBxqULNyRgb6YLa3ZVVGVsVRFjiaR/j34IYO8BYIZCWvw0DnsjX
/2JXWom922THeEszn/ZqQDPx8e/MlWa5QMCYeB/qs6Bhidj370Q=
=2ZlC
-----END PGP SIGNATURE-----

--zu4fbieikuth2lrl--


--===============0722958789461229642==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0722958789461229642==--

