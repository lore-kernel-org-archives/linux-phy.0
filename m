Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0BB1C282EC
	for <linux-phy@archiver.kernel.org>; Mon, 10 Mar 2025 17:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YEqBZHztjVSrc3mQgRXsg/Apmz2h6vKcCcDzWkFOinA=; b=2AJaihS6cbdTn6/Q8hHKav8tjI
	OsXIO3y+zZubP6SICuOLaojjnxDuVS8+uF/Dzqqt2CteQ6MR4/kNBeUoCtQuWVcqoo709BSV2yKq1
	B97BTnAZqZlc/d8hBOaw/qw2yegHTssbvoCDFDmrqhCSq0DcIq2idbY1b5/fl6tk3htLj2lKIugFW
	giZHFacyLwTn7BLZiCpPziWq2y5+2RnUxZVPW26ruBoRBHaDTtoqPxn+8J3X09egxDwPWtVNrDQPu
	RxUivZmp2mqx+ocRXyiWwSJX+o4RMZDMZ/IzRmxR5Y/MU+BjzTA4tT+Y47BirHgwBZ2h8kiH21i4z
	laXRFAmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trhGz-00000003X3e-1c5V;
	Mon, 10 Mar 2025 17:50:41 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trfkD-00000003K6D-2FKw
	for linux-phy@lists.infradead.org;
	Mon, 10 Mar 2025 16:12:47 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-3913fdd003bso878264f8f.1
        for <linux-phy@lists.infradead.org>; Mon, 10 Mar 2025 09:12:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1741623164; x=1742227964; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GvXTzlRKlAbofNa+lbT2BMK1UdR2zHsco8fZgqhFdv4=;
        b=KkcD4ZsN6Bw4gFOjlHVApdpRwpd1+tz3xJtK/x/2/dR7oj3Fyda3jYD9lto6qfpvLN
         DS1WiawZMbiL0tbQxmfJuas8jjFQD1ZpkzfTKnhMrf9SLSGYxnjFcntCTQHOEmNbh3JU
         I4mjVgqSrG86Z/81QFiRoEpSbGg3V0mOmSDVwD45UvnlSzRUsDPAP7ZVp925jHaR+HmH
         K5beJwPqDP6gjwURBHLT+er1tfdo9Byj4zSb/vxOgoQuypsc9Yd/1Bz44WYzixGIsKm7
         Hy6mD5ulzGh52zIMGuE87UdeXJ7oRarauM4SMm8Oat6cLb/mBFypaUIxCkdFZJcZkhhv
         VSsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741623164; x=1742227964;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GvXTzlRKlAbofNa+lbT2BMK1UdR2zHsco8fZgqhFdv4=;
        b=a+5evdjxtCxhUUknb+mAwbP9wgL+xrMaIMs0H8XfEOuCAH4bTm2wSQ3SbOc7SpCyig
         oBmaX7u7aMVgBPGPGE1mK1fvzuWvb8/TUSaP5C8wDGz5v6pdGC+4g41VdXYM++bMiOhW
         TFmZx6+/MfX1ocAw08IXxKUiaJ7TsRBcmMgKQlJ4N3Zq44V/9fRfCvtFlcb+QMvAf/Vl
         eEQ7xq+T6v1OcP4Mj5wafQvQzKBeUvSAheqIgO4uemirMLmQXLn/EwvPyS6224aabs6R
         7203Qda0rW1jleLVLjJArxkSatqkZ1WIChowpRRHOT1IJBj4UqBqs2SC8P6yPqipV1T0
         Kg3w==
X-Forwarded-Encrypted: i=1; AJvYcCV806iZpjDTRRd54nM+fgjSGmAmXgEfBPVsrKAcgrPPJp1m3UBm/y4AGI28TFPJWYypwFnG6JYwa+0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy6uj9fdxgCqcoYzHAr46rcdCtFNLIUK1ZJWb98msRpuKqmJ6no
	6VwSkTzKga4Y54Qu6RiqtSFCJ3Yzf7OrXGgvV/zaYDjUryHiSIrm121xiCtrPnw=
X-Gm-Gg: ASbGncsW7SIqZEBpXop3qWROSFjkBOb6Cz5SC+g5BqPfLFaZd0lpnohulGAIEbmEp0C
	Uu/yhrKWEaGPpJYA+wseZg+An66CDAw0uDUmRM8VlcwnEG75PaJMXZpw1mj+hga2f9O5yW7lMvy
	lmj8e402t45i+3ohKvxSnjSRsMsajuyVTlGkAgJGBh+QAxhQKge78thRnyc9NxXA5xOGVLz+cs2
	aNfn+QtTOEzPaX0MpwtQv89L7Xf+D2A8427rAHomuqHnPa/U+MqG5TyQ1W19GRxV8gdW15R0XEl
	iNhLIbU1i5jN7s9YhEs5XVQoLfHcExU8rd/FjXBzoUReuB5bODcc9TGFFa2k9nDidbMKd7CDVI2
	6U3QX4wA=
X-Google-Smtp-Source: AGHT+IFBbTozIoHSsEjyOzqv8zgmaRteBxrQlNVCcmKEKPGV689kjbOrp1a7Gy8xkgnb4JfTfotxdQ==
X-Received: by 2002:a5d:5888:0:b0:391:27f1:fbf3 with SMTP id ffacd0b85a97d-3926d6e57ccmr78729f8f.27.1741623163982;
        Mon, 10 Mar 2025 09:12:43 -0700 (PDT)
Received: from localhost (p200300f65f2c000400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f2c:4::1b9])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3912bfb7934sm15566705f8f.12.2025.03.10.09.12.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Mar 2025 09:12:43 -0700 (PDT)
Date: Mon, 10 Mar 2025 17:12:41 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Dominique Martinet <dominique.martinet@atmark-techno.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Adam Ford <aford173@gmail.com>, 
	Frieder Schrempf <frieder.schrempf@kontron.de>, Marco Felsch <m.felsch@pengutronix.de>, 
	Lucas Stach <l.stach@pengutronix.de>, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Makoto Sato <makoto.sato@atmark-techno.com>
Subject: Re: [PATCH] phy: freescale: fsl-samsung-hdmi: return closest rate
 instead LUT
Message-ID: <b2qwqacogz5vzfekhk5276owld6isgewu5a2iw3roag3lbtsgm@67vqf54c5tdh>
References: <20250310-8ulp_hdmi-v1-1-a2f231e31987@atmark-techno.com>
 <v57uy3gddzcoeg3refyv7h6j3ypx23mobctybt27xzdyqy6bgb@atzdlqlytz3c>
 <Z861gsaGY6bGSisf@atmark-techno.com>
MIME-Version: 1.0
In-Reply-To: <Z861gsaGY6bGSisf@atmark-techno.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_091245_706830_94E21BDF 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============5532926052529992726=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5532926052529992726==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mjffy452cs7bmfrg"
Content-Disposition: inline


--mjffy452cs7bmfrg
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH] phy: freescale: fsl-samsung-hdmi: return closest rate
 instead LUT
MIME-Version: 1.0

Hello Dominique,

On Mon, Mar 10, 2025 at 06:48:50PM +0900, Dominique Martinet wrote:
> [...] and I'm sure there are other improvements that could be made at
> the edges.

One thing that irritated me is the function names. `phy_clk_round_rate`
sounds too generic. `fsl_samsung_hdmi_phy_clk_round_rate` is long, but
I'd say would be a better match.

Best regards
Uwe

--mjffy452cs7bmfrg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmfPD3cACgkQj4D7WH0S
/k5R7Qf/VxOUrJge8JojL4BFpnMAkq1wOnQL4hVuzrN5LWBFTHDPnK+iAEFwkkSq
3jprj6qucTaOj1b/fweLyFX+FXjq6dlZBTJvX13h78SpjN5mQN9e5sUHWtQygHDT
iB02eNLLAiH+m4z68jbra3tRIThghGj4hL3rqalXOtohIYVrppmTv4AuyDDQKKT4
JEAUYqaUO36QRJwXjMcKmIrmdkvDfq3fVgLlrAF31xE9Bd9NqvDi91EFweu+9YDk
1RsJZCm474kggQRDwcoreI7qNxwOBUsv0qWZEyaTBKu3wx4kgLAhsegvIHK3EVYz
nLhtC3X5kNEZJhvQgfXfGRmiU1qcfQ==
=fsNW
-----END PGP SIGNATURE-----

--mjffy452cs7bmfrg--


--===============5532926052529992726==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5532926052529992726==--

