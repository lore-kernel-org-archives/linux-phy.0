Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23773C282DE
	for <linux-phy@archiver.kernel.org>; Mon, 10 Mar 2025 09:19:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mnPVTcd59Dc++PTllmLfw5wvgGP3MCPvalN+93fgTIQ=; b=AEHB51UITgX9fdlyQXk6Y10vvf
	duCFiks20AH/AKHW9aRebDSHcQlOxBJ2+wuwyElNjNzOxU4jHwtZzfHCTezrHIQuiHqZAaFqHM+Qd
	/tJXRsZ7S/URB2fG8Dpp45aQsz5ld57Ee4PC4P8UP1cMPLUTIoqVv9htCJN8iW9xpHC1tAYxCIk7D
	CCvGr8Qr0VdhaTfUZThoScxF1zfgskzsahFzaKzN6+DqJAGqfTrcO+CIQ/CvdMAAoNXhv1f+MomAH
	rZcVFzGKz9AXtH38cY2LKjk7zV+ZDvMHjpzUQp2nDoRs8k0IBzBzAS7f8m+J2fWctd1zbaaYztX6h
	Y2SqWmsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trZIi-000000023Yk-1ShE;
	Mon, 10 Mar 2025 09:19:56 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trZDR-000000022VH-1Vsr
	for linux-phy@lists.infradead.org;
	Mon, 10 Mar 2025 09:14:31 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-aaeec07b705so612035966b.2
        for <linux-phy@lists.infradead.org>; Mon, 10 Mar 2025 02:14:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1741598067; x=1742202867; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=M2AFDf7Np+5eqeDRg3+giF4aI5aOo69QM3HUv/FvtGA=;
        b=sH0mMJ/2YBtyNNIY/8ZntUw1pmoC2Jf5abbFPhOCySSPnO84utmZluKqTrKBCZ08qO
         hFjB4g8Y95VH6DqeksUK/hNvXd2wuatOhRbYelkmflBcohcawX0NjRNxSEaYqd+Idrte
         26PNkf7snI5OEgJGSq2KXBZuWdcd48EDecA9U9vA8DKhIusGQpUK7vw8BgzvW21nD3QV
         eUMVpHUp+weMRqiZSjyrMxx+5OYdIooyuUGU/nQIsidYuFrprw/wZMt/pKnjhCq0DABN
         KZTPeBvAyOytu8Yq9Z8Nk++ZRwn4xT62oE2f0TBB1Wi1xNl6Ay9EFIE/bV5Di4hOXPcp
         FVug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741598067; x=1742202867;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M2AFDf7Np+5eqeDRg3+giF4aI5aOo69QM3HUv/FvtGA=;
        b=aPzmtSZ482whK2rshaZUD0CVeODDvghhjFxppQZoJ8w5Kdtg5npoCqgV30AcoOCTrq
         DIUQ9Tt6uvzCAi3MvnXYwqGASYRcY38iw35KYrhu2NmTiLcsxqTypiCcv1j0cuQGibGx
         6W6PJXxo227v7LwiB1h6wFaQhkM1is6s8htt3MfQR7cIw5Ot6AGE8gyJzpzuZKZp6OAl
         T0HNveSIAZLKOQ3mFo0axd6f9pg35aSL4Wb04NonYzSR/YhZYgyfmDPUOXk54TZMUylx
         FuqruDZ2ywFS9XGMEUNIpLWlhFQpQ13TkJ6e5wA5+kiFoSKzwqCrIrkbyeyP6s3LzHNv
         wqKA==
X-Forwarded-Encrypted: i=1; AJvYcCXFfyFM4zOq6o5KOzI/DD4eRliJb6XR9szqJPZj16VtvD9LP4E3SaYTeUo6+clQy3nSVRapYMQ4Db4=@lists.infradead.org
X-Gm-Message-State: AOJu0YxPjOpi3B8h/L5z3o0gY4gzxg5vFz8N89zRkRkNe5NS3/W8VG8P
	t++gjbqeB8YqnMCQSpUBvYpOc/BKMA7Ls0V7RhNVeDs+ZOx2hjCd6J55gJGkfX8=
X-Gm-Gg: ASbGncv46u4zw/ubShwPs9YcQaj89eyCMR9AKjc8ihLxCJrrjH76g/uvkaeoZXI5pS0
	C4veootbn8knCF/42BculHaziI6Jb+6R6WUTgSYr4AIjccDl+aOqpwwt9I2A4o0boslCVECUikN
	0zk8Hj13DftfszoV4iPs0ZVafxUKP8Lw0OwD4avmFTbNjZu+XUVotzDq6l4Wbi8Hlq+4qbeyAJW
	uFoKkcdBQavZZghHhG/3sbHsbj97EOahMUg0SABqmp7RMv4HCrwaAeGH1xNh6G/3E0v7a5x5NwG
	FR6bfXzvwspcfrZNcI3XK/wy3jiHP4ArulCVzCnF83PhuNH8DO9WN4FDpB45/Hj/JTNVhoJBlyv
	TYYrqBB4=
X-Google-Smtp-Source: AGHT+IEtKkKBpM7vJgcnY9TXytbV/kIe46JnVxeVKL/rKi0cxkwuBUhSX1GFWK3r6UV3V93xyzgxSA==
X-Received: by 2002:a17:907:3f9b:b0:ac1:ea6e:ad64 with SMTP id a640c23a62f3a-ac2526e5e87mr1604200066b.28.1741598067222;
        Mon, 10 Mar 2025 02:14:27 -0700 (PDT)
Received: from localhost (p200300f65f2c000400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f2c:4::1b9])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac29363d604sm226706366b.76.2025.03.10.02.14.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Mar 2025 02:14:26 -0700 (PDT)
Date: Mon, 10 Mar 2025 10:14:23 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Dominique Martinet <dominique.martinet@atmark-techno.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Adam Ford <aford173@gmail.com>, 
	Frieder Schrempf <frieder.schrempf@kontron.de>, Marco Felsch <m.felsch@pengutronix.de>, 
	Lucas Stach <l.stach@pengutronix.de>, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Makoto Sato <makoto.sato@atmark-techno.com>
Subject: Re: [PATCH] phy: freescale: fsl-samsung-hdmi: return closest rate
 instead LUT
Message-ID: <v57uy3gddzcoeg3refyv7h6j3ypx23mobctybt27xzdyqy6bgb@atzdlqlytz3c>
References: <20250310-8ulp_hdmi-v1-1-a2f231e31987@atmark-techno.com>
MIME-Version: 1.0
In-Reply-To: <20250310-8ulp_hdmi-v1-1-a2f231e31987@atmark-techno.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_021429_399064_0483E4CD 
X-CRM114-Status: GOOD (  16.18  )
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
Content-Type: multipart/mixed; boundary="===============0363578650919672534=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0363578650919672534==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hbn3u5scrvz7ixpx"
Content-Disposition: inline


--hbn3u5scrvz7ixpx
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] phy: freescale: fsl-samsung-hdmi: return closest rate
 instead LUT
MIME-Version: 1.0

Hello,

On Mon, Mar 10, 2025 at 10:21:32AM +0900, Dominique Martinet wrote:
> From: Makoto Sato <makoto.sato@atmark-techno.com>
>=20
> If the requested rate is not an exact match of the integer divider
> phy_clk_round_rate() would return the look up table value,
> but phy_clk_set_rate() can still use the integer divider if it results
> in a frequency that is closer than the look up table.
>=20
> In particular, not returning the actually used value here made the hdmi
> bridge driver reject a frequency that has an integer divider rate
> within 0.5% of the target:
> for 83.5mHz, the integer divider generates 83.2mHz (-0.36%), but the
> next LUT value (82.5mHz) is 1.2% off which incorrectly rejects modes
> requiring this frequency.

Is the unit here MHz or mHz? I suspect the former?

Without having looked in detail, I think it would be nice to reduce code
duplication between phy_clk_round_rate() and phy_clk_set_rate(). The
former has

	if (rate > 297000000 || rate < 22250000)
		return -EINVAL;

which seems to be lacking from the latter so I suspect there are more
differences between the two functions than fixed here?

Ideally the implementation would look conceptually like:

	static long phy_clk_round_rate(..., unsigned long rate, ...)
	{
		hw =3D phy_determine_register_settings_for(rate);
		if (hw_is_error(hw))
			return someerror;

		return phy_get_rate_from(hw);
	}

	static int phy_clk_set_rate(..., unsigned long rate, ...)
	{
		hw =3D phy_determine_register_settings_for(rate);
		if (hw_is_error(hw))
			return someerror;

		return phy_apply(hw);
	}

Best regards
Uwe

--hbn3u5scrvz7ixpx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmfOrW0ACgkQj4D7WH0S
/k7gagf/Y2P7oymDjrfXm/iN4GTuPoKu5hSM+CyX/Lsjb4YvVl/NK1hJJSmNav5G
8klQotxMRKJE0ucdaGv9hSgrK8MQuyV440H0f8Idpv1GTHjQiaMi13kMerzfvJIf
/xVRmw5GO0HV+1NEUS4xTVpUcCNeobAAOw841PY8wyHo8v/ml90LugLVg+wJs9lM
rCPiv6MbDHyEw9IUnkztM+LK0dnEvxVOmbuGaG6LfG/YBqxhJqrL1EwIsJnsSt4Q
6xAadOZZvGwgT73BumBalZH0z8xG6CWrHHyoqMQnQ6KE9nhnPouyOT1a35Y281bb
XjbCmTyQC37mJNKirDEM1K6AMeU5FQ==
=uTzQ
-----END PGP SIGNATURE-----

--hbn3u5scrvz7ixpx--


--===============0363578650919672534==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0363578650919672534==--

