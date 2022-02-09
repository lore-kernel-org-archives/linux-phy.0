Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B314C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  9 Feb 2022 09:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6w+aSLgRxnot1rrbdw/8L6+kbXALurLStTue7bE0cRQ=; b=FGWq8EUn+/QJ0e67jbmkZDND7F
	u1o5P7327zNeTjKKLJAvtC8e8Ssa72qu/kFK4hk83xM+YQqJSicmKkUCxzTbZBeGGq2mq8zmwJFeu
	6UK2R0sVb8quC8nFDI1sCi7DV1DhNQIP0T4+rfKuYLKbYiuu+DSEkS8Nc6SyGW/3H2S6lcBz9NF4e
	ggnAN7K0iaXP0pWgmJbR2HRq81es/6vNEW0m3otYEzDo0Qx/rNrHmZrszMGqbUKDWsM65V/hFBgsD
	AK83ajyV9fi19Mg0IKL02jBS25KrnYqIV0A6VVVmu+cu6Mr1+b6cuNDu4TatUs5r2+8VUXyA0LYeU
	lj8ps5AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHjBT-00Gspx-QB; Wed, 09 Feb 2022 09:22:43 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHjAu-00Gsfr-L3; Wed, 09 Feb 2022 09:22:10 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.west.internal (Postfix) with ESMTP id 704612B00075;
 Wed,  9 Feb 2022 04:22:06 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Wed, 09 Feb 2022 04:22:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
 :cc:content-type:date:date:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to; s=fm2; bh=Tt9nwg4OqINVHPZtGpaWXspgVtdYpxJW0WuyZY
 KSUXo=; b=CES+aAc/6AFtcfKBU4TR98AXkRc06kaWv959B8647awn98r+JTV1qX
 xk57tVNqopfs2On7z7mip7717bEci13Ho6pAwwjQAGQoX0Fabg/FWpw0tfmsbRhm
 ZNjKfAt5DX1pe5AnetTRzhRXBYTPBYgqALvQnH/Qu44iREfl5Gt9FPKHzBo3Ftso
 rq6GEYq8FLTwdx927Z1pr5pmoZDlAs9Y7cBx+IO8pptePKKwKpaXXPGOGEvrtKGr
 mv2e8HaFoOCA5k/6rR4RQIW2H3ahWizzf6INCDipbDtB/m6B7D/99NSiFy/F8e+0
 ApL3vZfXZDAGbeCEzOzBRsUEKU26xLMQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=Tt9nwg4OqINVHPZtG
 paWXspgVtdYpxJW0WuyZYKSUXo=; b=DNgujOG3Kyu87VeORY/tXh7zV2FEaRCD2
 jHTYL32LjpGyCvlGrXljVxM0tT3qSfElSiMBYhhypG3dxP7obOe+HKXcltlN33Da
 NzJY0Rrn85+jeDIxl9miv53hhpkUbs4BZwJ0Boxmo9ip8UHHBTuywmdmUU7SHvkH
 FuLnmbAFtgN4b/TDRMKRpz5Bq58NyFH4tHrhyW56fKcJtEmf8fMM2ySratv+hfRc
 jFO//p7Kioly4TPiiWzuu54aJdiG6Pf9VSnmpG/fJDInw1VfN73Otf0Dx3Zx0cP+
 ufsQu/5K1dHYWmUGZX/HJehFuYjIw94LVU2wDPIR+lijQ86k4/ZQQ==
X-ME-Sender: <xms:vIcDYvSLzBaUpcTv3LvOvXPsxvCPTLS72MJZTSyCgRgyDIxf_sh-wQ>
 <xme:vIcDYgzrul8zSLR5aFz4voae8ya0P99U3o5-GxWFhCcnQJW_Mhd8npqZ_o9ujcHAo
 kilepwtXKyBN0hwOpA>
X-ME-Received: <xmr:vIcDYk00M8AhJLwLWq45_kuMtRRCLOUKKHNcuutRQF_6wrW14hsjntFbp7Ho-w22UIbrTpElcnImSOj8N4d8wLT4frYTZe-DQhq4xmo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrheelgddtvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
 udenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
 igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:vIcDYvDeqRjppTTUhzZXU1XOFeqkUtqz8TgDTNjARCopTsy2W8jaVg>
 <xmx:vIcDYohQIwCF-TmlZ-gA_SNwx55tr-5droHMgYJIQ3cq4uD5jJwrtw>
 <xmx:vIcDYjoWqndfwaT5D6dA3esjsRydoyESdTz74Wr1Yc8CKn9fo6ti_w>
 <xmx:vYcDYhaLJS3VuiBzs2WMRtUF1Ei8cldNeGQ_Tc5J-yr_4FRL_8MDEmysVL4>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 9 Feb 2022 04:22:04 -0500 (EST)
Date: Wed, 9 Feb 2022 10:22:03 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-staging@lists.linux.dev,
 Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2 22/66] media: sun6i-csi: Use runtime pm for clocks and
 reset
Message-ID: <20220209092203.3fieqs4mbip6heug@houat>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-23-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20220205185429.2278860-23-paul.kocialkowski@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_012208_776621_1BE2E1CB 
X-CRM114-Status: GOOD (  22.30  )
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
Content-Type: multipart/mixed; boundary="===============7448976838656862765=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7448976838656862765==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rqnlvhzt36vdmgbb"
Content-Disposition: inline


--rqnlvhzt36vdmgbb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Feb 05, 2022 at 07:53:45PM +0100, Paul Kocialkowski wrote:
> Wrap the clock and reset preparation into runtime pm functions
> for better organization of the code.
>=20
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  .../platform/sunxi/sun6i-csi/sun6i_csi.c      | 94 ++++++++++++++-----
>  1 file changed, 69 insertions(+), 25 deletions(-)
>=20
> diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c b/drivers=
/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> index 2355088fdc37..b53b92b70a89 100644
> --- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> +++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> @@ -152,40 +152,18 @@ int sun6i_csi_set_power(struct sun6i_csi_device *cs=
i_dev, bool enable)
> =20
>  	if (!enable) {
>  		regmap_update_bits(regmap, CSI_EN_REG, CSI_EN_CSI_EN, 0);
> +		pm_runtime_put(dev);
> =20
> -		clk_disable_unprepare(csi_dev->clk_ram);
> -		clk_disable_unprepare(csi_dev->clk_mod);
> -		reset_control_assert(csi_dev->reset);
>  		return 0;
>  	}
> =20
> -	ret =3D clk_prepare_enable(csi_dev->clk_mod);
> -	if (ret) {
> -		dev_err(csi_dev->dev, "Enable csi clk err %d\n", ret);
> +	ret =3D pm_runtime_resume_and_get(dev);
> +	if (ret < 0)
>  		return ret;
> -	}
> -
> -	ret =3D clk_prepare_enable(csi_dev->clk_ram);
> -	if (ret) {
> -		dev_err(csi_dev->dev, "Enable clk_dram_csi clk err %d\n", ret);
> -		goto clk_mod_disable;
> -	}
> -
> -	ret =3D reset_control_deassert(csi_dev->reset);
> -	if (ret) {
> -		dev_err(csi_dev->dev, "reset err %d\n", ret);
> -		goto clk_ram_disable;
> -	}
> =20
>  	regmap_update_bits(regmap, CSI_EN_REG, CSI_EN_CSI_EN, CSI_EN_CSI_EN);
> =20
>  	return 0;
> -
> -clk_ram_disable:
> -	clk_disable_unprepare(csi_dev->clk_ram);
> -clk_mod_disable:
> -	clk_disable_unprepare(csi_dev->clk_mod);
> -	return ret;
>  }
> =20
>  static enum csi_input_fmt get_csi_input_format(struct sun6i_csi_device *=
csi_dev,
> @@ -800,6 +778,65 @@ static irqreturn_t sun6i_csi_isr(int irq, void *priv=
ate)
>  	return IRQ_HANDLED;
>  }
> =20
> +static int sun6i_csi_suspend(struct device *dev)
> +{
> +	struct sun6i_csi_device *csi_dev =3D dev_get_drvdata(dev);
> +
> +	reset_control_assert(csi_dev->reset);
> +	clk_disable_unprepare(csi_dev->clk_ram);
> +	clk_disable_unprepare(csi_dev->clk_mod);
> +	clk_disable_unprepare(csi_dev->clk_bus);
> +
> +	return 0;
> +}
> +
> +static int sun6i_csi_resume(struct device *dev)
> +{
> +	struct sun6i_csi_device *csi_dev =3D dev_get_drvdata(dev);
> +	int ret;
> +
> +	ret =3D reset_control_deassert(csi_dev->reset);
> +	if (ret) {
> +		dev_err(dev, "failed to deassert reset\n");
> +		return ret;
> +	}
> +
> +	ret =3D clk_prepare_enable(csi_dev->clk_bus);
> +	if (ret) {
> +		dev_err(dev, "failed to enable bus clock\n");
> +		goto error_reset;
> +	}
> +
> +	ret =3D clk_prepare_enable(csi_dev->clk_mod);
> +	if (ret) {
> +		dev_err(dev, "failed to enable module clock\n");
> +		goto error_clk_bus;
> +	}
> +
> +	ret =3D clk_prepare_enable(csi_dev->clk_ram);
> +	if (ret) {
> +		dev_err(dev, "failed to enable ram clock\n");
> +		goto error_clk_mod;
> +	}
> +
> +	return 0;

You've change the order of the reset vs clock initialization. Also, does
that work with CONFIG_PM disabled?

Maxime

--rqnlvhzt36vdmgbb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYgOHuwAKCRDj7w1vZxhR
xZriAP9bZyn3qXa36hkToZ4ZGQtpdPm8U/5vUSO5rhzQUD/N5gEA7uxX1cpy0NiA
FcVH+0Ecscz+V2GzVMoJkN0yAOTwdAk=
=kTBx
-----END PGP SIGNATURE-----

--rqnlvhzt36vdmgbb--


--===============7448976838656862765==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7448976838656862765==--

