Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A627D606A321
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 08:46:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=hhJDI8Td;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=ZV2njwdP
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=YpqAm1Z0af9k0c/4vVKsYGkE2Ra7JYs0J765X4lqx04=; b=hhJDI8Td9ePT7yO5SUCO9J02sn
	26QOFdToCI2Xl2480DxhyCB1IDcp63sIZACwaDRoIVEcMlv/zYzrdlpW53ysRBnneM+amTNs1RZD6
	mOuGcxm517P9k43uPZonmOuM4V1nhNh5HqOs59dX1xbD4ErpLoGZwzlCCY/SnkEbbCMUCu6P/GZCF
	Jxsx7+iZ1kl6PIOPQ+Tp8LGgrGwFUIx9vN1FJeZszpAqfzVHM+y87IGmeUqC2sQK/V/cZ7Q18TiJR
	no1EKWleCcaEhkSqm7f+E5+vnUHIfOMTXkmIo7m+L4qdRPw/OPUDru55ytviqCPfcQ+f8pfS9vmKP
	0w1NXPiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVmAS-00000005x10-156P;
	Tue, 24 Nov 2026 08:46:24 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVmAH-00000005wzT-3xqK
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 08:46:22 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4a9a8d6cea8so54131305e9.1
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 00:46:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1795509972; x=1796114772; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=0TvqhGwoqXKi1btWus3QmSvbkCq/HGEso+gSOvj9VJo=;
        b=ZV2njwdPtoXItsmk8GJuuuWbeOkfSe+mRQo0yhxtYf1kA1Z2Rfe8P05PR83Fwifows
         w8VtTKPRH31dygAmUoQOf8JGkgjWX4RXOFCIwix1yMD8GiOUlQdBxBeKFF/vQcIg8rKH
         jeKR46bMUsrSE86uha/s6lmHDYAbxXzB6JAhkflG5v326+2oXsS9CUOEd/otYSLLX3Lg
         7JlqHPSa7lZhkaKUQfSE4VxFkTDPIsmwILHsyQSYkDfPEsSG7SR8A/RPgpUxxY7ViKSW
         F3BhqDmMwamMgSRhTcsUI7Q8Ni/qIYAQHxPk67AUY1ciueK2Rj4eBYV1fSr4ysHazu8W
         Km7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795509972; x=1796114772;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0TvqhGwoqXKi1btWus3QmSvbkCq/HGEso+gSOvj9VJo=;
        b=a32luSEsIIph66jaM84g7D7wr19jQuPKshZQ/jaMCogdM4Xzag98HPCX6CnPjj/jVY
         DWJSA0pyGY6kf8gJqkrIRBmOt6ubHeHx7eEVk1FKz/zK8kk48fVJhhQRkRDmS60AuZDA
         l8fCDLHCuOjG+UnCms419SJBEjXVVAOFK0Wmxzg17MvaPyM1ZuCa2+nAFg4tZCSzloCt
         fxurB+8FCXE9RppibC2Jl9ciU+L4bmmJGketauqb+A2qtCK1XISRtL1wwaMPhx1eOA1V
         yQTlH/kT4mo+GjCn44FUDlB16ICxu/7zzctPOSx6/+M1h5emExu6isTZV7hJg8uGbzX6
         36EA==
X-Forwarded-Encrypted: i=1; AL+hErH9QPa2J70BKNYlqUiNptCPGTzbpmDSxXwCIiYaLhlXArA+VwVg5+IXDfHAzvvX4JkVjlvLpXv+57c=@lists.infradead.org
X-Gm-Message-State: APuU4Z9OJJvD6vqp+G0o/X7zGzSOKHAe7RbWxA/r8Im8RjbPO/vrYtvQ
	KI61QNVEYJlIFaNuqLTjQ1psnIqREY9FwQVCxzCj8kev7lVHXSmcj3SrqvZD8E3SMWk=
X-Gm-Gg: AZFdTZd2hSVb/odHn8Ya5s1iICoIw+uIiVFDg9094ZM2LGMmqYkOpqbK2ObffkkeP0B
	psyXRN/Vp82EWKybJzzsW7ZQv0neSAgzNJi3o2/aJ5cHT7hbONIzkTdPTbHvlpX3Z0PIvvjM+yT
	jwlpqT6LqqXe/vBfjbE6M+WEf8STG1Jht0lPL+1K0GWYBfiwZxcyVlp4SJ09pHSyX143nCqyarb
	eKxseuXbhLFLhOlv3FGGSkU38b6FowuECX9HySLl1x5e56bLxwCB1oRzedIdWYXWOfYwSCXSr4b
	/g9akISor4PGPfE/fcapbP6P8n5I5WMswERv4eFVd4l8PmgOJKtLCDCsLxNl/0RT+Sh4BLoc0xL
	9ixI6oMm3i6AJMMHBxiyGDfrLL8JAbufAjHRid217KTIdOrajjg/Dfm5DE8nZmR8JzUkmfp2bMB
	PMxYFvtDB9RhoG6RtX3H+ACWWdwl9QdgH+v9/yR4RIMuG+SgPnA0DoJY7jnuBRszcLYTCmuqx6p
	JvYN81keCu+ORsaqDEQwy6bMGYkh8oVZ5hCE8zvfMuNQAy/nQ1/TtCyurxivDsXPRF2k3jOofCJ
	xyzwOkB3UbO+y4s9pvKbaWsctZJTJvjpM/p8
X-Received: by 2002:a05:600c:4f81:b0:4bb:5e8c:13bc with SMTP id 5b1f17b1804b1-4bb88805902mr269806305e9.7.1795509971737;
        Tue, 24 Nov 2026 00:46:11 -0800 (PST)
Received: from localhost ([2a02:8071:6e30:8500:1d24:d58d:2b65:c291])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4bb906c089dsm218993645e9.1.2026.11.24.00.46.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 00:46:10 -0800 (PST)
Date: Tue, 24 Nov 2026 09:46:08 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-phy@lists.infradead.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Linux Next Mailing List <linux-next@vger.kernel.org>
Subject: Re: linux-next: build failure in the final build
Message-ID: <awVOJ5OgaqN9l-ol@monoceros>
References: <awR7nSOWkxRm-iP6@sirena.org.uk>
 <c631c19d-4fcc-4881-a6ec-9dad24419fe4@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
In-Reply-To: <c631c19d-4fcc-4881-a6ec-9dad24419fe4@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_004615_427952_FFBAAE6E 
X-CRM114-Status: GOOD (  20.08  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7830996047595420270=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


--===============7830996047595420270==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2v7ytnhtnhl44wdf"
Content-Disposition: inline


--2v7ytnhtnhl44wdf
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: linux-next: build failure in the final build
MIME-Version: 1.0

On Mon, Nov 23, 2026 at 07:29:57PM +0100, Krzysztof Kozlowski wrote:
> On 23/11/2026 18:45, Mark Brown wrote:
> > Hi all,
> >=20
> > Today's -next has a build failure in the final build for arm64
> > allyesconfig:
> >=20
> > In file included from /tmp/next/build/include/linux/phy/phy.h:25,
> >                  from /tmp/next/build/drivers/phy/qualcomm/phy-qcom-uni=
phy-pcie-28lp.c:15:
> > /tmp/next/build/include/dt-bindings/phy/phy.h:15:33: error: expected id=
entifier before numeric constant
> >    15 | #define PHY_TYPE_PCIE           2
> >       |                                 ^
> > /tmp/next/build/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c:47:9: =
note: in expansion of macro 'PHY_TYPE_PCIE'
> >    47 |         PHY_TYPE_PCIE =3D 1,
> >       |         ^~~~~~~~~~~~~
> > /tmp/next/build/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c:127:27=
: error: 'PHY_TYPE_PCIE_GEN2' undeclared here (not in a function); did you =
mean 'PHY_TYPE_PCIE'?
> >   127 |         .phy_type       =3D PHY_TYPE_PCIE_GEN2,
> >       |                           ^~~~~~~~~~~~~~~~~~
> >       |                           PHY_TYPE_PCIE
> > /tmp/next/build/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c:135:27=
: error: 'PHY_TYPE_PCIE_GEN3' undeclared here (not in a function); did you =
mean 'PHY_TYPE_PCIE'?
> >   135 |         .phy_type       =3D PHY_TYPE_PCIE_GEN3,
> >       |                           ^~~~~~~~~~~~~~~~~~
> >       |                           PHY_TYPE_PCIE
> >=20
> > I did not specifically identify the commit that triggered this, it will
> > be some include file reorganisation which causes PHY_TYPE_PCIE from the
> > DT headers to become visible to the driver, clearly there is a
> > namespacing issue going on here.  I have ignored this for today.
>=20
> Commit b28eecc89399e5371483f03fecded33a26a8e655 was not really built and
> exposed all drivers to DT bindings headers. Referencing other headers,
> including bindings, from kernel-wide headers is another suboptimal
> choice here.

If drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c was more defensive
and added a driver-specific prefix to its version of PHY_TYPE_PCIE, that
would help, too.=20

Best regards
Uwe

--2v7ytnhtnhl44wdf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmsFTs0ACgkQj4D7WH0S
/k7tiAf/dew2lryT6QqTEvFx5msFUZSgvbIZlgyPgHvK86ZsrbcI2FIIYAap8U1U
BnjjyUNWxz3TNGrPHnIzqdgnG5LNbgBIufAaZW/WQ53YThImappJJyO4iAUtOlhO
pgoWl1KgbgD1DpnP/fwOAFdGo/XXJ/DiTqCdL98crYqs9ySIpkA2+sujb7jeyjYA
f/IWlA0PWvELCPs0Su2uNfuHWPHUz+5w0foyng9Crf4DyYZy5QqhRcN1wBzn69x3
DFXZqCUpE91s+G2BnS1FmoQGrAENkbtf8yn6EaIkdUYWxCI/9HTqixQ8YTegxpKP
MxAM/T2486aerXd9YUCUyw0yfMRgqw==
=gqwl
-----END PGP SIGNATURE-----

--2v7ytnhtnhl44wdf--


--===============7830996047595420270==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7830996047595420270==--

