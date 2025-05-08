Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B54FC3ABC5
	for <linux-phy@archiver.kernel.org>; Thu,  8 May 2025 22:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Hi9cztdkc31kayFJHuxFU0XWY2hs9wy0KHGTnzPkDgk=; b=Xq51nFO6G3JYYxQF9Y5YOCkY2A
	SgzDqtU4kC0vyKlT6nW7wgxTw4ncNtPdpM2WpUG39ajIL91sHzKzVZDoDCrVp21flVNfz9UhUsPkZ
	4uam+saQ+q9AnyFSYkdAt4iy7z1V3y9lYT2dkQAWZbMwXug1lo6O+mS6bEuHmDd44EyLHWDiclpm+
	gk+FsAILrQQnk9Vg37Y1o471K3NeOtvEGjeBTzW+Bp9IeAWgrYGozmMmeuCaQxhHeFncdM/UwSwb4
	awRUztc9MDyB3xcvPR62Xch1P7mU+WP7tl3jIbqrMoWVI8yPOSJ4igyZEy4r/iUeANSarbscF4N7N
	Q78+efxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uD9YY-00000001tVs-3AI4;
	Thu, 08 May 2025 22:17:30 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uD9YV-00000001tVT-3Umm
	for linux-phy@lists.infradead.org;
	Thu, 08 May 2025 22:17:28 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-43edb40f357so9717265e9.0
        for <linux-phy@lists.infradead.org>; Thu, 08 May 2025 15:17:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746742646; x=1747347446; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lJ1iMb0NXCpxItNtCO1N1ZOA2I/6OFEbD4mrQhwulzQ=;
        b=Jw3kSTpMbpwNo3zC+mBAcYZcvaneHXeo/gJfhAHPC7IMx/kH7YGoC+7g3JXNZcw+j0
         blRRelbkHL83HyJvAbuQMjXPOBS5GnzdMM0hGuMz9zL4N0yU3GWaVJVKRhJUHdSQs7qp
         6pjac+htY6s9JJo71F/5mR5PaGaq0z5LkXRXcLymLxjDTShG621wiI6DZuXWGijc8Vu5
         7c/yyrIXsDsl1m1rZrCi54vVTUKsjWzr5oeNfCWaZLDpw1PZfjpFZCuBq78fk/WkSvHb
         Y4jhDUYvWKBfinifvIEQIoA2SIb+Xs/QY02jWJZ81j+AsQUqoWCHwqM8ZHd8TMGDhCJn
         hvBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746742646; x=1747347446;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lJ1iMb0NXCpxItNtCO1N1ZOA2I/6OFEbD4mrQhwulzQ=;
        b=ZMB+REf5xIC3BQRPn/5mbzLb+a08n2gOwzii6fNtg0/DQE7sMvtGhniG+IPrhEtEkd
         APzuWkDw9eq8MruW4X8ctYEBsUG+dsRiqdui/ySR0Bb7X0rYHar5m5NogtBjZ9KeExtE
         RusOC7/Bcofkw/FhBYZX3g1R1QHmVb4/JBuQ+TttjfTEDOqC6xAXY9aazDLTzUtGPE6C
         UMIAgy/IJJOXk3tCb3xKVGhKQqJEh4DPtI1wVv1z+iNDqnjbZm5fVc8yjUIPTvIqbn4h
         If2lFThxRS+wnK/CcuVVuECtEcD3OLmTwmem1pCJg/kU5pLvdDa9Qhxp/S0M7UBA6keR
         ldUA==
X-Forwarded-Encrypted: i=1; AJvYcCWo8Zz7vE2A780T3ivnvL9wBq7iZ2vuVWJSgT4FKsQ/o2ulwX/84O169ordpn6yP48cV2oyCGYcEjA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxj8/7lzzLRFYRJk6Iaj3S7oejL7AKXFJxJwiWPFGH9NpbXZiZT
	D+bP2/MVMqPOLGfw7R/nsk7HEXwxCVwpAkcMmKa095+GkxyfCmCP
X-Gm-Gg: ASbGncvr1APtqM98nulu0IEjTrYwrhBqoQyN8bhypXAH3Y3DUe3Swn9Qx1rIh0GoE7M
	XpG5xG7H8eAkUsCcuHIcrymA8hy2EADaLZ1lkkyYAs6HIkmufsmJMmUkhvgoBtS7umwcZM4J1zy
	xPH3jiUKAobexRW1eQxDTFqA8vB1EHKsN1dIt3RG9DVFw98LZzpMBzR0B64zBdQZvMuuyLuMZYx
	gnEvP4nAv0ZEUdbaHzoC2/2v4cAZ1gWkpRZgGuK41G0j7MFMyE703ij5K+xTR5b70A3V33EdK0q
	ygJZNxX0AaEgg0IwFgUMKDufKVoyFIkSIK1rRI+7PCbdGyMJ0oIUBxE60TU/plqz9xaZOX+tChl
	P+6kI6QiFzv43agYTz08PuZvxrgQ=
X-Google-Smtp-Source: AGHT+IESyJIya633Xs6OgbWXHxjXtmkZXYXzAK5Hqf5K3B0F04vkkc778CuVVzkBefKUzMwh3Ce8Lw==
X-Received: by 2002:a05:600c:4e46:b0:442:c993:6f94 with SMTP id 5b1f17b1804b1-442d6d3dafbmr8132225e9.12.1746742645750;
        Thu, 08 May 2025 15:17:25 -0700 (PDT)
Received: from orome (p200300e41f281b00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f28:1b00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442cd3b7b83sm49241225e9.33.2025.05.08.15.17.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 May 2025 15:17:23 -0700 (PDT)
Date: Fri, 9 May 2025 00:17:21 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Ma Ke <make24@iscas.ac.cn>
Cc: jckuo@nvidia.com, vkoul@kernel.org, kishon@kernel.org, 
	jonathanh@nvidia.com, linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org, 
	linux-kernel@vger.kernel.org, akpm@linux-foundation.org, stable@vger.kernel.org
Subject: Re: [PATCH v2 RESEND] phy: Fix error handling in tegra_xusb_port_init
Message-ID: <hhtm6kn4vtdn4yimi7yvaxczzt5itig2mv4zfubfubrp37hpwy@rrhueuyrhbw2>
References: <20250303072739.3874987-1-make24@iscas.ac.cn>
MIME-Version: 1.0
In-Reply-To: <20250303072739.3874987-1-make24@iscas.ac.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250508_151727_875996_170DA42A 
X-CRM114-Status: GOOD (  16.57  )
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
Content-Type: multipart/mixed; boundary="===============7978060974527014724=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7978060974527014724==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wx67l5oe5lmxpk5q"
Content-Disposition: inline


--wx67l5oe5lmxpk5q
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 RESEND] phy: Fix error handling in tegra_xusb_port_init
MIME-Version: 1.0

On Mon, Mar 03, 2025 at 03:27:39PM +0800, Ma Ke wrote:
> If device_add() fails, do not use device_unregister() for error
> handling. device_unregister() consists two functions: device_del() and
> put_device(). device_unregister() should only be called after
> device_add() succeeded because device_del() undoes what device_add()
> does if successful. Change device_unregister() to put_device() call
> before returning from the function.
>=20
> As comment of device_add() says, 'if device_add() succeeds, you should
> call device_del() when you want to get rid of it. If device_add() has
> not succeeded, use only put_device() to drop the reference count'.
>=20
> Found by code review.
>=20
> Cc: stable@vger.kernel.org
> Fixes: 53d2a715c240 ("phy: Add Tegra XUSB pad controller support")
> Signed-off-by: Ma Ke <make24@iscas.ac.cn>
> ---
> Changes in v2:
> - modified the bug description as suggestions.
> ---
>  drivers/phy/tegra/xusb.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Vinod, Kishon,

looks like this was never picked up. Can you apply this?

Thanks,
Thierry

--wx67l5oe5lmxpk5q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmgdLW4ACgkQ3SOs138+
s6EG5w//fN/ghy8cT1CG6l/5SDKWSzugOJO2PyEvdPwHz6RFgkmhaNflD7MT/GxN
X3AzAY8IKxzf+KiY+uBGfljYJA5HWbhXMTI5xk2BrfGzgdmGSjM/6Vtg6VQWJXfK
7ooj0JcQpz5yoaWWgpGbtAOBNxltngEypA/xSurMjsF+8O3J84VenKYKoNPUOr4N
xYNbHsKqdL2oFNZV3f3s4X9iP4VhWPP/wwtN8kvhHy2cE3nhzxh4Eb9g05VMHqzz
NN8gDYbcDRHEEMJ5auYHKflYNKjq9sDUandoliYmeFhwz9vcX9S1mfVedguBOCDo
GwvbTmeJwdt7vdGp9uaYPycXki6ydcJPZAzmu/KPumYyohmwAtqKRi6MAoNdvBtH
+ZLjh6MJCTxf0kj9V02e5o9jgOCy4jo9OvphLq4GGMlX3AhL8OBkOzBdZNuWvMJ1
JstXIoj76oMRxBcvBcuScVHWUN4VJuDN0LOml6z5AQeEcaVZSsl8uYo3QLyI+9bE
qt89zzilKokKZ9nYkYPe7lxCKnlFMWHkD/CcDPQqzUuo/L27CypvXu5AyaAuxjfC
4I/Qeo0GnUM1POs5++MQgT33ViSXlCEAH+KDtSXIi3FWXoWdqGafYpo0jzdbiyAA
O235paAjx387+XnhTe/QSwipOPEzaztSs3xk//uQBhZp6glIejo=
=c4c0
-----END PGP SIGNATURE-----

--wx67l5oe5lmxpk5q--


--===============7978060974527014724==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7978060974527014724==--

