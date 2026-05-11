Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 038F9CD37BE
	for <linux-phy@archiver.kernel.org>; Mon, 11 May 2026 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Aw36BNuA5VfvKEUY+MRIl78XuEa+F1RFUedMUagy+XA=; b=3ANiG6V83MHkkqI/h/nztQoPLf
	StfNLGsB38Q0Y7s6AbqEiwiXdgFQO8Xyg4iQaozo7sagllcYW663nbig993MkSWaGTBNOz0383vT6
	N1vYyBpC/EQ8QJblUJpt/PYtRmVuooAIkJXjX3YUAWQYyhbwMhnp6Y9fALvk/gupS2VZRg5TtGLnQ
	9m6JbOI8+CRQRhQG3W4cMGoOElSYMZKiQe24YLeB54Fd7xjjIUzGR1MdQnWhwOTieUy1oxFwAesJf
	pp/Nd52lxiNW8wLmwKEjVPNk5NppIVd4oSNsPULDoFTHkTlE5SWKUZaS/UgPxAc85EKWZANPmZWLZ
	kJk4N35w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMTWu-0000000EDDr-2NbR;
	Mon, 11 May 2026 16:30:52 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMTWq-0000000EDC9-3y6t
	for linux-phy@lists.infradead.org;
	Mon, 11 May 2026 16:30:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 555A7435EE;
	Mon, 11 May 2026 16:30:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0914BC2BCC9;
	Mon, 11 May 2026 16:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778517048;
	bh=YTRU0QzceM5GN/zCwgxklC12bklq+nXMEZMLiB/6JqI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iJmqDb7gz4VP8rgBw0PjA4gnd68l2YaczhY2DbmG5aKqwrBFCWYZCXWNMwCmaMGKD
	 Bxo3HqhrV/vhFOZHfIUfspQbwXMO+J/CPgVCky1nRCX2FlTkmntSv8u6KlfKjM98Wc
	 MM4yE5YpiToacIo6UhZL7FZ3bkYygdlQpqXfWRFk/eqFh/A2ee7NjmAw0wlTPU90cd
	 eG6zzv4hNt3P+Lk+2rHVgyortDcfxiHln3ui9rA5u3QsoK6Uo2wNm1G98KdZEgDfjS
	 PWwW0mR7K+xhgAXuT/oyiQSme4uQYGWfrXSSWSY11CvehpGNV/PdyWjBLDH696nA3d
	 ybgRpdUEa1UIw==
Date: Mon, 11 May 2026 17:30:44 +0100
From: Conor Dooley <conor@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, netdev@vger.kernel.org,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>, linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH phy-next 2/5] dt-bindings: phy: lynx-28g: add constraint
 on LX2162A lane indices
Message-ID: <20260511-email-acuteness-19bf37f7ab6b@spud>
References: <20260511150023.1903577-1-vladimir.oltean@nxp.com>
 <20260511150023.1903577-3-vladimir.oltean@nxp.com>
MIME-Version: 1.0
In-Reply-To: <20260511150023.1903577-3-vladimir.oltean@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_093049_054814_4F3B3E3C 
X-CRM114-Status: UNSURE (   7.98  )
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
Content-Type: multipart/mixed; boundary="===============0403743513444730526=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0403743513444730526==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pG0Rwq2w5ThK7a69"
Content-Disposition: inline


--pG0Rwq2w5ThK7a69
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 11, 2026 at 06:00:20PM +0300, Vladimir Oltean wrote:
> The SerDes 1 of LX2162A has fewer lanes than all other instances, and
> strangely, their indices are not 0-3, but 4-7.
>=20
> This is a best-effort constraint, since we can only impose it when using
> per-SoC compatible string and per-lane OF nodes.
>=20
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--pG0Rwq2w5ThK7a69
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagIEMwAKCRB4tDGHoIJi
0v29AP4nagTZqyC0G4SrA+vnXDfh3QKP4eYpdEK6fbB0K0xuOwD/UCZR/LgmDCTj
pIpzEGg7++UBUrtPWMHwj2M3yHH8Nww=
=jWbI
-----END PGP SIGNATURE-----

--pG0Rwq2w5ThK7a69--


--===============0403743513444730526==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0403743513444730526==--

