Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8F51C3DA4A
	for <linux-phy@archiver.kernel.org>; Thu, 22 Aug 2024 16:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2Pk0jxPqXoJ18234wIdi9/AWq/qVzBhQ/C2a0DkXkII=; b=d5GaKDqOESabpWOJriSGfV297T
	+/nK3ao5tUQTIY14fWV7GEppfzI735dFcWnvdwYx0iJxmEDIqstjCtg2dIe2uE1o1jvMijs/rHHm2
	TOuN4QACbyZtlkPn8yHYMiMRXkJOJu9nbSJK702urU8DYw4iys6A9+ATf3M6xVqdfMlWJBKYqEovu
	qFQNZJ7E2EB1OXSUrySOlJTaQp3RogoEjWusoLKiIz6xBRRc1l4o0oNrROlj77JHTALYY6KMCd5nP
	KFSEJhTbtULtIYL47euz87QtHtDxo2hEyngcqWXFMmkpSJKzOvaWuqPzlSSeP/cFIvuyGemxTFwQ+
	V9/OsCmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shAzs-0000000DfRu-1ucl;
	Thu, 22 Aug 2024 16:49:16 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shAx6-0000000Debm-28fC;
	Thu, 22 Aug 2024 16:46:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id D5BA0CE0DFA;
	Thu, 22 Aug 2024 16:46:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A083AC4AF0B;
	Thu, 22 Aug 2024 16:46:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724345182;
	bh=at2jGYed94rBd41ln5QjqjDRA9cbMcgERaHl5UP9H88=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GvxWs3Tq4IT0UVfWQiSFtzytZ94M0iLcK4Wgkz5Xmr2vOTGsVf2NR5mBrLtTSTeiW
	 WdDum80RaXSldqLfPyKs4yfYjMqfBiiIgxXLNTgOy/AU2fTqUBKZUbe6yKBedy9ayq
	 Sytb8FozfLXBUKvLhIe/v3pfw2iZsnDIMhwzozIFX+FBkNa8lVLjYRwxErH4UbjqaK
	 rCvnPzHK/KXg1fCuALp2Xfcaz7czlAHguqtgQJR7jj0Xpbmb8R6DCFwQiCJaOjanlX
	 lexCshb2deERus9lTlgrIlV+3hp9F7nDU+Klum4ZixyOrWSOtYuzse7pwmwhniwg4H
	 f69gq5K570aaA==
Date: Thu, 22 Aug 2024 17:46:15 +0100
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
Subject: Re: [PATCH 09/16] dt-bindings: usb: renesas,usbhs: Document RZ/G3S
 SoC
Message-ID: <20240822-encrypt-putdown-cc8770aa781d@spud>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <20240822152801.602318-10-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
In-Reply-To: <20240822152801.602318-10-claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_094624_843041_D29BD2D9 
X-CRM114-Status: UNSURE (   7.85  )
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
Content-Type: multipart/mixed; boundary="===============9064367473877188526=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============9064367473877188526==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5UGYhxQz8p7q9/9a"
Content-Disposition: inline


--5UGYhxQz8p7q9/9a
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 22, 2024 at 06:27:54PM +0300, Claudiu wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>=20
> The USBHS IP block on RZ/G3S SoC is identitcal to the one found on the
> RZ/G2L device. Document the RZ/G3S USBHS IP block.
>=20
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--5UGYhxQz8p7q9/9a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZsdrVwAKCRB4tDGHoIJi
0qBlAQCdmgDx2vSq44d6AZcY/EME/mmHOP2w0IAW97mAF6MKJQEA7fBLbHgGSw8b
n5k//O/k2RK4u2MfswfPY9B40HEOUwM=
=L2pF
-----END PGP SIGNATURE-----

--5UGYhxQz8p7q9/9a--


--===============9064367473877188526==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============9064367473877188526==--

