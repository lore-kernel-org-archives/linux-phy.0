Return-Path: <SRS0=N/27=M5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5929BC4338F
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 11:11:44 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B5FCF61186
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 11:11:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B5FCF61186
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RltxEEQJN9R6VINmDgZvr38TxMzt8sp7mTF9FargSSk=; b=WZpCVnVbcOiiXqWYpoUbKvikXc
	q8CubDDa+Ia3wY0yPJRuVktgRlxlKbItdt9JxwEoq6a113smf5yKBzXlGDUrkkoZiBEAYi24JKMuv
	fl9jbOP+riyY+br3pljOIxqwQ56BmrrL70k4Y34StzTYpIw2nmyICFz1KEnyHi1AVCKMJ0tvhIAeN
	iPLrVXyGypRe/cD4LnhlnABCsLcX0bF/kmPc/rpoZlO2GzV2wSAjW5rRWH03kStAwvk2wAZs1mdAn
	ejfPi2wzwqqueN35xkqV3KpGea1m70d+Dsp9FXoqDJnrzDVcCJswtcUCAtXBS8fU4K+GntT2rCYuR
	xQDnx9Ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBxlP-00CFAl-55; Fri, 06 Aug 2021 11:11:43 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBxlL-00CF5H-BT
 for linux-phy@lists.infradead.org; Fri, 06 Aug 2021 11:11:41 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 08710C0002;
 Fri,  6 Aug 2021 11:11:30 +0000 (UTC)
Date: Fri, 6 Aug 2021 13:11:30 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Pratyush Yadav <p.yadav@ti.com>
Cc: Vinod Koul <vkoul@kernel.org>, Nikhil Devshatwar <nikhil.nd@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 1/7] phy: Distinguish between Rx and Tx for MIPI D-PHY
 with submodes
Message-ID: <YQ0Y4ueALPNEAoMI@aptenodytes>
References: <20210624184108.21312-1-p.yadav@ti.com>
 <20210624184108.21312-2-p.yadav@ti.com>
MIME-Version: 1.0
In-Reply-To: <20210624184108.21312-2-p.yadav@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210806_041139_711543_B0F65E26 
X-CRM114-Status: GOOD (  19.04  )
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
Content-Type: multipart/mixed; boundary="===============6395374031108616895=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6395374031108616895==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jvfpZGZYLc0FT7gn"
Content-Disposition: inline


--jvfpZGZYLc0FT7gn
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri 25 Jun 21, 00:11, Pratyush Yadav wrote:
> From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
>=20
> As some D-PHY controllers support both Rx and Tx mode, we need a way for
> users to explicitly request one or the other. For instance, Rx mode can
> be used along with MIPI CSI-2 while Tx mode can be used with MIPI DSI.
>=20
> Introduce new MIPI D-PHY PHY submodes to use with PHY_MODE_MIPI_DPHY.
> The default (zero value) is kept to Tx so only the rkisp1 driver, which
> uses D-PHY in Rx mode, needs to be adapted.

After some thinking and discussions, it appears that using the submode is
probably not the best way to distinguish between rx and tx. This is because
rx/tx is more of a specification of the hardware component than a run-time
descision. Indeed the D-PHY blocks are usually dedicated to an associated
controller (DSI or CSI-2) and thus each instance is either meant for tx or
rx use.

As a result I will be using the allwinner,direction string property in
device-tree instead of the submode, with values of either "rx" or "tx".
I suppose you can do something similar if you agree it makes more sense.

Cheers,

Paul
=20
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> ---
>=20
> (no changes since v1)
>=20
>  include/linux/phy/phy-mipi-dphy.h | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>=20
> diff --git a/include/linux/phy/phy-mipi-dphy.h b/include/linux/phy/phy-mi=
pi-dphy.h
> index a877ffee845d..0f57ef46a8b5 100644
> --- a/include/linux/phy/phy-mipi-dphy.h
> +++ b/include/linux/phy/phy-mipi-dphy.h
> @@ -6,6 +6,19 @@
>  #ifndef __PHY_MIPI_DPHY_H_
>  #define __PHY_MIPI_DPHY_H_
> =20
> +/**
> + * enum phy_mipi_dphy_submode - MIPI D-PHY sub-mode
> + *
> + * A MIPI D-PHY can be used to transmit or receive data.
> + * Since some controllers can support both, the direction to enable is s=
pecified
> + * with the PHY sub-mode. Transmit is assumed by default with phy_set_mo=
de.
> + */
> +
> +enum phy_mipi_dphy_submode {
> +	PHY_MIPI_DPHY_SUBMODE_TX =3D 0,
> +	PHY_MIPI_DPHY_SUBMODE_RX,
> +};
> +
>  /**
>   * struct phy_configure_opts_mipi_dphy - MIPI D-PHY configuration set
>   *
> --=20
> 2.30.0
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--jvfpZGZYLc0FT7gn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmENGOIACgkQ3cLmz3+f
v9GG6QgAoetRE6Gm2GsDx9ecF7fYQC0wWavDBMKWXpgAgxTqle+aakC2enQ1ZFKU
0xW8h7LqDAK1YoXJnoObZO792kuMhnmisrsESuP3tPciX/AtygTkU0MXviDmkp9D
FylPgrrzevRPJPfnM6bAOTMziMdtGlFkBOD3VZrLLjpr3+YlexU8/D/OzCPYIZD7
F9Dst/Kh0X8a6+Fh70wt/MofkP5MvxgjrdRc5xuMvSic5qMMxagvnoADp1ox/Rm8
m0twCWqoapjJJXVdVbY3Aois5dJTUhU5FljhunGADroDPs/YbYO85hm1xxStPkeD
kMENkZbq3fCKXEAbC/Df+ny6rsOSow==
=Fhr6
-----END PGP SIGNATURE-----

--jvfpZGZYLc0FT7gn--


--===============6395374031108616895==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6395374031108616895==--

