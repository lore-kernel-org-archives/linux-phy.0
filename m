Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFC18C3DA4A
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jul 2024 15:28:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JgNcBoXsSqFe9lafhqu7AUhh7tXw4jLcEQB2TGcOmSc=; b=O/jsEtxxWC1jWAHx+VK/MzjdZk
	bmWfFLD8VIkULrn8JJW3NwiNYbDHjpj7Yn5dil7J6cBWjvRufgMXPm0irL3TDdVWHASbWzz5JgV7b
	HviB8B6dfEk6E+DDaaRT3v3F7kXp6p4BR+iWvo4hufveKX6uZiFZiRAuZeHCYdRsZdYxL4OdlOLo9
	tWia5pZ0jEjXx1zgHMHzNDjWOsu4zgc7l3VLt6AIjWWIZY9BnzSFibCG1E9VQzicpC9c+Qj2e1v/F
	5Q7eqi/Oz5RTW04CIEwjjQ+HfY0jMfEtkba8UfsOTFeBY05MOpyxHYHo8Lmj245tpyzfHZonRXoj/
	Tawr1Z4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTNcr-00000007Ye6-17TO;
	Mon, 15 Jul 2024 15:28:29 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTNco-00000007Yai-0c1M
	for linux-phy@lists.infradead.org;
	Mon, 15 Jul 2024 15:28:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 72993CE0E38;
	Mon, 15 Jul 2024 15:28:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1927C32782;
	Mon, 15 Jul 2024 15:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721057303;
	bh=wMcIDWrmGAfvryRlixL8w6f8KnHDW2Iqu7kAgZM/vXw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=o0kBacF92LbdiCs93gFwNPY1FfabN+E68VMrZgdO82AA0zEKsj1TLZd4UbDYoezIz
	 UedRDekGi4ANFCCccOS5CIsByt5S+bYum5Llve43wrRgHD4LcELHl9TyvsjWXH5gqx
	 QNjhQpwpy3uJUN5j03dstiME0Ou3BFNmEEERIIBgnCmM0z66A08TzL2JPnW0h6MmaQ
	 aDGkhrggp3TEW3ZfNY8NUxwlieFOklBKDb3hHPpzUmxNN6ux2xf/Mk747654+EO2ey
	 HqIRw4o4nRRdzP0LCbJ818Aaj31dv3XojbfnhHEId7uDYvZ7aYePb040ggppbN5/z0
	 ScrqQPZTdJa4A==
Date: Mon, 15 Jul 2024 16:28:16 +0100
From: Conor Dooley <conor@kernel.org>
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org, Arnaud Vrac <avrac@freebox.fr>,
	Pierre-Hugues Husson <phhusson@freebox.fr>,
	Jeffrey Hugo <quic_jhugo@quicinc.com>
Subject: Re: [PATCH v6 3/6] drm/msm/hdmi: add "qcom,hdmi-tx-8998" compatible
Message-ID: <20240715-stable-popsicle-7c6e2fa76644@spud>
References: <20240715-hdmi-tx-v6-0-d27f029627ad@freebox.fr>
 <20240715-hdmi-tx-v6-3-d27f029627ad@freebox.fr>
 <20240715-trickery-spongy-c9d8e246b4cc@spud>
MIME-Version: 1.0
In-Reply-To: <20240715-trickery-spongy-c9d8e246b4cc@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240715_082826_587320_5EF49843 
X-CRM114-Status: GOOD (  20.98  )
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
Content-Type: multipart/mixed; boundary="===============2810139937493346515=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2810139937493346515==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="I/966nsfPxtlNaRp"
Content-Disposition: inline


--I/966nsfPxtlNaRp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 15, 2024 at 04:26:12PM +0100, Conor Dooley wrote:
> On Mon, Jul 15, 2024 at 02:21:16PM +0200, Marc Gonzalez wrote:
> > Current driver already supports the msm8998 HDMI TX.
> > We just need to add the compatible string.
>=20
> Why is this required when the driver change suggests that this device is
> compatible with the existing 8974?

(I know I reviewed the binding already, just noticing this which
suggests a fallback would be appropriate, despite the differing clocks
etc)

>=20
> >=20
> > Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
> > ---
> >  drivers/gpu/drm/msm/hdmi/hdmi.c | 1 +
> >  1 file changed, 1 insertion(+)
> >=20
> > diff --git a/drivers/gpu/drm/msm/hdmi/hdmi.c b/drivers/gpu/drm/msm/hdmi=
/hdmi.c
> > index 24abcb7254cc4..0bfee41c2e71a 100644
> > --- a/drivers/gpu/drm/msm/hdmi/hdmi.c
> > +++ b/drivers/gpu/drm/msm/hdmi/hdmi.c
> > @@ -549,6 +549,7 @@ static void msm_hdmi_dev_remove(struct platform_dev=
ice *pdev)
> >  }
> > =20
> >  static const struct of_device_id msm_hdmi_dt_match[] =3D {
> > +	{ .compatible =3D "qcom,hdmi-tx-8998", .data =3D &hdmi_tx_8974_config=
 },
> >  	{ .compatible =3D "qcom,hdmi-tx-8996", .data =3D &hdmi_tx_8974_config=
 },
> >  	{ .compatible =3D "qcom,hdmi-tx-8994", .data =3D &hdmi_tx_8974_config=
 },
> >  	{ .compatible =3D "qcom,hdmi-tx-8084", .data =3D &hdmi_tx_8974_config=
 },
> >=20
> > --=20
> > 2.34.1
> >=20



--I/966nsfPxtlNaRp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZpVAEAAKCRB4tDGHoIJi
0sU8AP4jM6fDhuBRN2MOUSxGHypHq+sAMObmuhoxsoBDNdo4awD/V9VWHT01TVJw
2JaoCyJhPin+XY9G0rHrT0tjTjiN4Ac=
=4QyH
-----END PGP SIGNATURE-----

--I/966nsfPxtlNaRp--


--===============2810139937493346515==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2810139937493346515==--

