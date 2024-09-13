Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4ABB5FC6170
	for <linux-phy@archiver.kernel.org>; Fri, 13 Sep 2024 18:24:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Anusv6Wy9Zib2uTDnEoyQGmKh5TH/SPYJLGlJXaJn/c=; b=y7cTNBBRE3jpRWojkN0GCpNxR2
	g+862R/XjW6ciRTf23v6P5x8cYj45VkReFZz3D7oCwW03ADz0QxqJd+QPz4hrDkbaiSeLXSd6grLR
	BHoDiLU4SIkq8LV19WT4H5qjCtj0GXZl01IhrDEF6LbB/v3CwbJgUI7gr0jktZL2rWWqUdFvCgbkX
	ApblVslAoFq0+Nsspl4xPfYbyO0I6xt0eqyHLae6YSgFb+8Sd7bACA7hGYxDWzDwheYdjinOqMUsc
	NHBZ9BlBdcRgO1ZsqZQrooyVJ9ovuw3ndXPeGdha6nvRtDoQd8T7y0nzWu7U0OFA+f6UJDwH2f8U8
	IfjOydEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spAyN-0000000Gnmg-2zdc;
	Fri, 13 Sep 2024 18:24:47 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1spAyL-0000000Gnll-1tMB
	for linux-phy@lists.infradead.org;
	Fri, 13 Sep 2024 18:24:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4ABB05C5A9C;
	Fri, 13 Sep 2024 18:24:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 613EAC4CEC0;
	Fri, 13 Sep 2024 18:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726251884;
	bh=iNlKwKpdp2ZsLozJYZ5+b//iKVeh2WfBLezgaI4UM7c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LHuShvTaDCz+nyy+cYZsSfLfat4WUzaHx69+RG+R0C1T/aCHHa8jhhdA9gHhTKrRJ
	 y5FTrUnowQkYSslrWiN9339L9ZLgLSeiZ5kIAqmIG0ndhwJgm4xUykvavx7xMBZGGs
	 wsNw9upMvoejwWM5VAOG8CPrdwuBwGy3W0vmGRyTJAUiB4gsnzXwwEQc+P6ayS+IBy
	 ZRXuD8zmE1p1GBJBsopYpLVtD+twRNkbdEdjQx1EW8hiwE87+YfiYTphh3noFE8GS2
	 E3asI79XPDTRkP+iv2tZR/becuEO7sa/zEIhfp5fSJI94JNpRXSCG9pnX29H34KOHG
	 KL52BWYfQWhDQ==
Date: Fri, 13 Sep 2024 19:24:40 +0100
From: Conor Dooley <conor@kernel.org>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Jeff Johnson <quic_jjohnson@quicinc.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	=?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH 1/2] dt-bindings: phy: bcm-ns-usb2-phy: drop deprecated
 variant
Message-ID: <20240913-spiritual-sneeze-7c48a16d2700@spud>
References: <20240913044557.28315-1-zajec5@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240913044557.28315-1-zajec5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_112445_552529_7A9F4E84 
X-CRM114-Status: GOOD (  11.59  )
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
Content-Type: multipart/mixed; boundary="===============0412558874570756322=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0412558874570756322==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="R27qjzCqPLhq9VAn"
Content-Disposition: inline


--R27qjzCqPLhq9VAn
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 13, 2024 at 06:45:56AM +0200, Rafa=C5=82 Mi=C5=82ecki wrote:
> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>=20
> The old binding variant (the one covering whole DMU block) was
> deprecated 3 years ago. Linux kernel was warning when using it for
> similar amount of time.
>=20
> There aren't any known Northstar devices with bootloader providing DT to
> operating system. Actually OpenWrt seems to be the only project using
> this binding and it always appends DTB to kernel. It has switched to the
> non-deprecated binding years ago.
>=20
> Given there is close to zero chance this breaks anyone's setup it should
> more than safe to drop this binding variant after 3 years.

I love a commit message like this.
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--R27qjzCqPLhq9VAn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZuSDaAAKCRB4tDGHoIJi
0k0YAP92wBmfRtY6iNbU8/6oouu4H1tJlPi0OczQX+aAQXy8CAD/fHQlTonufz8q
mRYlzKrkS/rh1bP/4IdYt2TOYdqF4wg=
=/aR8
-----END PGP SIGNATURE-----

--R27qjzCqPLhq9VAn--


--===============0412558874570756322==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0412558874570756322==--

