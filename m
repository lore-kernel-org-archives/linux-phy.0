Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53515C624A4
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 15:59:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AX5iE/gYTbQ7kIuXU6F1D1NUJR5A8136VBBiuqOPjF0=; b=2dUeIo0wve85wRZKNegVbcdr6F
	gIE7nBTP4ztxIhW6Jh2gFLOnaxTkGHnmM7julFeMDrA6KgTDTk+FBOdYu018BAJrfvXveaQSaV8fR
	XRukbKAvuF7Z2hAb/h9qsBplC4XEIH+sjPfCuVPofwgSPm+H4CGnSwAY4t1P4K0W8T9NaMslAqnGZ
	Y/Gh8zpV5bEidObW/N+B1cfRpO5qHFf/Z4l+ATCXRtfIoLbmEmSN7m9+tQG3LjCPseXQjbJG4S4LV
	OKvtrgtoMSCNwMMCOOXSOyu7jzkRUklEBLZ6WvaAwWR1QNy2YIzTEl9t6nLb/mOotHUHmVaTV+OzT
	sXg+3jPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x14Pg-00000009wuh-44Yf;
	Mon, 31 Aug 2026 15:59:12 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x14Pf-00000009wtR-1z1o;
	Mon, 31 Aug 2026 15:59:11 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id CAC226022C;
	Mon, 31 Aug 2026 15:59:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1696C1F000E9;
	Mon, 31 Aug 2026 15:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788191950;
	bh=t+8HoUkz9G82V4jQ+DaIiv9d3bOgj4uA+TE0NgshO+k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=jAJorh9JGk4NHESZaqmEpvsdsZsNnOeQiWO1260ZH/bSld6JqKT84OndNcTD/2qSR
	 90vnK9KHzQliV7MuQZ9VQ2DRGV40rnL2HNg7fiqGXX6GP4+TtJ0dmNBOLOX6xN+kW+
	 6EQQup4U3mY7tdgqRF3P/Pj20UJyqicmGH0RSzzewJnLAemOixc3lAtYUvvnvyfYS1
	 HW4nVxxkZDGVrYZa3Q19M9x5jCOL5qEdsmIX69lT6+VLIqulWFYHnUB6rPzVPnGeIR
	 EfjALFrOq7VFdez/wmtGRhVPetQEppnDztzalI4oXg4DrejdLZvC1oqo8svk7Mxe0j
	 3umilPcWaz3pQ==
Date: Mon, 31 Aug 2026 16:59:05 +0100
From: Conor Dooley <conor@kernel.org>
To: Stefan Wahren <wahrenst@gmx.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Frank Li <Frank.Li@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Aswath Govindraju <a-govindraju@ti.com>,
	Christoph Stoidner <c.stoidner@phytec.de>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-can@vger.kernel.org, linux-phy@lists.infradead.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH V2 2/3] dt-bindings: phy: ti,tcan104x-can: Document
 Microchip MCP2542
Message-ID: <20260831-antsy-overvalue-1c0ec9958150@spud>
References: <20260831083539.8287-1-wahrenst@gmx.net>
 <20260831083539.8287-3-wahrenst@gmx.net>
MIME-Version: 1.0
In-Reply-To: <20260831083539.8287-3-wahrenst@gmx.net>
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
Content-Type: multipart/mixed; boundary="===============6074661784920149432=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============6074661784920149432==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zyheSK6oF5LRCWm2"
Content-Disposition: inline

--zyheSK6oF5LRCWm2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--zyheSK6oF5LRCWm2
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCapWkyQAKCRB4tDGHoIJi
0r4aAQC9EDu/AQSzbOQ9QTh4vH6D6b45raCehSLJh7D7pXfgZAD/WqlyiRPXSwfD
c4NBif2qSlu3akulOaZWRf8K1l2J4g4=
=/REW
-----END PGP SIGNATURE-----

--zyheSK6oF5LRCWm2--


--===============6074661784920149432==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6074661784920149432==--

