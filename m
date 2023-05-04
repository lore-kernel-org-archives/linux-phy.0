Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9489AC7EE21
	for <linux-phy@archiver.kernel.org>; Thu,  4 May 2023 09:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w97jahGLYUV95J0uQ8XJnnXRumMCVYIH1zC2Ja3YRWg=; b=Tq7lGHSu56ESvU8s24twjyPsvP
	os96XCQuKVuzcCUm1DOSP/uFrrgCHVBohplUbAsLFGtGDqgRkurTyaO0y4kwqiYn92rLSb+3WgnHm
	3RhM5ZE/moy3f/KqD4IKIo7bzs6qyxPDmBpisiLvUdENys/xSFr8B5ycM9zTmarXlLsaXoXa+tRlv
	HS0S4CMM5i8xEeaj53vK+D7dihlRpr2F7T0JAsbkX/RIY43a5VljcSf+7bIPBVtzxJYJlqYe0Wja3
	ERGiMlgv0RpeCr/JFU/nzEq86+0Z6G9xl5dFvQTmwNrVQrnhWVF6A61639TqLRsWvgPfjg2MdKFX+
	RV4TCDLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puV3V-007Elh-0W;
	Thu, 04 May 2023 09:15:17 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puV3L-007Ehx-0C
	for linux-phy@lists.infradead.org;
	Thu, 04 May 2023 09:15:15 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-956eacbe651so38902866b.3
        for <linux-phy@lists.infradead.org>; Thu, 04 May 2023 02:15:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683191704; x=1685783704;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4wjpkeqWA8qYkH/PiK7uN0tzwP/v0iiItnDke/o/lc0=;
        b=RkjTlxcCgLCrvnMQ3Fft+HOe6jICiNy9KuA9Q//Xj5CWoU4WUjbkoqqTVuZuISgct0
         WHvPd+1GujTO88D28NFvhFzw/dKEHL5S5kyaTN3UXRVKUrjErLueJCKPad0VSfkiHDkK
         AZdtMIqTXHpAxFnUMyaNW0dFSJXuq/IJ9MJXIQgh3d9Brd5u6PYuyE9WDVVyu1e9bqBz
         xA2rwHY7oHnF25y/pkP2SjY9kTCsLZRZbYNKntpDDJeoqmsf6TGLySC4HPrCIZ6muukZ
         eM6uPwSSb5i+RllMYtTsMbK74wB61vEd+J+I/e1h4pkbkly6Pl/qsqRQxPULPStCZsn9
         gBlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683191704; x=1685783704;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4wjpkeqWA8qYkH/PiK7uN0tzwP/v0iiItnDke/o/lc0=;
        b=JlufYRehmt8HecqKTo9ot056t1adQ2DvaqdBRTi9PAp5zIcAL+NxhuhrlNNpQA8YZO
         hq417ryU8slzPrARie68MjX/U5GBCJDtB46zxmHil/zm4HU6hCo9UxndOsNPXy809rnq
         rDiPutJB1WdEsw8LWg/czPcKtDZGhhZz72hRHe0pV/f4ETybSRRk+qYbO6NYr2yyX9C7
         bcYh+GDy87BcxwBhBlJnWqLXJZdzv0zTYB//SLvSedrqoAY4A14mfiVz+sDO7jw7xohG
         gkTCFD5upJgbRa9Dn5dA/U1oIVxo/rIm9m7fBKZS5dZzAcy+YNPcJUGnbbo2uMaHirkB
         ACWQ==
X-Gm-Message-State: AC+VfDx3mKOQVhLIVXaRzpQRd0aV9csi5xeTNUFEk6kkWI4k5f9ciUrQ
	s0Hhtc8h6oWwTTb/BviDrK0=
X-Google-Smtp-Source: ACHHUZ5o55IayVtrIHn8dSW7K3bSDwy0IWuVh6ib7LF1yUwMiZCjhVrRS3CCIkllKSErOzD4pjP0dA==
X-Received: by 2002:a17:906:eec7:b0:93e:fa12:aa1a with SMTP id wu7-20020a170906eec700b0093efa12aa1amr5473971ejb.1.1683191704054;
        Thu, 04 May 2023 02:15:04 -0700 (PDT)
Received: from orome (p200300e41f053a00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f05:3a00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id g10-20020a170906594a00b008cecb8f374asm18338172ejr.0.2023.05.04.02.15.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 May 2023 02:15:03 -0700 (PDT)
Date: Thu, 4 May 2023 11:15:02 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Haotien Hsu <haotienh@nvidia.com>
Cc: JC Kuo <jckuo@nvidia.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org, Wayne Chang <waynec@nvidia.com>,
	EJ Hsu <ejh@nvidia.com>
Subject: Re: [PATCH] phy: tegra: xusb: Fix use-after-free issue
Message-ID: <ZFN3lvjjn9Xu-vRl@orome>
References: <20230504055446.2039372-1-haotienh@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20230504055446.2039372-1-haotienh@nvidia.com>
User-Agent: Mutt/2.2.10 (2023-03-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_021507_115119_60F65ABC 
X-CRM114-Status: GOOD (  23.33  )
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
Content-Type: multipart/mixed; boundary="===============1436481259936056454=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============1436481259936056454==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5P7ThJ8lckK4aSHF"
Content-Disposition: inline


--5P7ThJ8lckK4aSHF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 04, 2023 at 01:54:46PM +0800, Haotien Hsu wrote:
> From: EJ Hsu <ejh@nvidia.com>
>=20
> For the dual-role port, it will assign the phy dev to usb-phy dev and
> use the port dev driver as the dev driver of usb-phy.
>=20
> When we try to destroy the port dev, it will destroy its dev driver
> as well. But we did not remove the reference from usb-phy dev. This
> might cause the use-after-free issue in KASAN.
>=20
> Fixes: e8f7d2f409a1 ("phy: tegra: xusb: Add usb-phy support")
> Cc: stable@vger.kernel.org
>=20
> Signed-off-by: EJ Hsu <ejh@nvidia.com>
> Signed-off-by: Haotien Hsu <haotienh@nvidia.com>
> ---
>  drivers/phy/tegra/xusb.c | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
> index 78045bd6c214..515298a9a433 100644
> --- a/drivers/phy/tegra/xusb.c
> +++ b/drivers/phy/tegra/xusb.c
> @@ -563,13 +563,6 @@ static int tegra_xusb_port_init(struct tegra_xusb_po=
rt *port,
> =20
>  static void tegra_xusb_port_unregister(struct tegra_xusb_port *port)
>  {
> -	if (!IS_ERR_OR_NULL(port->usb_role_sw)) {
> -		of_platform_depopulate(&port->dev);
> -		usb_role_switch_unregister(port->usb_role_sw);
> -		cancel_work_sync(&port->usb_phy_work);
> -		usb_remove_phy(&port->usb_phy);
> -	}
> -
>  	if (port->ops->remove)
>  		port->ops->remove(port);
> =20
> @@ -832,6 +825,14 @@ void tegra_xusb_usb2_port_remove(struct tegra_xusb_p=
ort *port)
>  {
>  	struct tegra_xusb_usb2_port *usb2 =3D to_usb2_port(port);
> =20
> +	if (!IS_ERR_OR_NULL(port->usb_role_sw)) {
> +		of_platform_depopulate(&port->dev);
> +		usb_role_switch_unregister(port->usb_role_sw);
> +		cancel_work_sync(&port->usb_phy_work);
> +		usb_remove_phy(&port->usb_phy);
> +		port->usb_phy.dev->driver =3D NULL;
> +	}
> +

It's a bit difficult to tell what exactly changed because of the
additional move. The move looks correct because this is only valid for
USB2 ports, but I think it'd be easier to review if the move was done
prior to the addition of the ->driver clearing. Or perhaps a mention in
the commit message would be nice.

It's obviously up to Vinod and Kishon if they want to see this
clarified. Either way is fine with me, so:

Acked-by: Thierry Reding <treding@nvidia.com>

--5P7ThJ8lckK4aSHF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmRTd5UACgkQ3SOs138+
s6Gt1Q/9EXhGAYP6JtZG9p/vcDxGeCROBCWGKFaLA5L1NvL+nJbZT9DmodB45UDH
cEUZPd6fdH6CYvZuM3B+khQvS2yOIvLtBt2WaGs8fp6yINmR0fKsKbWqjqglbrOH
jZJcpzzz8xjkZ3XvNAXB+qpkBEEzGqTeMz35GRMeDhI6xczHG3k6anhaecI+Gys4
H8gg7mjVMbiSDSXigfSw080yL7Y+42s8U8YHh9Q20Gszfk/hcI6qs0fUrZXpBy5K
1wHdrqtoPU7jWn6PF7L/LrFcbcomlPiKiSiB5hhmAj+l7EbQnmXXrtO9A84inZuE
+V8ylo/jEpxgnTtNYOaQuB5t/BhoZl7MARgJ4C1lMrRODlJtEK9JWqU4sBtz2K3o
RwnMaGeXq+3GB5kK5wK2+/H6jVLCoyKogm9csmcxpcptIO6EIWlM0EaqztwZNP8V
lD3UcG7bzrW7DyOJETnw04AjteQ7gsgzm2kNWcrQORCLmfM13yKsTHvsUTfOW6ie
mY+vFqnjlbslAJnrYEgRMG7KfJAWjVuqWN5NsBCaGChh/9+FiHU2joIZTt/n3SOw
GtXzPIe7gMJnkicq5VvwRvUskHrztivJEN5nDmx0Zm2sZrUX5gdgQhZ78uyOgM5t
FgPndVJbPSW8Mgj4R/maEpnK40UH+7hegbbQBT38l9X1NFucPss=
=1FBR
-----END PGP SIGNATURE-----

--5P7ThJ8lckK4aSHF--


--===============1436481259936056454==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============1436481259936056454==--

