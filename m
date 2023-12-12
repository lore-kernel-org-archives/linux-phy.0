Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D57EC4332F
	for <linux-phy@archiver.kernel.org>; Tue, 12 Dec 2023 16:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9SkaDkPaw7rCYscLBfMOuAqlg++uJvmiqnQoug0Jhv4=; b=ELTKQemV/UaEoFWd4mJYMgzj5w
	XPrQsBdEksaYKQdOMF/3ICHnY3GkFx4k1uE68MhL/j6genpUt0knxo/b+QRCo1N9+oXr8BhKP/arb
	IclsVDJtNtNNj7susrsj9xTnc0vONzuueaMxasp9BIRRn+kvbx9m9oaRgVjTy7Z/MqpQ8koVTd7Gc
	7MrpJ9HtkmgLPhzfxWpDG5EpxFggergk+hVqcCiG8Senk5G9otRNEsCrCignrgORnghSZDajw8jHr
	O1AX5ruyQ2xdF7SLI655s/S1KpN+S1LxrqMtEBHMCO6TwtwiCtzAvaCSvPv3C3kdQ2/owwSoXhLDr
	xTaSdXdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rD5J7-00CAE8-3A;
	Tue, 12 Dec 2023 16:08:29 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rD5J5-00CADX-1r
	for linux-phy@lists.infradead.org;
	Tue, 12 Dec 2023 16:08:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 14C47617EB;
	Tue, 12 Dec 2023 16:08:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 524DBC433C8;
	Tue, 12 Dec 2023 16:08:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702397306;
	bh=OH0G10DH+BAtW5ufCW11pSaAmGWPMbfRjouSrbJTQuw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kjLqLIs5wRJ/96ttv/ATtpwpcykIqyZ/Oembazzvr6zI+UegpxBctN+p5CLBHujuL
	 DnoEVYLXNejR5FZ/JZE2bsHDSPpYI7JjNZKVqtEoXTk6RVaZF/i1Ni6qjjzpjjL8ih
	 b+T3+v4ifHyX+jTHtn1OziAPwSsp2N/m35jg2aVWbLjJchME+Yn/Dxc7bBuxZ1OKsJ
	 JpMbv9Mxo/pML7Jcvu9xDgtznxY7pLnU1zS6w4JdN9kLnIype0DY1fYolK/1GIRnqg
	 iCQjeGTinvsrINqinEcpe2r+aGrwjWbbQrjkgbRie9902S5nvUBivWgY40n9dIVB4p
	 kDXs9UcE+KbFQ==
Date: Tue, 12 Dec 2023 16:08:22 +0000
From: Conor Dooley <conor@kernel.org>
To: Swapnil Jakhade <sjakhade@cadence.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, mparab@cadence.com, rogerq@kernel.org,
	s-vadapalli@ti.com
Subject: Re: [PATCH v2 4/5] dt-bindings: phy: cadence-torrent: Add a separate
 compatible for TI J7200
Message-ID: <20231212-headphone-dorsal-dcea42263636@spud>
References: <20231212114840.1468903-1-sjakhade@cadence.com>
 <20231212114840.1468903-5-sjakhade@cadence.com>
MIME-Version: 1.0
In-Reply-To: <20231212114840.1468903-5-sjakhade@cadence.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231212_080827_654294_575171BB 
X-CRM114-Status: UNSURE (   7.58  )
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
Content-Type: multipart/mixed; boundary="===============8657650499277274836=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8657650499277274836==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="uVnzDENYDLNx9frF"
Content-Disposition: inline


--uVnzDENYDLNx9frF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 12, 2023 at 12:48:39PM +0100, Swapnil Jakhade wrote:
> TI J7200 uses Torrent SD0805 version which is a special version derived
> from Torrent SD0801 with some differences in register configurations.
> Add a separate compatible for TI J7200 platforms.
>=20
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--uVnzDENYDLNx9frF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZXiFdQAKCRB4tDGHoIJi
0qFZAP0buWf516DdZnBglwCKgtqcA6Xdl/YA7o4Zq3WV3iMpRAEA+fbxnwYZdAWi
PYoesrgonvFDnfdaKZOcuCW/rzcwRAA=
=BDxH
-----END PGP SIGNATURE-----

--uVnzDENYDLNx9frF--


--===============8657650499277274836==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8657650499277274836==--

