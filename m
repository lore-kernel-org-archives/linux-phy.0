Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BCC8E7719A
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jan 2025 13:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AdCxxMxmLsiADIofvGWred2ccfdBMjoZxS9/nhOuwDk=; b=2gviHpde+KZJLdXphbqomAJFTg
	SQQelWxBrCZhLRHWolcegiW7CG6J8EL7bh+Y5H2970lg+jYRLpE+3oilapCANHWfkbfEXEOso8eIA
	hbRp936eqnXAtGEkA0RJxgP/OMBUhpkSjr0CLxAD6ldb2D1JinoYdTcP3v14qHeBNHmtvWg2vNiLu
	23HL1/dLelOhwDGhuOAAPm1WCcl6rdvFYF+namF3oDusFzHcRoM6dOLbb1FLTja/A5kIWS6zS/Gz7
	EFAIfNdRQ2oFODBJz4hwXFaxoIAgT+tbJ/rWs0ImLoTcbFKzCzFwNqj9TcUecInJLy1zo6TwYsC/3
	JstnJo1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVswh-0000000C7Pw-1aB8;
	Thu, 09 Jan 2025 13:51:35 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVsir-0000000C3TD-1wzh
	for linux-phy@lists.infradead.org;
	Thu, 09 Jan 2025 13:37:18 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4364a37a1d7so10471015e9.3
        for <linux-phy@lists.infradead.org>; Thu, 09 Jan 2025 05:37:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736429836; x=1737034636; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SmH93BYvyCnSPbMq0jHZyuUQVQaG/vWQ+Adhu1NOeU8=;
        b=fFrmdVlUbGvV1SuIrbHevz2KYKCySOneuASelMnRNS/M5n5IiSL2hmSKY0QfXISSXs
         oEozR/vKNWN7Pdfcp+oFcPkOWhi+PX/2v8jtixLIc914P2PEOTo+/KqsC6hz3/j0rwHx
         Y1rv70Dnaa+zvVbnXkynC4Zo8yfpCIGW26QUG6tb/QOzxWJaqi9Ptsw6DEhQlhpjYQO3
         o0gGmAekTe+XhB+LETIPeYnKy7p58uqCxMuKTGi9N2upcdD9XqDWNosQI6t+zleG6Nj1
         jjwXxAJ8/T0TfZVPbHvZQ4Tol5iszu/2qMDpUY8kyXjWSRr4JcDYDHYwu76YhU97prZT
         Qqog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736429836; x=1737034636;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SmH93BYvyCnSPbMq0jHZyuUQVQaG/vWQ+Adhu1NOeU8=;
        b=bvH4CrEhD9UIqWBm1Si+3JfFRdfpL3LV/UAWhI5E1i+gHblfgwp6vsC95BXAWLpgW3
         2vNEtME155NHppD3LWAHrHmg+GnE3aqKPqYL7RFdY0j6yZZj1QMisfZYvNuIyHz2y75u
         Egt2HeVsgbSPHx6GkiykZ06c6Sjmzbn+tsBG921rVFWcVHpDWoaNdEdtlLRNRI2VnvU4
         XEWSF3q+n9jLrR+ThNPf6VJbKQ8YUvh11/nctgWim+9nD1zCWWr0011UIEVJn6cswyoZ
         +6u5n8HEx1e5+0wHN7aSHY0HHtTznpGNUK08DKE+pXp8/CnMsX+mTB8grCuUKHG6RX0v
         Z1pg==
X-Forwarded-Encrypted: i=1; AJvYcCWf46no2tSnVR24JANtzHq6EKeGVcSvnvphPByEmin98Fv0huA3+LR1BMCqGy0JrGPA8vJvpNNqTZ8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+sNwSsEZNuq/CCB8L51nvSv4jTjCPJPEipnRVR2FmgMrAkkji
	Md1Uw0vJzKmkFRG43sjUCvjx58r4IsOeTTei+snp9osxJ5Fw25Wl11cQSw==
X-Gm-Gg: ASbGncvTCxYQZpBIFuiNE74wQOsU/ZJqdxJ3gp4UuxtrOXI8wlspaK0XzemhinVeOiN
	qZJgOeYts5oBqMp9KdMIFX10OoqN+wi1CkcDqdXXqYiP7ZUHDvgBGylYXDHg4G1Z0GKYLtS55DL
	2AebWsbMwJ/pyTynSQpfxm2bsmEPi0ocVeKDfNM5LCklYC726cDfmXdGuG9LX4jKdhhG+YDP8qE
	ZTR5CnZDK002kOTxC5vJCLMSladezlGAWPhMTSd1c5Vwb4Cf93wgYQ1iqZmyorWmxsAaq7ASITW
	PLllSVn5jQmnrrLl6KFLeYXX5zmDSNJReWMVcYT4Erw=
X-Google-Smtp-Source: AGHT+IGYP3yVvKkIjcpct+SNeD5GTm0cuYtD6iVaq7ZsZOZmk4hrtnLgZBoUgCLCbuu72ZfrfVYC3A==
X-Received: by 2002:a05:600c:3149:b0:434:f297:8e78 with SMTP id 5b1f17b1804b1-436e267fbe1mr60471065e9.7.1736429835836;
        Thu, 09 Jan 2025 05:37:15 -0800 (PST)
Received: from orome (p200300e41f281900f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f28:1900:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436e2da66d9sm56299485e9.1.2025.01.09.05.37.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 05:37:14 -0800 (PST)
Date: Thu, 9 Jan 2025 14:37:12 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Ma Ke <make24@iscas.ac.cn>
Cc: jckuo@nvidia.com, vkoul@kernel.org, kishon@kernel.org, 
	jonathanh@nvidia.com, linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH] phy: Fix error handling in tegra_xusb_port_init
Message-ID: <p4rkf6bfo76njky6ovyk2w5rgqugjrubnc7npfkj5vvpivufs5@6b4yzxoapbeq>
References: <20250107085129.812835-1-make24@iscas.ac.cn>
MIME-Version: 1.0
In-Reply-To: <20250107085129.812835-1-make24@iscas.ac.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_053717_504562_170EB787 
X-CRM114-Status: GOOD (  22.37  )
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
Content-Type: multipart/mixed; boundary="===============1196355053380113973=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============1196355053380113973==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="asmlsgho3wx3j5tl"
Content-Disposition: inline


--asmlsgho3wx3j5tl
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] phy: Fix error handling in tegra_xusb_port_init
MIME-Version: 1.0

On Tue, Jan 07, 2025 at 04:51:29PM +0800, Ma Ke wrote:
> The reference count of the device incremented in device_initialize()=20
> is not decremented properly when device_add() fails. Change=20
> device_unregister() to a put_device() call before returning from the=20
> function to decrement reference count for cleanup. Or it could cause=20
> memory leak.
>=20
> As comment of device_add() says, 'if device_add() succeeds, you should
> call device_del() when you want to get rid of it. If device_add() has
> not succeeded, use only put_device() to drop the reference count'.
>=20
> Found by code review.

While the patch looks correct, the commit message seems confusing to me.

device_unregister() will also call put_device() after first calling
device_del(). So the reference count /is/ properly balanced.

Instead, the kerneldoc comment for device_add() says this:

 * NOTE: _Never_ directly free @dev after calling this function, even
 * if it returned an error! Always use put_device() to give up your
 * reference instead.
 *
 * Rule of thumb is: if device_add() succeeds, you should call
 * device_del() when you want to get rid of it. If device_add() has
 * *not* succeeded, use *only* put_device() to drop the reference
 * count.

So the real reason that this patch is correct is because
device_unregister() should only be called after device_add() succeeded
because device_del() undoes what device_add() does if successful. In
this case we only need to undo what device_initialize() does, and that
is what put_device() will do.

Thierry

>=20
> Cc: stable@vger.kernel.org
> Fixes: 53d2a715c240 ("phy: Add Tegra XUSB pad controller support")
> Signed-off-by: Ma Ke <make24@iscas.ac.cn>
> ---
>  drivers/phy/tegra/xusb.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
> index 79d4814d758d..c89df95aa6ca 100644
> --- a/drivers/phy/tegra/xusb.c
> +++ b/drivers/phy/tegra/xusb.c
> @@ -548,16 +548,16 @@ static int tegra_xusb_port_init(struct tegra_xusb_p=
ort *port,
> =20
>  	err =3D dev_set_name(&port->dev, "%s-%u", name, index);
>  	if (err < 0)
> -		goto unregister;
> +		goto put_device;
> =20
>  	err =3D device_add(&port->dev);
>  	if (err < 0)
> -		goto unregister;
> +		goto put_device;
> =20
>  	return 0;
> =20
> -unregister:
> -	device_unregister(&port->dev);
> +put_device:
> +	put_device(&port->dev);
>  	return err;
>  }
> =20
> --=20
> 2.25.1
>=20

--asmlsgho3wx3j5tl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIyBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmd/0QYACgkQ3SOs138+
s6EgOg/4rgyOGMZjMtdunsxWV1SjVj7jfWgylsyvw43B3u571vaaaBSceklwKPoo
H0ZfAQb3iVuGMmFLtMGm7YBHwdtT0rafA8D/m5H48HyxaIIFTduTkOphl2nLtCta
Co/oT49iVsJAEg+EQU7zUN7rcsGj5W1fJPCHs9yYk6jog87Lk4GKzVRFmVEc6hOw
yK8x9B+MTrioN6LEO11wjeVkef6pBJ5z35/Q3E6Fs/9+dcER3ljSXPIO6Q7sPm5Z
SCxzkPIcBtBO3N7UpND7i0gFt9VgNZySjIA/mdAKiWnu6Z7lUsnGmbnoX9BlyqTt
L1NmWYJ1kZGsuEYEXAXfsNZFosFfatGo/pfjMk9OGjyWeOSqoo/2ZcpF9fuEg08s
hIqX2v9lEP45RiLwWZxUOLW90nXs53D7QQ3ZOTDD6OfFzvJez0+BonuZMrA7JU3O
QZU1RtlWPKknYivDFPhJS6JMdhy2X5+QCgwoLLtw5VJP3lrsTjJ507ZxQOEEB5UL
z+qlLEWGZvmscX0v1654+nxs6fYtvjfm3ZvlGzYhrq6Tpx/dLQHvvMZSY/RTkDCR
TEl+gwcegL6LRN42ty5K8768mh/+TcXUBHdvAdjA2ITyzmxR6BPIUhgW1ZmExXJB
y5/6L0OSJOIQwgyDY7p0WmlO3Xau8+zP2TKjzkcMPhZG04PeFQ==
=pD0j
-----END PGP SIGNATURE-----

--asmlsgho3wx3j5tl--


--===============1196355053380113973==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============1196355053380113973==--

