Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF5F606A31A
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 18:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=eNuxUx8t;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=EefM0zUu
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Gje/9i7kwiPezoqc67/7Rcf+pIqYXyRRLgRa4sLxJL4=; b=eNuxUx8tIMbpyqKjjichzevo85
	zdehHodkHEoshc23Wg5d2YCAlPBv4LNqhss+kqCrZYLPK4tJ14BRywMx4nwPsx06/fwehTx1BOdgW
	gqfvXGSgrP5Pt8TjTDtCvCL0lt1MDSHwx+2UrRBDOwAe3aPtOjFMS1mOjnOnJh+mxQBD91FNTBm68
	TwRgZ6ZtjN0uu+4ZfxLo8RO4wcDD9JsWyhthedRXpd5M21yEMRExecUzBqTH9n6N87f6k0vzI1q5V
	77f0A2WP8rnYKN7zVOxd4iRSPAugZio6Jk23kmbl0P9e6TMHn6SzAgayxhCeGPsr9SGLR3h3iMdTz
	6woLqJ4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVZFT-00000004axa-3boo;
	Mon, 23 Nov 2026 18:58:43 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVZFP-00000004axL-4Aud
	for linux-phy@lists.infradead.org;
	Mon, 23 Nov 2026 18:58:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5004261185;
	Mon, 23 Nov 2026 18:58:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93B9C1F000D3;
	Mon, 23 Nov 2026 18:58:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795460318;
	bh=tJOy9chWcf1B/eBZf8s61uqXhDY/6IDo4JHJxgUqU6M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=EefM0zUu7zrgeVI03cAMLIWcfyy1bv4NTQcIc4YC6Q0SwkfnHHgsq01RG7fZcovdj
	 1WEoFQEUaxYrhk+cZT33wyBLwGNfbLKGQ+Jovk2S6EgOWG3a3ims8Dsj8+zPjTgElP
	 3Sy6ctlGJD8FAZ+Ixj75WJ9Hm0Lr/wMXFgX++NFPfs7SrMdTeWUfWRDqwX8ZFl9iiR
	 alLV21Z3rRtN1UtnK37Ms+jWqvBJ0cdWFFm34uXiwByo6dlFoebfH9Z1/JHY39Uv0o
	 zU4ILWEfw3U4huiXM1P91Rr+y+SzWjjHaobI0F8a2TadqZitgSJIWFUIPkDKDW9WbZ
	 d9AmUVqC375Fw==
Date: Mon, 23 Nov 2026 18:58:34 +0000
From: Mark Brown <broonie@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-phy@lists.infradead.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Linux Next Mailing List <linux-next@vger.kernel.org>
Subject: Re: linux-next: build failure in the final build
Message-ID: <0af7abff-2c33-4920-835f-9c5abe73b143@sirena.org.uk>
References: <awR7nSOWkxRm-iP6@sirena.org.uk>
 <c631c19d-4fcc-4881-a6ec-9dad24419fe4@kernel.org>
 <b7fda918-8355-46da-b7f4-40e1a104279b@sirena.org.uk>
 <2fd6f05a-6dfe-40c9-a7ad-44c28af8584b@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
In-Reply-To: <2fd6f05a-6dfe-40c9-a7ad-44c28af8584b@kernel.org>
X-Cookie: Truth is free, but information costs.
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7991881152269111092=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


--===============7991881152269111092==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="texP8MAS4Is3315k"
Content-Disposition: inline


--texP8MAS4Is3315k
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Nov 23, 2026 at 07:42:04PM +0100, Krzysztof Kozlowski wrote:
> On 23/11/2026 19:37, Mark Brown wrote:

> > The PHY driver is bool and depends on ARCH_QCOM too which doesn't help,
> > people would need to do a specifically arm/arm64 all*config to hit
> > issues.

> Sorry, but that's trivial in this particular case. Whenever one touches
> subsystem wide stuff, author should AT LEAST build that subsystem, which
> is trivial:

> ARCH=arm/arm64 ... make allyesconfig -j12 drivers/phy/

> Followed by W=1 clang build. This is bare minimum and is fast. We do not
> speak here about full allyesconfig build, which requires some build
> machine, but basic build which my laptop did in 10 seconds (I mean, 10
> seconds to spot the error).

Yeah, the issue here being you have to specifically do arm64 - I know my
coverage builds tend to be on x86_64 since my development is on arm64
so it's much more likely to actually turn something up.  It would be
helpful to have better compile test coverage for these drivers to help
avoid such issues, the easier it is to get the code built the better.

> Author simply did not built the code they touched (by touching subsystem
> header).

Clearly.

--texP8MAS4Is3315k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmsEjNkACgkQJNaLcl1U
h9CQegf8CHtuYsaEu8eFD6mRroYOEt27uZXABnp07hNveHzsId8nED0jOuNoMk2e
MnNi/wGLaqQtsehGJWl7S1fs++dXtSIzAyibGU5GLrhAtYIqq6VoCkAarNjnBhbZ
WrwguKj00aP8Iw96AKT1FyeHdLE0heDIYFT55wAUKU2GNeJEzOJRGzXd0BTjslkQ
izla+FQKdlEk1aci+rOZQdDqvcJnvhDTmBGBo12XIYs9vOLzmB4R0RekRbL3hMVP
zAOHfvc+CkgBoFJOSzz2gpoVxIAVXl9HmfCqenBLqZEa0k21Lbv8tLyNZV9A45vg
eIISliUcXh264PN6p6uBn8ufz03Sjw==
=xicj
-----END PGP SIGNATURE-----

--texP8MAS4Is3315k--


--===============7991881152269111092==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7991881152269111092==--

