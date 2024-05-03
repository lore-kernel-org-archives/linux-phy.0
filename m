Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3E9CC4345F
	for <linux-phy@archiver.kernel.org>; Fri,  3 May 2024 17:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S9mVI3NdJ0KJBmknDpwRchwUlrVThTq5tOwmfMbJkKo=; b=y1bwSqhk6l2TWI5eFEHRbDrf08
	wqgbZOPW8sdUPCV2dNplvo9uHdjAw7FGH9ODTR0q2vULd0iAZaCbAN8x8NToDPBiAOnMAtR/aZupg
	9JpW5xveilaXwB8Sb9Paw9jO3keUKLU0HgQTvjpKM3IFG/NxV8GNqVD16J5tcjaEUqwHHAbMXRSV4
	2FIPOhKb4u/jtygupEbIuX6TsI78LuLQ3MV8odVExRqlzBQ7jfgwqien3j3V8m6CbRmu8r0y2Tfsz
	K/Iixi4VX5G+RnC7OZnVq+P+bFKf5xn9yBmkx0BX0eBKCyMtb8sprrrlvjqoq88yEt6aWivEUiurr
	KgWvl5YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2wIG-0000000HJbh-1IQQ;
	Fri, 03 May 2024 17:01:56 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2wID-0000000HJa8-12Id
	for linux-phy@lists.infradead.org;
	Fri, 03 May 2024 17:01:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 83BD6CE1787;
	Fri,  3 May 2024 17:01:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E63BBC116B1;
	Fri,  3 May 2024 17:01:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714755710;
	bh=FTaOlyTRBQhQQAb7vZwEa2LctghGTeQJqXhlkzNOBI0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=F+pcZfXZpJFOA9j0VKkgIIsI9WBref2GyOONCDzPlZFRsKo0UaaCgWAylyb62Fv9R
	 IkpR0TicodAMWYQdLxEJCtN9YcqXzZvKZl+5kVxHnIqZ48R0/ApkoT/KfAY7gtEm8l
	 6EA/+XALx2dgKHCn+2/LLLdtfXjHx69entbkVFcyQtW0owUvSDsQgzE5VGLkS/9l3Y
	 mInvr6yFqZ9vTEyqEI31u2mj00HKFR0j763omQvGHTfL/vOyWVA/RWLkPnkbDlqv00
	 rf62Ahg2x+LmpmhsyKExM2kzmgNnQ6b1oys3J/Fv5Rk/5eBSZmov15c7Z8taj+eb5J
	 ppxH+Xo5bOfQw==
Date: Fri, 3 May 2024 18:01:45 +0100
From: Conor Dooley <conor@kernel.org>
To: Inochi Amaoto <inochiama@outlook.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen Wang <unicorn_wang@outlook.com>,
	Jisheng Zhang <jszhang@kernel.org>,
	Liu Gui <kenneth.liu@sophgo.com>,
	Jingbao Qiu <qiujingbao.dlmu@gmail.com>, dlan@gentoo.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: Add Sophgo CV1800 USB phy
Message-ID: <20240503-deduct-jellied-23f4f90e94e3@spud>
References: <IA1PR20MB4953182B8EDB465430289400BB1B2@IA1PR20MB4953.namprd20.prod.outlook.com>
 <IA1PR20MB495355A4186420B78BD78F49BB1B2@IA1PR20MB4953.namprd20.prod.outlook.com>
 <20240430-crummiest-overnight-0f46dba32bb8@spud>
 <IA1PR20MB49535665CF1C89FFB4E1E46DBB192@IA1PR20MB4953.namprd20.prod.outlook.com>
 <20240501-effort-virus-9baa07daf429@spud>
 <IA1PR20MB4953EF886763A05EE6DDEF25BB1F2@IA1PR20MB4953.namprd20.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <IA1PR20MB4953EF886763A05EE6DDEF25BB1F2@IA1PR20MB4953.namprd20.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_100153_488063_B0E1A747 
X-CRM114-Status: GOOD (  19.30  )
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
Content-Type: multipart/mixed; boundary="===============1302181695229515837=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============1302181695229515837==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mC/9d63aJT0Up3A5"
Content-Disposition: inline


--mC/9d63aJT0Up3A5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 03, 2024 at 08:36:47AM +0800, Inochi Amaoto wrote:
> On Wed, May 01, 2024 at 06:05:28PM GMT, Conor Dooley wrote:
> > On Wed, May 01, 2024 at 08:28:47AM +0800, Inochi Amaoto wrote:
> > > On Tue, Apr 30, 2024 at 06:09:20PM GMT, Conor Dooley wrote:
> > > > On Mon, Apr 29, 2024 at 08:31:11AM +0800, Inochi Amaoto wrote:

> > > > > +  vbus_det-gpios:
> > > >=20
> > > > "vbus_det-gpios" isn't a common property AFAICT, why does it not ge=
t a
> > > > vendor prefix when the other gpios property does?
> > > >=20
> > >=20
> > > I have seen other binding (such as sunxi phy) uses this property with=
out=20
> > > vendor prefix. So I think it is a common property and don't add perfi=
x=20
> > > for it. But it is OK for me add the vendor prefix, thanks.
> >=20
> > I asked yesterday and Krzysztof said:
> > "gpios just like supplies - no prefixes, I think."
>=20
> Thanks for your explanation. If I do not understand wrong, you mean=20
> it does not need to add vender prefix?

Yeah, I think you're okay.

--mC/9d63aJT0Up3A5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZjUYeQAKCRB4tDGHoIJi
0ippAQCbZB+6yctrVo8FxPFGsoTXfVgu0jCn6Myoknnj6a2r0gEAtRpP9ldQSTNK
hFaGSTTBGWa0JD09rGB4zZZCjVY4uwI=
=1ISt
-----END PGP SIGNATURE-----

--mC/9d63aJT0Up3A5--


--===============1302181695229515837==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============1302181695229515837==--

