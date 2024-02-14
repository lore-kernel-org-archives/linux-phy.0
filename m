Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAE39C48BC3
	for <linux-phy@archiver.kernel.org>; Wed, 14 Feb 2024 18:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K5PLi9zxd0SX9nUpZhDfiDEIEjxBl29AFNUSoi/OZB8=; b=iQ4eYA+jZcCW+JoSlwOMsxHuiM
	eiAAA4LXwH+pqB/X2JHzrgkl3Myraj/qnYMcV0vfHj+/lKw4z3RjOHUWtxPGjZ6FrkY1C/NBA6607
	WAll6bG9nZADBZDieG3NtOwQ0bah842rGNY5XIJWlcMPaVNfnBCJvKja1KkLvHUwbjkHKn+00wG/O
	QYkDYr3sBLKCNw1H6lA/G400YO9K/v0tjIT4rIFp8J5VuvIpwZJ6IvFENhYj6JQ/oi2Syiwc+QcVk
	ZvHBJy8wXUnUAVnDJDd+vcC1xO3agf012sK2ttGD5d7/dVb165judaCR8vhLAByYRQmb+bGVT1XMk
	diNX6QRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raJwe-0000000DvOt-1ePy;
	Wed, 14 Feb 2024 18:25:20 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raJwb-0000000DvON-3uA1;
	Wed, 14 Feb 2024 18:25:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6B61E61A10;
	Wed, 14 Feb 2024 18:25:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 313A7C433C7;
	Wed, 14 Feb 2024 18:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707935117;
	bh=Y7PdrERFt1ce10KdRlpn2u/7lalza48LMXp38SV9IhY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JaWBn2NClRT7Mryz5xOM5khcCJqqsnYqtbPR5X3QUsu7hmTp+nt0tV6dRuaGOojDL
	 ruaQBk9tVE+iSjdPxG6ms412Z6Ryo8h6ZWSBhSOVTnGXCQWhd4s3GZUBcShBObFn9K
	 qrUFdXfAbFF9zKSn+2/6xEVv3FZamlPyOLBzndP9QeUS5vU/mnB7c2yjJJPqbGBLuC
	 SvSd3gQ4vzsQPCkMkMxWA+wKs/iQbtr8iLQpe3DDqOG3igkKhntrv3YUfpJi/w9rSH
	 wFiJMWPGx6AVKyrjmDaIX8rT93SM+ReuY6NgWe1HhabkMBRJIHdskpqdNqZjlHiOj0
	 JNEs75+0TIeKA==
Date: Wed, 14 Feb 2024 18:25:11 +0000
From: Conor Dooley <conor@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v2 03/12] dt-bindings: phy: add rockchip usbdp combo phy
 document
Message-ID: <20240214-duckbill-nimbly-4ca5ac491ec7@spud>
References: <20240213163609.44930-1-sebastian.reichel@collabora.com>
 <20240213163609.44930-4-sebastian.reichel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20240213163609.44930-4-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240214_102518_031937_170028EE 
X-CRM114-Status: GOOD (  11.93  )
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
Content-Type: multipart/mixed; boundary="===============5854011918861894023=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5854011918861894023==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nv81Ai6y9fSmboA+"
Content-Disposition: inline


--nv81Ai6y9fSmboA+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Feb 13, 2024 at 05:32:37PM +0100, Sebastian Reichel wrote:
> +  rockchip,dp-lane-mux:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    minItems: 2
> +    maxItems: 4
> +    description:
> +      An array of physical Type-C lanes indexes. Position of an entry
> +      determines the DisplayPort (DP) lane index, while the value of an entry
> +      indicates physical Type-C lane. The supported DP lanes number are 2 or 4.
> +      e.g. for 2 lanes DP lanes map, we could have "rockchip,dp-lane-mux = <2,
> +      3>;", assuming DP lane0 on Type-C phy lane2, DP lane1 on Type-C phy
> +      lane3. For 4 lanes DP lanes map, we could have "rockchip,dp-lane-mux =
> +      <0, 1, 2, 3>;", assuming DP lane0 on Type-C phy lane0, DP lane1 on Type-C
> +      phy lane1, DP lane2 on Type-C phy lane2, DP lane3 on Type-C phy lane3.

>        If
> +      DP lane map by DisplayPort Alt mode, this property is not need.

You missed one of the nits I pointed out on the previous version:
"If DP lanes are mapped by" "not needed."

Otherwise, I think this looks okay to me..
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--nv81Ai6y9fSmboA+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZc0FhwAKCRB4tDGHoIJi
0sOaAQDG8SsiQC7A5wr9bBBtBeBRIE8CtJgwfUKHyk2yVM5X6QEAguBGxJnbN2ef
vgyOk8oVaHzWaTJEN2h/FuMQnQB49gM=
=McaL
-----END PGP SIGNATURE-----

--nv81Ai6y9fSmboA+--


--===============5854011918861894023==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5854011918861894023==--

