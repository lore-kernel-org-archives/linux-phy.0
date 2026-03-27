Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACFFF10ED679
	for <linux-phy@archiver.kernel.org>; Fri, 27 Mar 2026 14:06:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pQZNYQsrK6rYi2jMVL/Ab5f353OA/NBZ3iGHt8xz+eU=; b=iPEH4mYl6SR4aNNdEwTMQB/a2m
	95SBl4HZMydNPJIS4KNtGl1G+S930ACcLifOto5wFr9tWe2bRQ2zBiUOE7f+eutfH64FLuFnmNWkx
	09e6hc+QbmL5TfpQfY/vQQ9G1v5/cgJ1CcgIlwR4qPkUl8G+QvVZjzVPfLjpZPwnYBD2X2IyZjB3c
	2aaGV+0AxAHjxGP7PP458crxccQ/I/OTzAId8u4yqtHjlloJEBlPrLRwz/J59M01zZoQxk47TDyfr
	lawVwmOrXhmeLK+sAOtknFtss/IOwNW+e9+m9xTYPOXSa4XxaL/LKergzUTvVKR43D7CZgdU6mp4b
	7eZDlJ/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w67pY-00000007ZAo-1n3q;
	Fri, 27 Mar 2026 14:06:32 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w67pW-00000007Z9u-2g6Z
	for linux-phy@lists.infradead.org;
	Fri, 27 Mar 2026 14:06:31 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-43b41b545d9so2227746f8f.2
        for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 07:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774620388; x=1775225188; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QSUpIlblw1Y8p0Flz+2ps8AGucj2y3pRw8IP0aJ+OJI=;
        b=S6D4zwvThnSh0/tUJ/kyAmzceNf7WhpNEMQ05WoYKUcBJOehsVzzdyFngdE9q1uoEY
         g46qZ1kVrCdYqiPg0oxGnzoCMISSsYKKq5N5eCl+ZgapgTlkacgqIi00XqCDOriFoBYX
         AgGqG6GTG+Ua7N4tP3OftpEJKgsl6AeadQNAy3N1Vf0KCMUQ8WOPzQ5juC9YUdofzd+b
         0LcARRMhX+ETn8Ap7B9AjwGun/qYK9Z5+H7avErOP9vriEn1LzaqJW22ezeqv3cRN5MN
         evvYc3TZrlNg0W6GbEKDgAcC3aXLNH4frs3w0iOPaEpMbfoBzULFFPvJGt3DfFsRLWYm
         CXew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774620388; x=1775225188;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QSUpIlblw1Y8p0Flz+2ps8AGucj2y3pRw8IP0aJ+OJI=;
        b=CxiT+k6IKaaLI5hQ6ZzL8IXwPIX1LaK2UUXQzRHn7tDhCmfJLyz2YLnVtQOOvQYlNw
         NzkK6jVBR+1PymHzLeGHqAyE6vIojwhFRELzGVULIl8K0dhyLFFZ9qXj4JOc0B+Ii6gX
         ECc7JbLE5qexHdKL7tY/V4sQPI9WB5z3Myln6hH1nGAGu+NXED91QnK2+49fZH2Ou9H3
         Mj/YwMwzDYLOLRh6TAKXgQdD3sDzbRkmds5zFZoqYremVyGdTYqBgQ20SpLzeOBVlxuq
         u3cD8z47zDJ3v48awIiulrjizOqDydnrsnNR0mogOPvqkSR/q8yUDrArnO24uEc0MVBa
         M4pA==
X-Forwarded-Encrypted: i=1; AJvYcCX9fUUuoewsVYP/amyWVIlDH5kqA3hoBpQMBTOGJpyPMkyn2+OGn1yEg8zdXDEzd4sLrh4gFEgqHUs=@lists.infradead.org
X-Gm-Message-State: AOJu0YxFBahTNy4TKuJWsNfYkYkuAjsLF7jkMp2nz9ONfeNVNUgVPmoq
	b/ocQauMnBDD8lPqe1AOBFATXRWRB4FyOVg5sPccM7k7TsP3VwTmKkTR
X-Gm-Gg: ATEYQzxUqKNtj/OFoqhLlCXSWaOc6g9EscckN07soJzYa6seN7uOlLpYI8c0GHRZliJ
	/CSA9ojki32EQyRdxJuam6fV4VuoCDMvY1P8DGRwqs0IsVRbz2g2lW0I9hVxWGAoHmn7WAYHqqQ
	/kjcgfxMJAGxRJThmjIoIyR8OHG/kea45YNCQVH0LnahiBvk8t+sMK+F0FPPGJ1FMn7W3e4U1Gp
	AU5uBJWdvaBD6/hzYm5wQQXAh5drjQwOQqyHZ04M9wgWshcW72DzuBb/KZ7mrsx6ywa1sMJmHrY
	qEjxV1u0O/UXGelPn+Bwd/JvQZ5OypKo5n0gmZhkOqZZyae/OPD8I8gLVX/8385ocQe8hrsGP4z
	u2Oy+jTjxT5G4+7e5E3DvAjihuU0V3Qd7eM2rVQNj82Uht9kY1iy0ndFqhHHCHd6mnHZQRPsoAp
	JX1vzM6/UybqwN18U8Y+pPJY4CzdymvLkg1xEEr1KfPj9VcPHDq6lBy/xDrGmvD/hZT70c8kVq4
	jafKz70rq9lmQ==
X-Received: by 2002:a05:6000:4212:b0:43b:95e9:413c with SMTP id ffacd0b85a97d-43b9ea6390fmr4110385f8f.44.1774620388098;
        Fri, 27 Mar 2026 07:06:28 -0700 (PDT)
Received: from orome (p200300e41f249a00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f24:9a00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b9192e305sm16052576f8f.8.2026.03.27.07.06.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Mar 2026 07:06:26 -0700 (PDT)
Date: Fri, 27 Mar 2026 15:06:23 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
Cc: Thierry Reding <thierry.reding@kernel.org>, 
	Mathias Nyman <mathias.nyman@intel.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Jonathan Hunter <jonathanh@nvidia.com>, JC Kuo <jckuo@nvidia.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-usb@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/6] usb: xhci: tegra: Remove redundant mutex when
 setting phy mode
Message-ID: <acaNBQkGgQ_N6Krh@orome>
References: <20260127-diogo-tegra_phy-v2-0-787b9eed3ed5@tecnico.ulisboa.pt>
 <20260127-diogo-tegra_phy-v2-2-787b9eed3ed5@tecnico.ulisboa.pt>
 <acJ50sQraVmy4zXs@orome>
 <00aeda7a-e5e5-4779-b212-6e56c2c5ec31@tecnico.ulisboa.pt>
MIME-Version: 1.0
In-Reply-To: <00aeda7a-e5e5-4779-b212-6e56c2c5ec31@tecnico.ulisboa.pt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_070630_700540_E45DEF97 
X-CRM114-Status: GOOD (  29.02  )
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
Content-Type: multipart/mixed; boundary="===============7326367983329062520=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7326367983329062520==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ktw4w3vv6m4wgb3m"
Content-Disposition: inline


--ktw4w3vv6m4wgb3m
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 2/6] usb: xhci: tegra: Remove redundant mutex when
 setting phy mode
MIME-Version: 1.0

On Thu, Mar 26, 2026 at 02:17:33PM +0000, Diogo Ivo wrote:
> Hello,
>=20
> On 3/24/26 11:48, Thierry Reding wrote:
> > On Tue, Jan 27, 2026 at 03:11:48PM +0000, Diogo Ivo wrote:
> > > As the PHY subsystem already synchronizes concurrent accesses to a PHY
> > > instance with a core-internal mutex remove the driver specific mutex
> > > synchronization.
> > >=20
> > > Signed-off-by: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
> > > ---
> > > v1->v2:
> > > - New patch
> > > ---
> > >   drivers/usb/host/xhci-tegra.c | 4 ----
> > >   1 file changed, 4 deletions(-)
> > >=20
> > > diff --git a/drivers/usb/host/xhci-tegra.c b/drivers/usb/host/xhci-te=
gra.c
> > > index 8b492871d21d..927861ca14f2 100644
> > > --- a/drivers/usb/host/xhci-tegra.c
> > > +++ b/drivers/usb/host/xhci-tegra.c
> > > @@ -1357,15 +1357,11 @@ static void tegra_xhci_id_work(struct work_st=
ruct *work)
> > >   	dev_dbg(tegra->dev, "host mode %s\n", str_on_off(tegra->host_mode)=
);
> > > -	mutex_lock(&tegra->lock);
> > > -
> > >   	if (tegra->host_mode)
> > >   		phy_set_mode_ext(phy, PHY_MODE_USB_OTG, USB_ROLE_HOST);
> > >   	else
> > >   		phy_set_mode_ext(phy, PHY_MODE_USB_OTG, USB_ROLE_NONE);
> > > -	mutex_unlock(&tegra->lock);
> > > -
> >=20
> > It looks to me like the mutex here is trying to protect against
> > tegra->host_mode changing while we're setting a different mode. That
> > doesn't seem to be taken care of by the PHY internal mutex.
>=20
> After taking another look at it I think I understand your point for the
> mutex, but in that case wouldn't it also need to be held in the writer
> of host_mode, tegra_xhci_id_notify()?

Yes, I think it probably would need to. I don't know how likely it is,
but I think the purpose of this is to protect against the ID notifier
firing quickly in succession. Although, given that this runs on a work
queue and work queue instances are non-reentrant to my knowledge, I
don't think we need the mutex here after all.

> This patch has been picked up as-is into usb-next so it would be nice to
> figure this out before it gets merged in the next merge window.

Given the above, I think it's fine. Maybe the commit message doesn't
give a correct reason for why we don't need the mutex, but the resulting
code looks like it should be fine regardless.

Thierry

--ktw4w3vv6m4wgb3m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmnGjtwACgkQ3SOs138+
s6Goig//SnPG7Rf8K0gKeOP5TZWyD90YKXfxg4roWTYyRNVHdUU2H14n31xJS1Oo
pMQvSFpK/kjChe09fFOUecq5vW68Rrfm2+Vi5rqfW+GHUlGo+5S70gJ8lbpV4wOh
Ee7fuEilJgSjIMVxxwQY6rupnrXIPufzsSHGwbtaSYy04ibP9vhDn2REJ0bkIuZc
AWzBBUQXf+aDMyKkliS5Ll15t54oQRdjZp/c02Zd1ffBX/6vx2/lx7hbSTBEm8mF
eTyQV9XU3so3X9+mmff5uYEOLkHOxEJgOOVdMW8XDrTTLqR+PgTJ44zoGcOnCrNk
2sOuA8ThjZBqgmjmVvi1zTasc0jHB7McIwHD8XLHmBS1SM1k8y7Lwjzm3VXXqYOl
aXaMCIEwzp+WeYuxLPDQp5Qj8HEbNmAqZMztnucMn0h6riFsFX1SICiQ7o8DXe3/
qTPjRWL7qvtiJSBCN068/hZF6l0m2hIfJqflvmF9CqDd4wzAfUqgSZiavmwpJpYt
refzB/wklao+yrD+cp895hPidxJVmG6omcleeczxJmVVKWm6pOYJP3LCLGezArVn
phgVYhRDOUvKWQk6sgtCqJbf6h0T1Nf1YvN/Cu1y6MAB1tgGiMUV6JEVuhaPN+kd
PnN3cFTF/8ATfGpMSArmO8l4VYoGHx5FxgE/LFRPED4LZgaGlZU=
=g7fB
-----END PGP SIGNATURE-----

--ktw4w3vv6m4wgb3m--


--===============7326367983329062520==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7326367983329062520==--

