Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A36C7C3DA4A
	for <linux-phy@archiver.kernel.org>; Thu, 22 Aug 2024 16:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ewql/IzNFaq/F9pJLiYiBo4lIWc6RWZvIzkNKfSAz5c=; b=nnh+BXLfRcMWCry3Qi6QtwBS/E
	2mAvmljkjF4Lmt/jy3oR9ajRyRrZLHtolym7B9mQdWHRuZgMA6vXG+1YlcNOrBmX4tAg4dvFsUsLM
	Ldnc3HJMX+SrP6nK0fz2FCYlMRanREP758g2A627egENvR7uRNY1IKRf/fIfkmAjL03inlGrmNZnx
	Vth7PVrBalP9eisc8AOsY2jQ+ZNZo17smpV1uKDxweYSd78rLUXN41pKLD44NhSBvlP/pEzBAxrhy
	PRWSix04HlknR+J2r0cSyN80uJSLICam+6jCbmu51PJW699SWCfE0+dw4OSIetb53UFZWmhnuA08P
	h1ZVmrkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shAyO-0000000Df3M-16rb;
	Thu, 22 Aug 2024 16:47:44 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shAwO-0000000DeL8-0Nly;
	Thu, 22 Aug 2024 16:45:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 70B4ECE0F0F;
	Thu, 22 Aug 2024 16:45:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D570C32782;
	Thu, 22 Aug 2024 16:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724345137;
	bh=LNt38baBn7GGG3MYS0fB6ojOAhRQN1lnGyQaaVoF6/Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SAPabIpBZLs5AcQQRmg/Q2a2NGDsDUlON3bcKHBJ5LSKbg197IjOgigna1kvU6JJL
	 2zkhmDgevoNhhhr0cds1GBLrCLKWa4x7jAXr9vLm7NWmphL1p4amJ74YtoWLiO6N3x
	 +kXo6QOpVlm7RD4pCH8+w5NRjsASeO11NB7EN3AWB8njSofBCMw3fMzs5Rd0CbqbEa
	 1fXxxDXq9RcTxJ/EILsgfUiUiyfRcGGlRZGDT5qoJhDEc/23fG8nnH2b1Ha7bwqnE5
	 THMxFbmAg3F9hfGf07vVr48yvFcrEyGVgh2G3CSushBS/ApYcghPJik3GqBvg5Ibag
	 7TeL5qFKaUf1Q==
Date: Thu, 22 Aug 2024 17:45:31 +0100
From: Conor Dooley <conor@kernel.org>
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de,
	geert+renesas@glider.be, magnus.damm@gmail.com,
	gregkh@linuxfoundation.org, mturquette@baylibre.com,
	sboyd@kernel.org, yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com, ulf.hansson@linaro.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org, linux-pm@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: Re: [PATCH 03/16] dt-bindings: reset: renesas,r9a08g045-sysc: Add
 reset IDs for RZ/G3S SYSC reset
Message-ID: <20240822-antennae-mouth-b1d5e23425f0@spud>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <20240822152801.602318-4-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
In-Reply-To: <20240822152801.602318-4-claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_094540_331920_CA225877 
X-CRM114-Status: UNSURE (   7.60  )
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
Content-Type: multipart/mixed; boundary="===============2264081449058985369=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2264081449058985369==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="L+kFVAIM2ezB7LzQ"
Content-Disposition: inline


--L+kFVAIM2ezB7LzQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 22, 2024 at 06:27:48PM +0300, Claudiu wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>=20
> Add reset IDs for the Renesas RZ/G3S SYSC reset controller driver.
>=20
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--L+kFVAIM2ezB7LzQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZsdrKgAKCRB4tDGHoIJi
0vd7AQCfa4Z/nf+oiZGT7XkDHEggTcHwVQvighgqF6SDa5dTxQD/faumDkWUMd2S
APjv8R3K8ZxHcowAkyLfqpNMtozWxgY=
=KnSG
-----END PGP SIGNATURE-----

--L+kFVAIM2ezB7LzQ--


--===============2264081449058985369==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2264081449058985369==--

