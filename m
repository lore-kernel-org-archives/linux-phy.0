Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75AF5CD8C90
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 17:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6wDj49nS8FXxqQvDo/ozMLeDFbGNiHw9tVjogn95cyY=; b=r1WNIiP5SR54ZXXj3J8NJgkEDL
	nYKuLgHFw9S2McLiQJ9JkE38ucd2DEcNUUOM9wGZgupKK8EXYJlf/Ql8Baq8nqZmIKsqVTM47v2Gx
	kSWFQq1+3CVSGD9SX/7lHvhgrm83ELtnzNIikgqOmoWwHIH7yMILBcP6QoWjKnd6wYVEebpm1aRkY
	MXh97gMTDIpzSnGSBMqIiOA7C/ITjGE0Yp3/ELtDihsvF4CM1mbPw69iwhvIaMJCMma5HBgWc8P+F
	gGLDwXRyTMNpMGjrtL+wfcSWzUoINMDpV0Y6jKPB63fAjdt5mQNc4yWOtDOzjLVSewtK8HhoorQu1
	cx27v3+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXMcu-00000008BWQ-40im;
	Wed, 10 Jun 2026 17:22:04 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXMcr-00000008BVw-3CHM
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 17:22:03 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-45fe59255beso3765632f8f.1
        for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 10:22:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1781112120; x=1781716920; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fWuJGajOnWs+3KfrXV6XAqZHi2JSpT3v3CO6vOGazIA=;
        b=fqeYwFKxTWh14XkG37TsHpYODXuO2y1gjIgR+xGMSgZi93XlNLQOtyT7vuGmmFNnpx
         cFYOtVh0fdJY2u8oc559Gt5qG15aIJ2+Q4kB+Y9u3S4WqhFrZvIGY9mCTydzPdyfJWZP
         ooqYjCq/od5G1b8+AseU0Xrh/DonxXmvik7Sz41cf7pDERcavr6t1Ko9L8wI8OzovTSP
         uYvtshs2a+VKo2j/uoveqGA1dVyJQp/OwKkUnFNrn2tqgsG4iW/3ZNOxTN+ndEJ3ApqR
         ukhAXor3KGOBogrAKBWVdL3jdHB9JAi/XREwIijcy4ZyRMJAJ/+0wiSDbBEU16DnvNQR
         7LjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781112120; x=1781716920;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fWuJGajOnWs+3KfrXV6XAqZHi2JSpT3v3CO6vOGazIA=;
        b=UfwBOr1ai5Js0pPbGS5tHDfgRqIUyLzneLej2/aJaxF0wTfGZI13/UeHb/tyCPuA9m
         s9UdsLZICl1VazvjlfTcuDuO2Y86yGPQG4ox/FmHam3bdQsAJoKwbSN4USmgNQ7WUaMe
         KTUpw1POTYJypQXc8UmLmToVt32tG18+KteN3ELpu94PyFWxsMksXdwhb/RymzcAvtSJ
         mQSJNZ0HOJhmoc8V4gz2j+UAbb6TArmPy1KIBFL3zL60R45KIQleOyeOwIVrdmaLmQ2s
         p5TVRM81mZNXt4qVwaVIHfpcM//CR+fS1O14KX3+bJcsSucA4lDMQpcvssEPs9Hn9vYc
         c3Vg==
X-Forwarded-Encrypted: i=1; AFNElJ9cLnkqHPKGtQtTE31InCVuCMuYtJwmpYU/DCnrs3DxH1C4T4k8F3lzgfux8SghvGBJkLrCmAtLmxI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxd2E/seCBinq2nPKV3Ubr2VVBw24vCkyhRD1PasCwoc6EkTEY8
	0jAVwRbvgASLtb/MwMZ6RIVpLBR8qypakrMRY1t8Vrlhd9aIR/DldVOlEfdhL3RVVnk=
X-Gm-Gg: Acq92OFAwso8yj20KYmeKhbEVdXwUhHu5oa2ScA/HQHVhF+NSc471N5NDENeCUcVjU3
	GDkXBVzgRtcrLKw/AHSEjaH+7Lp/U7OY6fI0nHKXxrOOLRtNcVQrDHHpc45p/rlGzgEhQ1wSVyt
	DI1FcReEAFrAmb/VCaQaD7qWq/5ZwkkwbWkDeVi1NHC6UoAuVM6Cm7cAanr9Kbi5V0hmOKukiod
	9Hi06NlEWWsaVelM1MSjlt9nghJJep+CKpTa7lbB4odNjwK5crvzAEcBdyLeEaagUhQ54iiuSVf
	WZE4+2NSngoRzaGOXzV244M6v/240e4Ml0tpsvyq35C2RojXKvly79vTxxyRH2YGpbrxRgupBAu
	Dj8K+l20GRRrntfgoNxrTg6WeinNgTrXAOMoOH6YXaCv8xPKFc7HUlaUx/XaouirJxrWU9RuuZ5
	it9aYKY48sDS8PC6qDRLBwyZ2uHE89ryVus1uXG2fCUWFscsp5lms5onTXIa3rdXtdLirJmvo+8
	hwiJ74zSv5Gk0eEFP+bAyZkBw==
X-Received: by 2002:a5d:5f83:0:b0:43d:7b90:fa23 with SMTP id ffacd0b85a97d-46065bb858emr214196f8f.29.1781112119645;
        Wed, 10 Jun 2026 10:21:59 -0700 (PDT)
Received: from localhost (p200300f65f47db046aec8c3a4b621e71.dip0.t-ipconnect.de. [2003:f6:5f47:db04:6aec:8c3a:4b62:1e71])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-4601f2f2710sm57444222f8f.14.2026.06.10.10.21.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 10:21:58 -0700 (PDT)
Date: Wed, 10 Jun 2026 19:21:57 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig_=28The_Capable_Hub=29?= <u.kleine-koenig@baylibre.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] phy: nxp-ptn3222: Use named initializers for struct
 i2c_device_id
Message-ID: <aimcwZieO9WOCg_L@monoceros>
References: <20260519151957.1593214-2-u.kleine-koenig@baylibre.com>
MIME-Version: 1.0
In-Reply-To: <20260519151957.1593214-2-u.kleine-koenig@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_102201_823561_CD8A54B7 
X-CRM114-Status: GOOD (  19.46  )
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
Content-Type: multipart/mixed; boundary="===============3012011977553678159=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============3012011977553678159==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="th3rlw6cxgi7cv3j"
Content-Disposition: inline


--th3rlw6cxgi7cv3j
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v1] phy: nxp-ptn3222: Use named initializers for struct
 i2c_device_id
MIME-Version: 1.0

Hello Vinod,

On Tue, May 19, 2026 at 05:19:57PM +0200, Uwe Kleine-K=F6nig (The Capable H=
ub) wrote:
> While being less compact, using named initializers allows to more easily
> see which members of the structs are assigned which value without having
> to lookup the declaration of the struct. And it's also more robust
> against changes to the struct definition.
>=20
> This patch doesn't modify the compiled arrays, only their representation
> in source form benefits. The former was confirmed with x86 and arm64
> builds.
>=20
> Signed-off-by: Uwe Kleine-K=F6nig (The Capable Hub) <u.kleine-koenig@bayl=
ibre.com>
> ---
> Hello,
>=20
> this patch is part of a bigger quest to use named initializers for
> mainly struct i2c_device_id::driver_data to be able to modify
> i2c_device_id. See e.g.
> https://lore.kernel.org/all/20260518111203.639603-2-u.kleine-koenig@bayli=
bre.com/
> for the details.
>=20
> This patch here isn't critical for this quest, as the driver doesn't
> make use of .driver_data, so apart from the better readability this is
> only about consistency with other subsystems.

Given that this patch isn't necessary for my onging patch quest, I don't
care much, but I still think this is an improvement so it would be sad
if this patch wasn't applied just because it's on nobody's radar any
more.

Do you consider to apply this patch? If you don't like it, that's fine,
but then please say so, then I drop it from my trackine.

Best regards
UWe

--th3rlw6cxgi7cv3j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmopnTEACgkQj4D7WH0S
/k7H2Qf+JPOXF1R65QTsmv6cAcIlhp5yP7AlbBKZMIW31b/MtnXDedGdYabELVV3
Job9YGFBjl8Ugj+y87cIg2E9rOQAQB0uVm/Bow/1mJw1xEwAU5rFXnm0c6QN8fJP
mn2ZpI3IiIjqkFcQgcO7IlP6bfWQOMltKmDxS8RFNb26XjT39mMaoYqo0XeYmpw8
O8F6FR+IG+39e8VzCcgjVpUVH/ltod0xXztIVX8je5S0wcfTjid2G7Nlc7DX3X1f
FsBjtZ6pGV0YvLwNpMMgVrsq3l6kvEmGvKK7S6Vx4NYYpa9nBAIto1Eq8LHwu6Wg
jd+P9RF8Jhq3EK7buqCUTdqCzE7izg==
=KjFy
-----END PGP SIGNATURE-----

--th3rlw6cxgi7cv3j--


--===============3012011977553678159==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============3012011977553678159==--

