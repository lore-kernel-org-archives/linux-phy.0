Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A0E1C52D7C
	for <linux-phy@archiver.kernel.org>; Fri,  9 Aug 2024 14:57:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Zc/0yOqpcAnAVsDuX+X6JH9Y2CW5Rz6Psz/rneV6+Og=; b=SGIkXrBDGXLq2rE11wEeN6UfSg
	53qUnhLqdKVtegTdoL/UxKMKZqvabgHQeYMyYFuWU1IiWMNPcUVLCxL7XvZrvre8HzMyji3eRMQ5m
	dJt/WgLXUW//OiQhNow5YqkP3vf6KqHsxaGKW53QujS3cCasNsLuOLS9MMCE7GoODMtUFLIfUUWZK
	ivydfmimu9K9kOWH1Cpu/PnjlSFodo9tovmqEx6hyjJEiacwHLmLYYiNFHEbWeVaA9IdHCzfM0I3b
	REEz4iCO/kkkuX1ArWoUE2isVOLRn7cEeiKayrS84tsKSkTzJDQ99aZOGDnVgzo27GHfAwzaNzn/7
	mChfOyGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scR3b-0000000BcXH-2fPp;
	Fri, 09 Aug 2024 14:57:31 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scR3Y-0000000BcWv-1bGo
	for linux-phy@lists.infradead.org;
	Fri, 09 Aug 2024 14:57:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A9A83616FF;
	Fri,  9 Aug 2024 14:57:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0453DC32782;
	Fri,  9 Aug 2024 14:57:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723215447;
	bh=4R4KKGn2NxfICr7QhCZSDNk9DiWF5xBj9zur1+8jo88=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JaRDrZOIPLi0YGLznowFlch5ly9OEAzEwIqVenI88eKSPOMRFgDnYJO4twVfCN96s
	 Uo07xbv8E3L7VIskARFQo62HM6diZXNQXm1g1IQjEMXCzJPyo4O8ojWU02CBO12nPO
	 /MmjdgAc7ldcVl6TuxkMgVgwPuCB6elIlIvhf8pudxG0GCi9RrWIYouCW4Bhd9poG/
	 2T0fvUOljQ2biWHPsyBE0qXpsKlxDzgOr+vRYh1G/Bjahq4AWV2xFH1N8ZeUQXsYWX
	 W8R+x+xAtkCUYgbNMZawkc3PGwBB85oOmlDNkGHa1Uf5jCeQh+bpbCWYu/i/eQ3eXu
	 P7IyVTaF3AQ6w==
Date: Fri, 9 Aug 2024 15:57:22 +0100
From: Conor Dooley <conor@kernel.org>
To: Ilya Orazov <ilordash02@gmail.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Aswath Govindraju <a-govindraju@ti.com>,
	Conor Dooley <conor+dt@kernel.org>, linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/1] dt-bindings: phy: ti,tcan104x-can: Document
 Microchip ATA6561
Message-ID: <20240809-guru-tassel-84a14486a596@spud>
References: <56a52c81-68de-438d-94ae-9decc799d824@kernel.org>
 <20240808191735.1483572-1-ilordash02@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240808191735.1483572-1-ilordash02@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_075728_484144_281921F0 
X-CRM114-Status: UNSURE (   8.48  )
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
Content-Type: multipart/mixed; boundary="===============2612192450937474027=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2612192450937474027==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Z9RnOkapWi2cVpnp"
Content-Disposition: inline


--Z9RnOkapWi2cVpnp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 08, 2024 at 10:17:35PM +0300, Ilya Orazov wrote:
> Microchip ATA6561 is High-Speed CAN Transceiver with Standby Mode.
> It is pin-compatible with TI TCAN1042 and has a compatible programming
> model, therefore use ti,tcan1042 as fallback compatible.
>=20
> Signed-off-by: Ilya Orazov <ilordash02@gmail.com>
> ---

Acked-by: Conor Dooley <conor.dooley@microchip.com>

btw, please don't send new versions as a reply to existing ones, it's a
shortcut to getting lost in deep mailboxes that sort by thread (or as I
almost did here, deletion of the mail without reading it).

--Z9RnOkapWi2cVpnp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZrYuUgAKCRB4tDGHoIJi
0oVmAQD8Uap0l7TMY5aZAVoZiOEmVvtoe4eohtWFtQiBT7YazQD+MAqeHGP2ntUa
S2D7wGaioo1h4pc9Qw7vK53R5JN2jwk=
=+82K
-----END PGP SIGNATURE-----

--Z9RnOkapWi2cVpnp--


--===============2612192450937474027==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2612192450937474027==--

