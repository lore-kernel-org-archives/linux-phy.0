Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C830CA5FC5
	for <linux-phy@archiver.kernel.org>; Wed, 30 Sep 2026 18:46:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FIeH/CHqNuuyB0s6foxDspeXukdnDOlfSUqSDVjIl7w=; b=0VeVYNUhgz7WyPUpbTKdE0LJrH
	+n7fMEDxwDkNK6KtNjaawJmM2b/TA6WTx11xxAAIi1Iz6y1siYpO5uKmyZOr6C2CJtbXaI+5Tkzzp
	GNmaLWCbGlDhFiw//MvjIUCJdxI2jf56xBIprXbH0UKGv1QQI21JvKdrIDmfxn22qLX8uGcXJY/rA
	b+33z2d0feasmBpXFh4kn1nBLR2/mmgc1Nb3OfjRTVAWXsca9ROfrA04oDTmgC+6BQnLxav9kKQMw
	362i43wem636qRJMPrfmnlNL+4J891WUnrxJqSnWZviuWCA9ITySsP+mLHtqnn56wvONu8PyHuNo2
	wGgRphzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBzJr-000000070ni-0SPN;
	Wed, 30 Sep 2026 18:46:19 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBzJm-000000070lT-3P2b
	for linux-phy@bombadil.infradead.org;
	Wed, 30 Sep 2026 18:46:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=sXR+cYfmkTxJIBdyHijL4ukoiH3E+7bXnRJxpGUMSOA=; b=P5HBWyI7f5B4ZIG86CBSlWabLA
	ZNBzMzC1Qk06u/9Je0hIq4UHsXPMp/fMLHii1jQoiHXeo56BYXZrOYUSTAIU41lkbpXMkFJb7ulVw
	5DMP5eEhkQhDgJmyJ8FHgzkmtzSwgmA3jVM3WhqUKm0E15nLmwBnzxx9o3gvo9DZuDCzsi3/FC1mn
	6JvW5fovJsgX8pFTxM6nAuBPOui5fb+2AQVAcGo4Gg75ho434otGgLjsOLL+R45FvN/HfHhCKqKmC
	Evs/xoBx7qeFqBCICHykQvtaJ5yApiVKyIkxNr61MMoihdD43EbzulzjvYrBw9O5fXAac6cFCnuSe
	83UIIvhQ==;
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xBzJj-00000004DFG-3Yit
	for linux-phy@lists.infradead.org;
	Wed, 30 Sep 2026 18:46:13 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-482f6350f91so3358320f8f.1
        for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 11:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790793970; x=1791398770; darn=lists.infradead.org;
        h=content-type:mime-version:references:in-reply-to:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=sXR+cYfmkTxJIBdyHijL4ukoiH3E+7bXnRJxpGUMSOA=;
        b=JIPCelF8JUK5RCXRPraCZUTwxQDdVwtpcr+5Ry8Bk7lTkwBwwgOBqLjmJFdWQa7trV
         YleKLvYnf7RDsOOEtiBNy3t7iXHk3j2yq6K3VifEqNZbJXS5irzCeHOk6tWNykK9/pgi
         KA+bsBnxoUfFkyOCoAtICNE+Bz4IfS7vwJnHIzk0wgMx5+ECyTQzp5P1TM/Gr+v1KBv8
         vNGk7aGeInCsExvsVFx7yvNYtIVTDYyckSQRlwEDTBjYfhIj4oDEcrPdqGFEoxk6XQEu
         xZzF/pyFnEy74ydIJ++tIU6eGM/j2NGZG/sTJFaoR5NWcjKUvrNQmK0kN4LCwBpD0b+O
         jkDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790793970; x=1791398770;
        h=content-type:mime-version:references:in-reply-to:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=sXR+cYfmkTxJIBdyHijL4ukoiH3E+7bXnRJxpGUMSOA=;
        b=nSgMGOu5Ytf0Y5y0ObZB9ndaD9dy9Q9Cv2sJQPlO9vW4dSmvJCxI1PdR9VkeSo8zia
         MilxZ4byLYuD+Wea15cPzJiSN2/EWdqOKqsTiRZB6LGiPZoAakBpqZZ6dGkli/ko8/YA
         i6UwF8pbDPqsQj+q/m5PBExy/kWfi65PJC3zNDMZNLGK4dmO02Rc0lkX7+BUc0s9wSPR
         EnWpJAri6qOwM83nopCgQt0VTeKbk25uO6+YfZufg1Zk4VFOIV5j9unCPQAkVDoMv9BP
         6JU+khYFTDM8Hnz5vnJfXGlIiiEfiAo7aWXlap2LYt5OTuU7Pv1gAU4JJpDS4VGD7XUP
         04mg==
X-Forwarded-Encrypted: i=1; AKwUvByequnMpGn2e9fSOF9tu9Nrh6lcfTZLSfx2inWAmeqiXKQEuRyIx1GfC8GPNsb5xUwGi50vZkVW1JM=@lists.infradead.org
X-Gm-Message-State: AFq9FYIcI12L+G/5BsA3EyBWFVGZ30L1YzezODDD8nKWq1/udcdvFHTK
	1FtXbAy211BChzRJwL8nuvPHqVlJLr6IBUAGO3PZrcARfikosHt7VgiH2gBsWlxtzy8=
X-Gm-Gg: AYBFou1OfZcNxkqswMIKdAEn5S7rdX3lavXogGL7izbtsTnq4fbS0CVtQuk7phOV87M
	Xh1S6uKD5lYFbzEdHc3Ih14Or02PJ8exRgpl289aH4kywvkye1HlQxziKglVY/yyawHPNYDa+wv
	wPXUZmnzHtXtwhktvqN1LzbcJAJx//aY2Jl7FwcVbP7x+naT2PmCUsHiFAy8pyeFnyihUP1h3+Y
	hI/oASofNFVhj3XKHwBctRt822X1074+JHYF6ZJuq5iHP1HY5ySoqaaZIQiENgKflX97O7Pypny
	wieFCRwr+tF0EKlL0d2QtISbOyUnYbvCA+iBkxVZYfFwZIsAVSyzpJkRHds1JlInelo/W9zc8FM
	qVaeibVSqpS45icsTrXLLEA7oij+kuFyJwi2kGbecvpMSJou5g0Hq5nClrnYCCGB9eKYJh8tOVi
	w3RJ1hKJxmEZk3QLMpz0gqNntqFJOHkyhFy6tG2Q5ZcuDlV2trio1UQgWH+5cwF4HfoIYHBCxOa
	ZmCA6NoPg==
X-Received: by 2002:a05:6000:4914:b0:487:1646:8740 with SMTP id ffacd0b85a97d-48b02525c39mr4664720f8f.29.1790793969529;
        Wed, 30 Sep 2026 11:46:09 -0700 (PDT)
Received: from strix.localnet ([197.250.96.176])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48b06a360c2sm858825f8f.36.2026.09.30.11.46.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2026 11:46:08 -0700 (PDT)
From: Stefan =?UTF-8?B?RMO2c2luZ2Vy?= <stefandoesinger@gmail.com>
To: linux-clk@vger.kernel.org
Cc: Brian Masney <bmasney+clk@redhat.com>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, Jerome Brunet <jbrunet+clk@baylibre.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Manivannan Sadhasivam <mani@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 mturquette@baylibre.com
Subject: Re: [GIT PULL] clk: zte: zx297520v3 clock bindings and driver
Date: Wed, 30 Sep 2026 21:45:58 +0300
Message-ID: <btFKzO4uRMyc-9MtgwEq8g@gmail.com>
In-Reply-To: <LTD3_tELRsyCnoeF8FU_TQ@gmail.com>
References: <LTD3_tELRsyCnoeF8FU_TQ@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_194611_908131_FF5BA512 
X-CRM114-Status: GOOD (  14.11  )
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
Content-Type: multipart/mixed; boundary="===============5128973259927968278=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============5128973259927968278==
Content-Type: multipart/signed; boundary="nextPartsPKDCllISYmd3lCo26IFKw";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPartsPKDCllISYmd3lCo26IFKw
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Stefan =?UTF-8?B?RMO2c2luZ2Vy?= <stefandoesinger@gmail.com>
To: linux-clk@vger.kernel.org
Subject: Re: [GIT PULL] clk: zte: zx297520v3 clock bindings and driver
Date: Wed, 30 Sep 2026 21:45:58 +0300
Message-ID: <btFKzO4uRMyc-9MtgwEq8g@gmail.com>
In-Reply-To: <LTD3_tELRsyCnoeF8FU_TQ@gmail.com>
References: <LTD3_tELRsyCnoeF8FU_TQ@gmail.com>
MIME-Version: 1.0

Am Mittwoch, 30. September 2026, 21:40:12 Ostafrikanische Zeit schrieb Stef=
an=20
D=C3=B6singer:
> Hi,
>=20
> This pull request contains the device tree bindings and clock driver for =
ZTE
> zx297520v3 boards. It contains the next step in adding support for
> zx297520v3 boards: Documenting clock and reset manager hardware and adding
> drivers for its PLLs and clock tree.
>=20
> The patches have been reviewed and carry appropriate R-B tags by Krzysztof
> Kozlowski (bindings) and Conor Dooley (clk driver).

My apologies for the name confusion: The clk part has been reviewed by Bria=
n=20
Masney of course, not Conor Dooley.

Best regards,
Stefan

--nextPartsPKDCllISYmd3lCo26IFKw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQJPBAABCAA5FiEEQxb0tqoFWyeVMl1sPRO8yFRPGiIFAmq9WOYbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyAAoJED0TvMhUTxoi0vkP/R8TftVhmpOKvKtkCGcF
4ZtAmaTgZDo368Ob58bGJwjcPcIIQ5zq2NGbYUmEOAwv4cgjizL65aUsbrRruv7q
Nvwq3G1ME/X1DzxqGzvTPnSF1TOn3wlGgwVOUDyhdABmcKcj/yVUAz0MTbGIoHhA
3cBXmIUxge9lFEfvAjA4/4sc0VchClI7VkqMExb+OMLhnLL7Pz6iiDL8nq4YrTqG
FiN8wmVSAfSpoeDd3+JWJVoxpc67pIrSs/sJdUogr8mT7OQ1l8Rq6i7cBaPpMhe0
4Bs7kJfUm6InymbNlNLmN38qaYvX91zNqLVQUJ4mstasx+vSHIr+VrOpu7RQ7mIO
DzBC/tDGB36rVfehgbtCrvmq/F89WzLCAjq8jfmAiWoQjG4EQTZkUFEQgozTAZy8
gjvUozvVVv6zHWh6qrf7er1UffZedQQO6onl+OrDyaJaXcZGulacm0qwxYVpG508
DNWSWKChqM0x1iO7W3a1WLKz96H0pAdRAm/ZqKKT0P9X/1dPCLB6DvJJYzLYmsFG
JE7yeEcQ6Mv54NXTcOkbMq4awIBR8GzwhHeU61K7zC49COrFbBQTvR791IdsX5TE
fVae2s63wZ0LEm9RFZtMf222Js8igqxVObRucgDghF8tO+WgipmsaDW2HWUdXaRP
bkYvTz+t5nqEAikxecJo7pTU
=bBGZ
-----END PGP SIGNATURE-----

--nextPartsPKDCllISYmd3lCo26IFKw--





--===============5128973259927968278==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5128973259927968278==--




