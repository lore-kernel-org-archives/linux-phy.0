Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD15BC3ABB0
	for <linux-phy@archiver.kernel.org>; Mon,  5 May 2025 07:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1Szl5C0KzIW6cTs2rWDYAd23N0UsaORK8S4xOcEI5ZU=; b=ehLVeJEt9l+Df1I5LS09uUvnkn
	gSxREfgjfgaGhNDz4qCFTRggZG9VN6rN/vv6dgm1vDlLRDG7PD/oFJyjcprkA94Rawq1Ezm0V9oLI
	KH1kfaj0rLovpmtnymU6HJ5KuJoU2K9bprprrW+XHD7x7skiT9eAuxQkuDl6tZlA3J58KZg93mpmb
	kRX9v65o6lGPJPYaLyhZ0UYUTflLf+qMd4Wp9AYJzNaM8c4elYleizajvG4zckDc0DLOl6uwF7nIp
	txDqKkg2+vPUUXovdBxpG8uwV/19GugKLMTfsUEPHPt8qSkzML5kc53zrGXeXT3tVtnkjX36gDaYR
	YIYNocsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBqjy-00000006iZ2-1DQG;
	Mon, 05 May 2025 07:59:54 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBqfb-00000006hnL-1VaB
	for linux-phy@lists.infradead.org;
	Mon, 05 May 2025 07:55:25 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-43d04dc73b7so34307345e9.3
        for <linux-phy@lists.infradead.org>; Mon, 05 May 2025 00:55:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1746431721; x=1747036521; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6ByyOGZroZLeQ1OisReOsjO+WUJqIkTvlMsXspaNqO8=;
        b=xTS/QoWB8Exc7PtcRsvWS00/dFy13cTU5gjtEHnmB+WVLNM4hQvUciB8GgQBCs6xXc
         YKAMrBmnVS+mKKh5C3o96oDCZeiuXvZgimYXYk9JXmyOSKHGaVvLC/FEBCBh0eRQbE/K
         Ssjacsi0RARkNE1oJk/aijbcptWht+GpBJyQzQrlSyYjBOj+AHK0PMlLLxc5nB8aqwUO
         0Ax93pFzes7YKxDQ+U2O5yjSiLSMHMATkJOOcd7r56JtRaA6AHKEBDqLs1OAsGxI1bLt
         nXovkFBUPE/kz63bF5AgUmXJKVxJIaQA19RtC9PUivekEvpLelqFZLW4zhZ+ggJk8oRc
         lBKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746431721; x=1747036521;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6ByyOGZroZLeQ1OisReOsjO+WUJqIkTvlMsXspaNqO8=;
        b=qtjRYivpAkPR95DrJYPmjV5LUXEtUQ65hwxEnTuyGg9zN7sDP0uuxk3MCXw4QlyJci
         1z5hHReJm2DjRSxBh9c2FIZYGh9R5QcBq/xRQN+iNz7KT/wlHddCNw2T5D19eLmW5204
         qgucNnYSQOfpDx3Xsd/Sbpa7h5pwl4L8NWObcazQwFlMPV/6JQqUTBffKllJZPlGLidi
         ADdBMNR+OIeEA6xrKCEiAvr0VPIRPKBLaR++KkLKlXvppoBM2I+nbL1Tr2c0b3yN3Jh+
         Q3S2hq0b9nHg3qEnaqXNou07OtOIsBQuPBw2DWnMwA36Dfub3o2l7FAvDmKi0BiYMK7N
         NxIQ==
X-Forwarded-Encrypted: i=1; AJvYcCXjYzsTOxYlWl71i62ksJ98jrTZqVAga1BONZ5tX8cNn5tAjrBFo+kXygCXDnGX6zhxnjCgN1FG2Po=@lists.infradead.org
X-Gm-Message-State: AOJu0YwPDIzm7TznojBFhfPTez4L1y1uxn0OHbqSnz90j2tXo9GnCVdR
	/4rQwRUE1vy3iDZvgdN9g9r+JZzPlEuwUvYFW9yXM7Hpoa19Add0Rc1T0SX2HTPLrAo45Mn152u
	q
X-Gm-Gg: ASbGncshNkamJnWVlP84cyCHIecXwJoOygJzFdAjydlMwuz+b6OY/5FcPERE8kGKHn5
	A8ZM1UhoRN018ZXH6fCXaOyTxq/g3vCAe+rMifjM3nh6GZ56SNqiEX4i7k1FEskPm+OvAZ2HJOk
	88iOYO+YPOyAzZ0ae9OfrGhLQ3pRLV9LupUTlp2rS1BNkHmwtSJhoESDYitF40Bq/bvbmyJ2HsH
	6UrCPtKCoyBZhhurVgLDpvVPyT/K0Fn/NcqiLBkN0n2yff5PqzdrEawwVaPjvf2T3uTSz/sA3SK
	kF4hYobOeHp+SpmNFgdlnqRaUGwkdw7xVnJ7NNw1zBTj6utxClPFSqYAkoHOvewNjdS0nWhI3i2
	KWU1J7KxavU8oPI7VYw==
X-Google-Smtp-Source: AGHT+IGu8b/n1LgFExE7OuYx8nSsgIdxKAyU11E4xr4vzHrPzib2SORA7o/rdTvXrV42fOTr5RHx3w==
X-Received: by 2002:a05:600c:1f93:b0:43d:1b95:6d0e with SMTP id 5b1f17b1804b1-441c491a046mr37909825e9.23.1746431721152;
        Mon, 05 May 2025 00:55:21 -0700 (PDT)
Received: from localhost (p200300f65f00780800000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f00:7808::1b9])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-441b2aece0asm169434565e9.14.2025.05.05.00.55.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 00:55:20 -0700 (PDT)
Date: Mon, 5 May 2025 09:55:19 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Adam Ford <aford173@gmail.com>
Cc: Dominique Martinet <dominique.martinet@atmark-techno.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Frieder Schrempf <frieder.schrempf@kontron.de>, Marco Felsch <m.felsch@pengutronix.de>, 
	Lucas Stach <l.stach@pengutronix.de>, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Makoto Sato <makoto.sato@atmark-techno.com>
Subject: Re: [PATCH] phy: freescale: fsl-samsung-hdmi: return closest rate
 instead LUT
Message-ID: <7wmuggeoslylq266u2bhunz5vcbbwaux4jv7glytxn6yer2nyr@7s3cfixtlau4>
References: <20250310-8ulp_hdmi-v1-1-a2f231e31987@atmark-techno.com>
 <v57uy3gddzcoeg3refyv7h6j3ypx23mobctybt27xzdyqy6bgb@atzdlqlytz3c>
 <Z861gsaGY6bGSisf@atmark-techno.com>
 <b2qwqacogz5vzfekhk5276owld6isgewu5a2iw3roag3lbtsgm@67vqf54c5tdh>
 <CAHCN7x+q-K067u6o=+E9ybREi_jopwhMTyMN=JKfCS4r6K=HWA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHCN7x+q-K067u6o=+E9ybREi_jopwhMTyMN=JKfCS4r6K=HWA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_005523_660547_F5B1BE93 
X-CRM114-Status: GOOD (  21.15  )
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
Content-Type: multipart/mixed; boundary="===============3280768115677481688=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============3280768115677481688==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6p7cskq32nmvghrs"
Content-Disposition: inline


--6p7cskq32nmvghrs
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] phy: freescale: fsl-samsung-hdmi: return closest rate
 instead LUT
MIME-Version: 1.0

Hello Adam,

On Sun, May 04, 2025 at 03:44:26PM -0500, Adam Ford wrote:
> On Mon, Mar 10, 2025 at 11:12=E2=80=AFAM Uwe Kleine-K=C3=B6nig
> <u.kleine-koenig@baylibre.com> wrote:
> >
> > Hello Dominique,
> >
> > On Mon, Mar 10, 2025 at 06:48:50PM +0900, Dominique Martinet wrote:
> > > [...] and I'm sure there are other improvements that could be made at
> > > the edges.
> >
> > One thing that irritated me is the function names. `phy_clk_round_rate`
> > sounds too generic. `fsl_samsung_hdmi_phy_clk_round_rate` is long, but
> > I'd say would be a better match.
> Uwe,
>=20
> I just sent a patch to rename round_rate and set rate functions to be
> more explicit.  I also tried to refactor the driver as you requested
> by simplifying the code, but I didn't have time to integrate my
> fractional-divder code yet.
>=20
> I will be traveling for most of May, so I won't be able to revisit
> this again until after May 24.  Hopefully the patches I submitted meet
> your satisfaction,

I don't feel authoritative for that driver, so please do stuff to please
the phy maintainers and consider my comments as suggestion from the side
line.

Best regards
Uwe

--6p7cskq32nmvghrs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmgYbuQACgkQj4D7WH0S
/k6GxAf+JlMX2lHGD1BihbruJ8xIk8XdYNXCnBLFlqpNK6fhXPNwhOdkhJ0Pr2Nf
wNExFkgF/GqclOtwrPy9HRy3PMlmUN6qpsMklgMTJFPHsaTheyOBGxvmanRbzp4x
ytZpdVPjeb54xTTTwHnMFcxcdpOOPQ1PpCHaF5NmobLBquZ5MGaP4PCC9/0Krmrz
NmlVF7kp1qw/9Wjnpj1DLJ7ZcO/GslEe5G52ucR4+r3qAF9w9mj8ggtpMUWtdjKo
OoEKaYZps80lTmL9tggG/4Dp8J/XhwORvWYSB6u3Ug73ULZ4kBtYn2PATfir3grq
C8ldPQ9/xJt+mM47sIZAvL0WcWCFwA==
=FeBE
-----END PGP SIGNATURE-----

--6p7cskq32nmvghrs--


--===============3280768115677481688==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============3280768115677481688==--

