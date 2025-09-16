Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3EF1CAC599
	for <linux-phy@archiver.kernel.org>; Tue, 16 Sep 2025 13:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SfThcKMDVmgiOVlf4JWYk4cEBDJVmhLgfuwL2Y9xMv0=; b=OVPsIleJO/7A5GUzXl3BKPnIIW
	5lXTSGW6h9P6y/rtEpstnqxHcUbzHLGE+w1SyNHXIDBvQOQNJkAX9JXT+/RqyAU+QOVns9dJU2JM6
	GsNq9A8Q9Hcn2QA367gT8bCGCaZ6x6rKpH+4Pj+IoCgb6otHYB4aBwFL12QlBzyfG8QQqHcAJ1RVC
	9uO7BCsr3DWJrfXd5TuJu8h3fxsAFyhVs8F6cQT8+MUlXN7pzEpjYHOfJ70HH8+zvYUbqM7y3CJDy
	v5NWMNC3eC2LdI3as5cxoF+gUfn6MZq5LRrvT17PuemHP4umJXltax/dPzZdegW7GcdpHdbOWBWdk
	9udgAtow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyVgO-00000007vii-3Bkb;
	Tue, 16 Sep 2025 13:25:20 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyVgM-00000007vhc-0R81
	for linux-phy@lists.infradead.org;
	Tue, 16 Sep 2025 13:25:19 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-afcb7ae6ed0so826488766b.3
        for <linux-phy@lists.infradead.org>; Tue, 16 Sep 2025 06:25:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1758029116; x=1758633916; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cec1ryxoXhXjrqFSDj+/T+n/YhygzPX418Utr1UQ+9Q=;
        b=Y6429xsigFUoxvCwY8FjF6GBf1eff8dBy5Px2Tn7GlUfzEMXDy7aQ8BUDGtpS832Li
         3N27glZaLvfbJfJHuemz7YxaTiLV6NynmQbyjg6tjiLdpUMAXIB5WyZZGqwImq1ppKAw
         Pjgg8VQPGR8PSXfUySjqWD4c+WExhgCksvNMlzTzyqHqY/6uOllBhU9lVyKNnwsUnayE
         zGYsplkNZgDeKiVUcnS2BSTDAyQPe6eQVbJSYUVSqUQSlUGMv2+ULT7Ydh6nZbJ1rVa6
         9zgCM5FPiqNT4G/oOCLmxHOlS52tSB8857B+y5JVMrj6RqWkoPOME2ShTmlgCvtch79J
         P4KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758029116; x=1758633916;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cec1ryxoXhXjrqFSDj+/T+n/YhygzPX418Utr1UQ+9Q=;
        b=UrqY61HnYrKId9gPlW+lyQFzw/VxUnriAhs6wY1LkDAQI07b8mxTg1olKm282votIL
         bfjqhJq9hZAqdawf8hCKjzec2ywdo3jRajSahx+NA5UASoQ1G/6ayjVmowDUpDpwUU92
         D7ycHmUTZ8O8KV4fVyX+C0o0mgXoXX0nWeClv2hS6+sx0iarcby03Ksp/awJP5+BR5Jc
         vpG7zNiYNHVImBQvmwnT+9LsNUukc6Be6/HB5seJkyy3bpAOVXWhrhevy9Dc7RSo6wPr
         KnjijYTrNV85qZsTVVg/h3lpuXvYcHr2DL7RK9bqkCCD033BDPlQAuO3DNLGay2rFP3n
         04fQ==
X-Forwarded-Encrypted: i=1; AJvYcCU4kzQ5Q8nJUQJ8KjWhayuKFNxrGkcrDiXJfoHcI3/jGWnLAaz+GtlyfMz6T5puZ3ubjMtNXDu4jns=@lists.infradead.org
X-Gm-Message-State: AOJu0YxgMXcX9TGNGlju3HAHFkT0wXFFpDtLAKJ6v8N+fZqpnl3m3owW
	nqFe4JEfRhvZsNXE81QxjSmRkfqeRhZXw6FOWDNrlYDBY8xbqrBq7Bl8tWu8LHusbtg=
X-Gm-Gg: ASbGncu6hPhMP7XERodlRLNSLsyeM+NylnMrx0Glj1HNF5asWPTa532qujAVS2mQVBZ
	46T9Lzt8iliZkQ90mzZESeMBlcog2NX7bjAi+pYLyefDRGhDwB2kYDg/T/L/zHxiN+qn3Zr+oMN
	sYOpCZN6yL53tEvtBoSDJQTtzA39jprcQIbIccmYf2nfrVW9kWLThACZ4mRwYkeXzdzKEPb4wPz
	Q1QpxwNZRF+twSaqqobd8PfxI9GLCGgPkTYrE2qtBTJk+BVVWvRocma6bBF9aPA1/wakDT+LGPs
	H6Y59w236SBhTUCXydOEqySnkz9vmXbhLSvltGgdSbKCi3qx+Mx6odTzZ2ptVp67ZXshgoI1k45
	6FiavQcKUfoQIYm0F7SjH9mVe2zavzlh5/mNqxi7gSJpkzrsoyR8bwrfnqaQcpKPrFhZRfBfaf9
	E=
X-Google-Smtp-Source: AGHT+IHULzH6kKOXUPbwiu6vHARKbboHWXDMpcq23vOfkgCUTSIFoBy+/FHZDfo4eSTeHnxRnGrBPQ==
X-Received: by 2002:a17:906:eca2:b0:b12:3f5f:603b with SMTP id a640c23a62f3a-b123f5f70c4mr542368966b.3.1758029116046;
        Tue, 16 Sep 2025 06:25:16 -0700 (PDT)
Received: from localhost (p200300f65f06ab0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f06:ab04::1b9])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-b07b32f35cdsm1135878466b.92.2025.09.16.06.25.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 06:25:15 -0700 (PDT)
Date: Tue, 16 Sep 2025 15:25:14 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: sboyd@kernel.org, jic23@kernel.org, dlechner@baylibre.com, 
	nuno.sa@analog.com, andy@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org, 
	srini@kernel.org, vkoul@kernel.org, kishon@kernel.org, sre@kernel.org, 
	krzysztof.kozlowski@linaro.org, linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, linux-pm@vger.kernel.org, 
	kernel@collabora.com, wenst@chromium.org, casey.connolly@linaro.org, 
	Jonathan Cameron <jonathan.cameron@huawei.com>, Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 1/7] spmi: Implement spmi_subdevice_alloc_and_add()
 and devm variant
Message-ID: <mr7gqhvom5soofn2oujzxtsuczsnx2yizkushar64cojwnvhd6@dt64ojgjqdxw>
References: <20250916084445.96621-1-angelogioacchino.delregno@collabora.com>
 <20250916084445.96621-2-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20250916084445.96621-2-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250916_062518_168147_FF4676D3 
X-CRM114-Status: GOOD (  15.59  )
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
Content-Type: multipart/mixed; boundary="===============9062049062666392649=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============9062049062666392649==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="j6v4vfa6gjhs5clj"
Content-Disposition: inline


--j6v4vfa6gjhs5clj
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH v4 1/7] spmi: Implement spmi_subdevice_alloc_and_add()
 and devm variant
MIME-Version: 1.0

Hello AngeloGioacchino,

On Tue, Sep 16, 2025 at 10:44:39AM +0200, AngeloGioacchino Del Regno wrote:
> +/**
> + * spmi_subdevice_alloc_and_add(): Allocate and add a new SPMI sub-device
> + * @sparent:	SPMI parent device with previously registered SPMI controller
> + *
> + * Returns:
> + * Pointer to newly allocated SPMI sub-device for success or negative ERR_PTR.
> + */
> +struct spmi_subdevice *spmi_subdevice_alloc_and_add(struct spmi_device *sparent)
> +{
> +	struct spmi_subdevice *sub_sdev;
> +	struct spmi_device *sdev;
> +	int ret;
> +
> +	sub_sdev = kzalloc(sizeof(*sub_sdev), GFP_KERNEL);
> +	if (!sub_sdev)
> +		return ERR_PTR(-ENOMEM);
> +
> +	ret = ida_alloc(&spmi_subdevice_ida, GFP_KERNEL);
> +	if (ret < 0) {
> +		kfree(sub_sdev);
> +		return ERR_PTR(ret);
> +	}
> +
> +	sdev = &sub_sdev->sdev;
> +	sdev->ctrl = sparent->ctrl;
> +	device_initialize(&sdev->dev);
> +	sdev->dev.parent = &sparent->dev;
> +	sdev->dev.bus = &spmi_bus_type;
> +	sdev->dev.type = &spmi_subdev_type;
> +
> +	sub_sdev->devid = ret;
> +	sdev->usid = sparent->usid;
> +
> +	ret = dev_set_name(&sdev->dev, "%d-%02x.%d.auto",
> +			   sdev->ctrl->nr, sdev->usid, sub_sdev->devid);

If I understand correctly sub_sdev->devid is globally unique. I wonder
if a namespace that is specific to the parent spmi device would be more
sensible?!

> +	if (ret)
> +		goto err_put_dev;
> +
> +	ret = device_add(&sdev->dev);
> +	if (ret) {
> +		dev_err(&sdev->dev, "Can't add %s, status %d\n",

I'd use %pe instead of %d here.

> +			dev_name(&sdev->dev), ret);
> +		goto err_put_dev;
> +	}
> +
> +	return sub_sdev;
> +
> +err_put_dev:
> +	put_device(&sdev->dev);
> +	return ERR_PTR(ret);
> +}
> +EXPORT_SYMBOL_NS_GPL(spmi_subdevice_alloc_and_add, "SPMI");
> +

Best regards
Uwe

--j6v4vfa6gjhs5clj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmjJZTcACgkQj4D7WH0S
/k4DDQf9Fn1HPf8O4u3moGauabP4ZoOg+KJoOMMHiL4JAWvb+ihWLP7SpGDPBfiO
DjMRfgEltRK7S1XHVZqjpkIAREqaRc6TQCYX7uafwyX9JXpUGPvjoVWeywhnWJU3
5vE9b9lEeFfiRzBq8RQ0tr17GyPpmviyXdL6kimCDDWkKzCqU9mXskQiO/HYxzDV
mJBLPPQQ6aRxVVBLLqdsggxptBQ+8BtkqUy9+yqjncsbYTwEgj4QY65d9yQXPTgL
st+pYh7Ra8xceTMOExplwPHN/uSqPBTMTRomAsrtOz09tETIkR6mOuEOUO3fsy9q
v/FjPX6SlBekOqw7TnPDq/t/204YwA==
=j8SY
-----END PGP SIGNATURE-----

--j6v4vfa6gjhs5clj--


--===============9062049062666392649==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============9062049062666392649==--

