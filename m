Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B233ECAC598
	for <linux-phy@archiver.kernel.org>; Tue, 16 Sep 2025 13:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7w3AB2KjI7cGNXDaDEhtfH5z0MFaY8hesADeUAzl9GY=; b=VocdjTdfsgtUldeXHm+cljT36L
	OSf/fNN+hdWeW9tSb9uNWjT4LdJlUqBy4wAUSukfnR0rT7WopXeq5BKFvzH1+f0aRmoju8nKvTFf8
	Luao/GhYJTlcQ5htBGSNA33jXuQ+LWvQItfR5QEcIsYwjP5jaKsBEGc63benuZNH0bb+4Gt+WaJxm
	TyD5Yd5kkcWZJF4hNvVcIsXLTWIw8aqY+h1PBqTaQgUPFWDszasvuFGkqvbN1meTmmu/ZbB4u1Has
	mGpmBJvroXWj4RCoy2EYXiveigVOZ753oSxWi8v+CTdo8Bm2AhsiCcfoU6v3he1Vy1PEw+sSos9F3
	vwWYaEiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyVg9-00000007vfO-21da;
	Tue, 16 Sep 2025 13:25:05 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyVg4-00000007veA-1eaS
	for linux-phy@lists.infradead.org;
	Tue, 16 Sep 2025 13:25:04 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-b042eb09948so1125865666b.3
        for <linux-phy@lists.infradead.org>; Tue, 16 Sep 2025 06:24:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1758029098; x=1758633898; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gwfKh8YcNEbswE2yYv8jHBhvIioj0iL2kRQaWZR7TS4=;
        b=DC5FgF90PsKrrrzp7fkHTsTWvnCTSg87bIySRmWRko8ecnPpMx+8jOc9WK3m7sFWHk
         2J7SPMgKJ7z0/q0jwAWurb5T95FJv/17HDhUVfWlWgBLOdekjpBe+8rDN8ppYlv6ZaqV
         DbwLSON6WPpV6gVt9hUQPtDgFrPknmELzSVE6mw0DWkpI4EW0XdDF9IPpzBKPMA2NGSV
         9MrlJSM222JIUkm7O1+UojsFvVbi738qprYnlLlva4uA6W/YXXpaqqdCJsrcerw/v7Zh
         j5L+WL1t5wgsqb+nsHvYD2Meg/4UKOWAquAor2g95UpZN23IXrMniNrHPY2mTmWzBrvF
         iklw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758029098; x=1758633898;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gwfKh8YcNEbswE2yYv8jHBhvIioj0iL2kRQaWZR7TS4=;
        b=wWw71VaK5i1OQiagXOp9slTr1bsPND1TjyyIakqm/QM87+TlypfwMxJUg9lwyxSeVA
         /5VPs17DNF9yAGPv31r7/L7DRxLe2GVW3ydl+KyLfFeHuxcZ9DCE+IJsVtkIZWZwRKe9
         EppmK9YR2pTQGBBmPYbSBCygLflh1mGA8z8UJe1UTwPV4Oq0HWFwOmIkduabgGc013bz
         H2dh5if5n3UoQU3whZOswoo858S17liXlicJV62GiA71ZMd08IQzesoBaUhxcB49Wkmb
         nM/hWVZixdmNO41GDxs6rHoBFhAXe6wF3nrQibPPptt0ICCWJvYGIVbeL/DnuSyecxIx
         HN4A==
X-Forwarded-Encrypted: i=1; AJvYcCWA0beuipSB1L3rpgsb995krWaOMHiyattU0nsBoIz/mZk+UnARBjmUMAmhg1evZu238+XMbzZpFC8=@lists.infradead.org
X-Gm-Message-State: AOJu0YwAf4opaCvDcZGOHy6UvWTAyWP+iaxN7tufKAWtERQ17LQjduXV
	yZxmuxVjxyp1qYgdj98FqN/tDvxxiCoH83RgvZcch3ogDCP9SyU16hVLc0ZMKF56MGM=
X-Gm-Gg: ASbGncvfm8E2GczHqPGtfnLS2ntdkT9b01D/bMfq/wW7t0qhOYZVmyuRYANESLaSRz6
	DTr8JVJH8NhjcbxiWyoNTT7LyUXLxGbLVCJ9KYMNdFftQaLqkBbGAPhBby2q5R7yDj82DQWfSgU
	FMQx9y1FzWs9//Qmc1z0QS1Z7+bWwUy0lpOEqxJ9CVD53gpLooz+2xj4WxxvtgUc5EX2cGsdsbe
	yvvM33JDu68t8ueM7K2XvWBr1guE/NBNom7L04zP+Ye2vWcEQjrxU92Y0NUuPhO9pB0ZzYY5nVx
	+csB5LB8Cmr6KefvPFUzJb9jf8lw9Kc8kas5ewDAafFQ9GlEzvHZwk/ah5U4fadhZEw5h8pMtFz
	xpbiAcr/FBUuL6fay2kH4YFCaz954+nEJLi0VRiUJOi5R6xnarpaGsSduYpSPiW6s
X-Google-Smtp-Source: AGHT+IE9kjhldcCIBvjPr9jo7lRPPHVqNSYEJDmsT9jH1F0DRGqPEBku/9BloIv9jKtuTpavenfoLw==
X-Received: by 2002:a17:907:d16:b0:afe:c6a0:d116 with SMTP id a640c23a62f3a-b07c3572d31mr1812203466b.18.1758029098143;
        Tue, 16 Sep 2025 06:24:58 -0700 (PDT)
Received: from localhost (p200300f65f06ab0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f06:ab04::1b9])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-b07b32f202dsm1164355266b.84.2025.09.16.06.24.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 06:24:57 -0700 (PDT)
Date: Tue, 16 Sep 2025 15:24:56 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: sboyd@kernel.org, jic23@kernel.org, dlechner@baylibre.com, 
	nuno.sa@analog.com, andy@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org, 
	srini@kernel.org, vkoul@kernel.org, kishon@kernel.org, sre@kernel.org, 
	krzysztof.kozlowski@linaro.org, linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, linux-pm@vger.kernel.org, 
	kernel@collabora.com, wenst@chromium.org, casey.connolly@linaro.org, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 2/7] nvmem: qcom-spmi-sdam: Migrate to
 devm_spmi_subdevice_alloc_and_add()
Message-ID: <t3uk3k4h3l53yajoe3xog2njmdn3jhkmdphv3c4wnpvcqniz4n@opgigzazycot>
References: <20250916084445.96621-1-angelogioacchino.delregno@collabora.com>
 <20250916084445.96621-3-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20250916084445.96621-3-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250916_062500_457271_AAFA16D1 
X-CRM114-Status: GOOD (  15.80  )
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
Content-Type: multipart/mixed; boundary="===============5487830991542004745=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5487830991542004745==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="36zni4ukkwfibixi"
Content-Disposition: inline


--36zni4ukkwfibixi
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4 2/7] nvmem: qcom-spmi-sdam: Migrate to
 devm_spmi_subdevice_alloc_and_add()
MIME-Version: 1.0

Hello,

On Tue, Sep 16, 2025 at 10:44:40AM +0200, AngeloGioacchino Del Regno wrote:
> @@ -119,19 +128,24 @@ static int sdam_probe(struct platform_device *pdev)
>  	if (!sdam)
>  		return -ENOMEM;
> =20
> -	sdam->regmap =3D dev_get_regmap(pdev->dev.parent, NULL);
> -	if (!sdam->regmap) {
> -		dev_err(&pdev->dev, "Failed to get regmap handle\n");
> -		return -ENXIO;
> -	}
> +	sparent =3D to_spmi_device(dev->parent);
> +	sub_sdev =3D devm_spmi_subdevice_alloc_and_add(dev, sparent);
> +	if (IS_ERR(sub_sdev))
> +		return PTR_ERR(sub_sdev);
> =20
> -	rc =3D of_property_read_u32(pdev->dev.of_node, "reg", &sdam->base);
> +	rc =3D of_property_read_u32(dev->of_node, "reg", &sdam_regmap_config.re=
g_base);

It's a bit ugly that you pass the address of an unsigned int as u32*.
But this isn't new, so fine for me. (Also for all Linux archs we have
sizeof(unsigned int) =3D=3D 4, so AFAICT it's safe anyhow.)

>  	if (rc < 0) {
>  		dev_err(&pdev->dev, "Failed to get SDAM base, rc=3D%d\n", rc);
>  		return -EINVAL;
>  	}
> =20
> -	rc =3D regmap_read(sdam->regmap, sdam->base + SDAM_SIZE, &val);
> +	sdam->regmap =3D devm_regmap_init_spmi_ext(&sub_sdev->sdev, &sdam_regma=
p_config);
> +	if (IS_ERR(sdam->regmap)) {
> +		dev_err(&pdev->dev, "Failed to get regmap handle\n");

dev_err_probe()

> +		return PTR_ERR(sdam->regmap);
> +	}
> +
> +	rc =3D regmap_read(sdam->regmap, SDAM_SIZE, &val);
>  	if (rc < 0) {
>  		dev_err(&pdev->dev, "Failed to read SDAM_SIZE rc=3D%d\n", rc);
>  		return -EINVAL;
> @@ -159,7 +173,7 @@ static int sdam_probe(struct platform_device *pdev)
>  	}
>  	dev_dbg(&pdev->dev,
>  		"SDAM base=3D%#x size=3D%u registered successfully\n",
> -		sdam->base, sdam->size);
> +		sdam_regmap_config.reg_base, sdam->size);
> =20
>  	return 0;
>  }
> @@ -181,3 +195,4 @@ module_platform_driver(sdam_driver);
> =20
>  MODULE_DESCRIPTION("QCOM SPMI SDAM driver");
>  MODULE_LICENSE("GPL v2");
> +MODULE_IMPORT_NS("SPMI");

If it's exactly the files that #include <linux/spmi.h> should have that
namespace import, you can put the MODULE_IMPORT_NS into that header.

Best regards
Uwe

--36zni4ukkwfibixi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmjJZSUACgkQj4D7WH0S
/k5X2gf8CPcy37sX+3TAvMselYC6a5KTw9qBUgRRRW2xU0jMLPVSugZd9i7RFBsX
qcP6Xq/FcBLfEIdwT9uwud13CtVdV6qyNQaWgz+BnrTomiNrrr4wZTVrOOhNgSDi
VElZSzvXwu+7EZQLmdGAwoXB3HnCHuShI5LiCUQ0zi4pYoMoAc4Tw6htJhjM7NJ2
48eZomVZ2s+xwPA17EyHn9FaHiisgWV/tjxRtL9P5Kt79qZNel8MXHgWU4jFEUDm
hqciH+VQhquuUhU/UfWhV0q4Q6aJ2acuI+AsHcWctTI1Whgdtm0Ddr8/iJmUjitw
JNecAkD3czkJvfdQpE1uSbxMdDBrww==
=Jcue
-----END PGP SIGNATURE-----

--36zni4ukkwfibixi--


--===============5487830991542004745==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5487830991542004745==--

