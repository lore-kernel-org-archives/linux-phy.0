Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA9C2E74915
	for <linux-phy@archiver.kernel.org>; Mon,  2 Oct 2023 19:27:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MIUKrb0pg3f3IkV4GAljMlfpLkHG7rfUcmyaR8BchXo=; b=hymcwPfHMW/FRrFFQiZpWq7Rx6
	Q3GIYH0q9NDbKuqQQ1Ox+lGVXAseZgzOjqz+k/IKVK8Plqaxqrgl+cxNRtPlRRKP+uVkafDyso1a2
	i+YjBd5kEeXM8dACjTlpwXsjqqqfokysWc6r7mycb2VvI2mmftu7bDoAxJrbaBirgHGbOvHPWxBYS
	COgUigRidWp4+QGr/7XVgAg94dEUFGLI63Wxip12Yse3DncC9TcoEaA1XtDu1SyWT4eiG0xxBKOT9
	jfwv3dY3/UhYxEVvi4x8S558zhIrSB9sr0qlTzb5sUVGE5oKUEbJlhaWjb2VgynJk7yZnUBlHLu1t
	Dnimwu0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnOZW-00DHx2-1O;
	Mon, 02 Oct 2023 19:27:14 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnOZS-00DHwP-2l
	for linux-phy@lists.infradead.org;
	Mon, 02 Oct 2023 19:27:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 3C638B815CB;
	Mon,  2 Oct 2023 19:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7611C433C7;
	Mon,  2 Oct 2023 19:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696274828;
	bh=M3xDfvFGJJ/XkEcT9JbDKrkZISYSg+CslZeqm002CB8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i/DPb7cvsilLk1Me6VqMIkpZXQltZmNhVfkH1ND/tlty7MKbI65nGb/5L7x8FiLEZ
	 trFegEA7SOIy2qJ2oUDGbKZn2UsnPB61coGpOzRaEiWVmXmLQdpPCAwM3JZuSoqxhg
	 1Gxxb1eUlUjWkPZ5PvaUap7PyuWWBh5P6lu4V4obRTi2XfJn1Bv4By4q2fjJ/3IMzZ
	 nDo+EWy9TDxxRRlVxema8XVH9+Z8SG5yMfFDia+5BUYEDbpikZKgCod/Paepuucp1Q
	 2aucm/MFeL8GA6tz0bg5dLULejYY8gvl7LFbm/XtcJKequQEcDmJGtiAXwxJBZsGnN
	 Rnp/Z/IfcKQRw==
Date: Mon, 2 Oct 2023 20:27:04 +0100
From: Conor Dooley <conor@kernel.org>
To: Duje =?utf-8?Q?Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Cc: Rob Herring <robh@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: Convert PXA1928 USB/HSIC PHY to DT
 schema
Message-ID: <20231002-lividly-cameo-d8f8b3a0d8e5@spud>
References: <20231001-pxa1928-usb-yaml-v1-1-9309a8c0c03f@skole.hr>
 <20231002143619.GA1651295-robh@kernel.org>
 <4849448.GXAFRqVoOG@radijator>
MIME-Version: 1.0
In-Reply-To: <4849448.GXAFRqVoOG@radijator>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231002_122711_042192_3BA6B238 
X-CRM114-Status: GOOD (  14.18  )
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
Content-Type: multipart/mixed; boundary="===============0341231774894698612=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0341231774894698612==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="JfifZB+kbj7ENI+C"
Content-Disposition: inline


--JfifZB+kbj7ENI+C
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 02, 2023 at 04:55:08PM +0200, Duje Mihanovi=C4=87 wrote:
> On Monday, October 2, 2023 4:36:19 PM CEST Rob Herring wrote:
> > On Sun, Oct 01, 2023 at 03:05:43PM +0200, Duje Mihanovi=C4=87 wrote:
> > > +maintainers:
> > > +  - devicetree@vger.kernel.org
> >=20
> > No, should be someone with hardware or familar with it. I added this,
> > but no longer have h/w or documentation. IMO, it should probably be
> > removed.
>=20
> My samsung,coreprimevelte's PXA1908 uses this PHY, is it fine if I add my=
self=20
> there instead of the devicetree list?

I would say, please do add yourself!

--JfifZB+kbj7ENI+C
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRsZiAAKCRB4tDGHoIJi
0pYRAP4h8UzkWugenlTljc1mHc6xiEIv6TodIDuceuZiVozMiwD/eAfn8S2aLBVn
M4fP3xq30F7v6BjCzJ3ft3dU0b/Lhwo=
=Zns+
-----END PGP SIGNATURE-----

--JfifZB+kbj7ENI+C--


--===============0341231774894698612==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0341231774894698612==--

