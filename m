Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50026C3DA7F
	for <linux-phy@archiver.kernel.org>; Mon,  5 Aug 2024 10:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VlyaklrrlldINW+yFpEnmWDtkPf1xtpleybEY8L/maA=; b=U24p5xnma+tjXTT2cuYIf9rqfA
	ZWz5jdcMGNSzWrf50kDzs2XmodtwO5Dnsvt9CgFI35Ue/LNl+070GMLs3INNNk+gwCz/VUjloH8AM
	tdmS0Pp4eWou3uuKKWJGKxCFVJlyHFn2a+gzkMFjpUa9XFHVgcJMKnYzi8CKB5GuTFcfIxt3RWZxo
	fMDBwweGXd4en9UwEiis6eFd5kvsE2X9KhB8nnEe6oenX9Blc/6ChISVmCc/uCwemZ1Gmn+GZkRwK
	xNDbYeAwQbwVGKBQOpKMNNifLIl3oEnVhsClPW318xCCVNkaHMHSf1qEE4zBl5chHlW2Jbf6oGecp
	GSag90VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saugZ-0000000FRd5-2rfV;
	Mon, 05 Aug 2024 10:11:27 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saugW-0000000FRcT-1woZ
	for linux-phy@lists.infradead.org;
	Mon, 05 Aug 2024 10:11:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 28A1ACE0283;
	Mon,  5 Aug 2024 10:11:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A092AC32782;
	Mon,  5 Aug 2024 10:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722852681;
	bh=Y0Xi9lYKmT1BemQ3hyO64BittxZDFwIlR/Mz+JVojBE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sbv+3rneucVIfs/QIVqv5N/lw/ShNIZSNt63f3w3XnwTYBCypUDdbP/DMLVWO2T7Z
	 Ui9du5WInuuFGKbUlv6wwwUuFlU/0pNhGcasoIZrXDv5q2+Yk51hqo5Cjy/EL8s7yj
	 jYeh0DXPPLkXdgyCZvf1aGkSmno9gIZ1kR+u0zUuujwDggvotVoJ7a3LIs2g7zuXbQ
	 sX77ytC20GGjEPRNguj0WxbrwVFJyUXg62T2XUYAQ4QIxBEyfNvqYipXoJrs1ITUEp
	 5JY7dynJpIx/FWGoFqvgANLpF7yR7l5ZGm7olvAm6v1W23Kb41vAOWreQojPm+1H3/
	 8GgQ8YfUr6U7w==
Date: Mon, 5 Aug 2024 11:11:16 +0100
From: Conor Dooley <conor@kernel.org>
To: Ilya Orazov <ilordash02@gmail.com>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, mkl@pengutronix.de,
	mailhol.vincent@wanadoo.fr, vkoul@kernel.org, kishon@kernel.org,
	robh@kernel.org, krzk+dt@kernel.org, a-govindraju@ti.com,
	linux-can@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: ti,tcan104x-can: Document
 Microchip ATA6561
Message-ID: <20240805-fruit-chip-cf08a0e166a3@spud>
References: <20240718210322.37492-2-ilordash02@gmail.com>
 <20240719-ahead-kiwi-995e52bf3e74@spud>
 <CAGCz5HkF_WNZBVpY2SWVf071Pi896BvKFk0jnfNAYX5AKx2Zcw@mail.gmail.com>
 <20240723-dinginess-john-608d0b28293b@spud>
 <CAGCz5H=Gncw+Tr0XaQQhhGWQER5Rs1BcxbkPaJwx9jJ-8j7LGQ@mail.gmail.com>
 <20240723-municipal-snowy-136b08b6db90@spud>
 <CAGCz5HnJKjNj7A0YD2fw20m-NrEs3MoCLwox86mC11Kudq8xbg@mail.gmail.com>
 <CAMuHMdUf=McxMLqb1hgu_-4QkSFJkdWrdtbwiwn9yJoMSi3YWA@mail.gmail.com>
 <20240801-disarray-gesture-ebad121272b0@spud>
 <CAGCz5H=gDfJpfAhH-QbxN5VSDyVtwGU6Zt16z7=sqpTdjkeGqA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGCz5H=gDfJpfAhH-QbxN5VSDyVtwGU6Zt16z7=sqpTdjkeGqA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_031124_879581_488E8E91 
X-CRM114-Status: GOOD (  33.94  )
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
Content-Type: multipart/mixed; boundary="===============1291141262755611850=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============1291141262755611850==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="YyeTlPVfQTmwF6a8"
Content-Disposition: inline


--YyeTlPVfQTmwF6a8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Aug 03, 2024 at 03:31:52PM +0300, Ilya Orazov wrote:
> > > > > > I made my patch according to a similar one that adds support for
> > > > > > nxp,tjr1443. You can find it's conversation on
> > > > > > https://lore.kernel.org/all/6ee5e2ce00019bd3f77d6a702b38bab1a45=
f3bb0.1674037830.git.geert+renesas@glider.be/t/#u.
> > > > >
> > > > > > I thought we want to hold all PHY chip names in one compatible =
enum
> > > > > > and each in its own of_device_id struct in driver and extend th=
em
> > > > > > where appropriate.
> > > > >
> > > > > Nah, fallbacks are preferred when the programming model is either
> > > > > identical or a "compatible superset" of an existing device. New
> > > > > of_device_id structs should only be used where we need to account=
 for
> > > > > differences in the programming model.
> > > >
> > > > However, I am curious as to why the NXP CAN PHY transceiver was not
> > > > included as fallback compatible. Geert, could you please share your
> > > > thoughts on this matter?
> > >
> > > The TJR1443 looked sufficiently similar to the TCAN1043 to use the
> > > same driver configuration (which is limited to having standby and/or
> > > enable signals or not).  However, I'm not sure it behaves exactly
> > > the same, e.g. in case of reporting an error condition (which is not
> > > yet supported by the driver). The part numbers are also different,
> > > so this is not a simple case of SN74HCxx vs. CD74HCxx.
> > >
> > > Summary: I don't know if they are identical, or if TJR1443 is a
> > > compatible superset of TCAN1043, or vice versa. Hence I went for the
> > > safest way....
> >
> > If we don't know for sure what the craic is with compatibility, then we
> > should leave the existing tjr1443 compatible as-is I think.
>=20
> If I understood the kernel documentation correctly, we use fallback
> compatibles when devices are similar or there is an iterative
> relationship between them. In my case, the TCAN1042 and ATA6561 are
> from different manufacturers, and I'm not sure about their fully
> identical functionality.

It's about programming models being compatible, not identical. The
manufacturer also doesn't matter.

> Therefore, I'll go back to the original idea where I shouldn't use a
> fallback compatible here and must leave it as another compatible
> property with its own of_device_id struct.
>=20
> What do you think about it? In my opinion, this is not a case for
> fallback compatibility.

Why is it not a case, other than the reasons you already mentioned that
I don't agree with?

Cheers,
Conor.

--YyeTlPVfQTmwF6a8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZrClRAAKCRB4tDGHoIJi
0hoDAQCY9tO8kPi4NhrIx+5mjOkSmk71Pj6nhwPqPT96T/A2HAD/fEckjh30gAdM
GbuWPs3jBEGfjSY/AAttPREvcluSuQ0=
=kMK7
-----END PGP SIGNATURE-----

--YyeTlPVfQTmwF6a8--


--===============1291141262755611850==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============1291141262755611850==--

