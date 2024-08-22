Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95638C3DA4A
	for <linux-phy@archiver.kernel.org>; Thu, 22 Aug 2024 16:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Eq2XdCdsSIn4pcrjUJnqUZ93W2I5eosh/dtvd0Tz2Ik=; b=fbxywM9zASOrZ4jbvoUTvurcfI
	C3kH0cOBZuiWgRgDm5b39W7KibdrE0+gUOOFLk5cfzt+w1VHcxuwwm6ruxlte57nQAIxWzfmgH+cX
	xMgO5lBZQVpXuezHILuMBNNgXxBynLBjdtnlgK1sD9pcXnnAr/tJr/h40tEx64EUri9wUuiWzu1N7
	j5R+dAMXJY2BYFHDWxHMnfHLMlQqiClLwnZ5MHcIFAncNkEdM7RfWb0T8qW1NwT85jgEEDH7UjGZk
	e6TxfGt0VoCH5qIdGilmc7k5RYxcjK/w3ZeqGlZL3kNzJH7GWvbg64cuD69qqgHunmvqdbJcviLTX
	122a/LPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shAzB-0000000DfGv-10Hg;
	Thu, 22 Aug 2024 16:48:33 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shAwl-0000000DeRz-399Y;
	Thu, 22 Aug 2024 16:46:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 267A46119B;
	Thu, 22 Aug 2024 16:46:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F311C32782;
	Thu, 22 Aug 2024 16:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724345162;
	bh=cMfaa0B/xMQ0ls5dtOkTDegOrA7pKxwTaEWGp6g/86Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YypZl2RCrZDJU1uXHF95jWfYJyUn9bJRhFJYiAt7bOr0b8sgt+rq76wlTXGOfwGPY
	 S46DV8XAXYO+XUvMq+KrOcrbnKvzceTfbU7BevvCWYdmL7iv6giaVtVaGey11fSnny
	 sNc2F1YVgtvDmzQ2tvqvXA27ELtCfGK0UdHFEDjkUlvNqDg48fbwSr65CVHGYSAWy6
	 7xFoWsGSiLlZZNWsaLdBoiDQs+O9t+ONzuP0MzdcSDNrr3cXbopYonZmGbvlyDslbj
	 vtYHPgGd5HCF7oZafeao6eRwhkfByJoexlnfhBNjiL7TyUuHo+fhlWNZkRLaaBaQKo
	 OqgjhBCkajHFw==
Date: Thu, 22 Aug 2024 17:45:56 +0100
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
Subject: Re: [PATCH 06/16] dt-bindings: reset: renesas,rzg2l-usbphy-ctrl:
 Document RZ/G3S SoC
Message-ID: <20240822-emoticon-draw-0cf557c425f7@spud>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <20240822152801.602318-7-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
In-Reply-To: <20240822152801.602318-7-claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_094603_861460_4E48ABF5 
X-CRM114-Status: GOOD (  10.02  )
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
Content-Type: multipart/mixed; boundary="===============5607922935069248929=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5607922935069248929==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wpAA43Alk9pJpKUy"
Content-Disposition: inline


--wpAA43Alk9pJpKUy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 22, 2024 at 06:27:51PM +0300, Claudiu wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>=20
> Document the Renesas RZ/G3S USB PHY Control IP. This is similar with the
> one found on the RZ/G2L SoC the exception being that the SYSC USB specific
> signal need to be configured before accessing the USB area. This is
> done though a reset signal.
>=20
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

--wpAA43Alk9pJpKUy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZsdrRAAKCRB4tDGHoIJi
0mS1AQDOIrI5V4Tm1BHqGgW2bvAyeS79T3se/WkG3OlitsuXywD/fdNyGMita+TO
xHGCrO2/4SSpNJhIxpNEFnRSFoyHHAY=
=Z/RQ
-----END PGP SIGNATURE-----

--wpAA43Alk9pJpKUy--


--===============5607922935069248929==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5607922935069248929==--

