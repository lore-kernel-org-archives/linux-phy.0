Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B714C624A4
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 15:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QpvDPQn4O1q3aoznRKagc8e3LzXV8KoAP7Ji/gS1m8U=; b=hN0vH/ZU4BxXr0O9PLAo9EuceN
	AYpeU10Cw8oBu9PpS6ogiYOfux2neXmVwgMLHKv5XoBO4D4CQ8PgoTQr1YXVv268QeMXfdNbb9/Lu
	8/FEvz9YWECXRulb3goUi80QNGI1l7YhWyOAQZDtbTZmm4bzhs9QwCf7zu5Q6RbP5anYxOL3Shyru
	Q1Rmm0DGIR+J6roAHoxQIz9u+NtR4doQc0ayjyKvZvU1HbbUHK+D6wW81kaKYpRZAOK9Q3RqLwnyp
	f7epl7zJcDysYI2J5UIuGwigdOcKMLsKpSzuu4jC+TO5s52MMHk+9R10tWKzAPxuV2dbgGv2h8EnU
	kZstzL9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x14PS-00000009wqE-3EKX;
	Mon, 31 Aug 2026 15:58:58 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x14PR-00000009wpL-0cPv;
	Mon, 31 Aug 2026 15:58:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A1F5D43C66;
	Mon, 31 Aug 2026 15:58:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A9951F000E9;
	Mon, 31 Aug 2026 15:58:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788191936;
	bh=P0/EzNc24k0FPGXZh2wP6bXyySaUTKcUDkG6YVIgpCE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Cd7MM/zQYveHyQqVYKUktY3J1MVyV3Iyn3XX6lJojgiiQtQjvDoPgL9SZGe5Kk/bZ
	 V9huyylDsXMyAltIRzSgwoHHHvNfo12lnzTB4nu2bqCuOgadviQUQQARyvqKTg7xOC
	 xFutPuMGQba8pLyuxKoYhnLanXhG7mffI77HKiEy/GM30PzDuvehol1Y68dUsm/KsQ
	 fn60gFmjLuvLr5TmLViuQQqmQG96VxqZz7C8fC2DSBcDNxRx1UNXIwKVF1coG418JJ
	 rf8QGlkjYVOZ0XgNVYHK1CV30RtDXkwuLyXdhiLjYGj3n53sWz3X1pEqUiuxuXWIs5
	 c9UDksM2gIp6A==
Date: Mon, 31 Aug 2026 16:58:51 +0100
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
Subject: Re: [PATCH V2 1/3] dt-bindings: arm: fsl: Add chargebyte Charge
 Control Y
Message-ID: <20260831-dowry-exclusion-fbe150f9492e@spud>
References: <20260831083539.8287-1-wahrenst@gmx.net>
 <20260831083539.8287-2-wahrenst@gmx.net>
MIME-Version: 1.0
In-Reply-To: <20260831083539.8287-2-wahrenst@gmx.net>
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
Content-Type: multipart/mixed; boundary="===============7033720986215074454=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============7033720986215074454==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2RoMLv77VPgiR655"
Content-Disposition: inline

--2RoMLv77VPgiR655
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--2RoMLv77VPgiR655
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCapWkugAKCRB4tDGHoIJi
0uPHAQCrUnKkXv7duRq+Ukt/YSX6sDem3/+5IwjpAAV+lOf+YwEAm8PQWdIEaMHw
ka2QFhvf28afPnyTjj9WTv+mIlHI4gU=
=axxB
-----END PGP SIGNATURE-----

--2RoMLv77VPgiR655--


--===============7033720986215074454==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7033720986215074454==--

