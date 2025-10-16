Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8594CCD199
	for <linux-phy@archiver.kernel.org>; Thu, 16 Oct 2025 16:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=od6VD0zjGZy1iq0nZ4y3w7cBBWq5G11J724z5imK5pE=; b=E/ihPImAYii2qZnEqDtqXSOKPq
	KeFnJUFzkTeq1uDeZcz+ctKnNTJWmPTK3irS5o6H/epXa6nAdDV80blJ51raatVvKAf+LglDgobm/
	qq0eeYEI+wsvmREnAf3njLNAJHOPEpazk/nCRSrkhAo6K/HxeQWL2hvCEuxgz6eZEQwU/FOeLXBC7
	ZXCXa5YrjK83nrRqw4S/qsOw3WlXlHsBF+hoW3rwQAbflAEHQyAQk0PWPBjpnKqz/QX/O/bKFzyuV
	oF6wyF9qv2ZiY8VQLvRM9rBCyanYCjqq0yAMLPRi+bK7ztDXofCSgjQOxnmtnXIGdfxQjf9tC+5gB
	sodhQRFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9QqX-00000005Qkt-2biF;
	Thu, 16 Oct 2025 16:28:57 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9QqW-00000005Qkl-2d7O
	for linux-phy@lists.infradead.org;
	Thu, 16 Oct 2025 16:28:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id F399D601BA;
	Thu, 16 Oct 2025 16:28:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5867BC4CEF1;
	Thu, 16 Oct 2025 16:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760632135;
	bh=e0tpk0pXhNi0q5plF/roKaY96GG8hUyMZeEejuinUmI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OE1k9/swW/9cZ+nogd5QzEATbacMt/NE0mx3YanZRwL2ubIiUKiAa41VeQDc/88aI
	 zQ2voAcjsNUg+QPVxJ2c0LElLoGx2YwBPLTtHio7cI7PCtbC58RScGyWLXoRCYTPjJ
	 gtpsVN789tPz5YnK7cK4H5v1FfhHQe5K52wBc4pjyTz0B5mrYrQS83F3inanGzsgOe
	 h0FQ/11fARUWgv40HxK5NPBC0pz5XLI2pvGGNNjGEZuyvW3b8f4sFzgAjhUo+RQNOy
	 W+NHsBxUlr/9hew9TkrK1wy5VTC09k5zDjbdJOwe2aaT5gQNik8xQV5zkb811jUFEb
	 rgqjtQUNQnm6Q==
Date: Thu, 16 Oct 2025 17:28:51 +0100
From: Conor Dooley <conor@kernel.org>
To: dimitri.fedrau@liebherr.com
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Dimitri Fedrau <dima.fedrau@gmail.com>,
	Marc Kleine-Budde <mkl@pengutronix.de>, linux-can@vger.kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: add support for NXPs TJA1145
 CAN transceiver
Message-ID: <20251016-expire-oxymoron-7a527e0af28e@spud>
References: <20251015-tja1145-support-v4-0-4d3ca13c8881@liebherr.com>
 <20251015-tja1145-support-v4-1-4d3ca13c8881@liebherr.com>
MIME-Version: 1.0
In-Reply-To: <20251015-tja1145-support-v4-1-4d3ca13c8881@liebherr.com>
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
Content-Type: multipart/mixed; boundary="===============1013179023696099152=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============1013179023696099152==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/ONgJVkuQzMk504I"
Content-Disposition: inline


--/ONgJVkuQzMk504I
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 15, 2025 at 09:37:08AM +0200, Dimitri Fedrau via B4 Relay wrote:
> From: Dimitri Fedrau <dimitri.fedrau@liebherr.com>
>=20
> Adding documentation for NXPs TJA1145 CAN transceiver, which resides like
> the ti,tcan104x-can.yaml in the same directory as other generic PHY
> subsystem bindings. At the moment there is only support for simple PHYs
> by using regulator bindings in combination with can-transceiver.yaml or
> PHYs that implement the generic PHY subsystem like the NXP TJA1145.
>=20
> Signed-off-by: Dimitri Fedrau <dimitri.fedrau@liebherr.com>

Thanks for the update.
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

--/ONgJVkuQzMk504I
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaPEdQwAKCRB4tDGHoIJi
0k+vAP4qpP/HGQPYQh/9NRAJMNduk5wViRE4u/NDCKwdIGNYJQD+JYobjIqKAQ/j
jX1knxlZh6zaq2DvcJl5iX6rrB/RugA=
=AufA
-----END PGP SIGNATURE-----

--/ONgJVkuQzMk504I--


--===============1013179023696099152==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============1013179023696099152==--

