Return-Path: <SRS0=wJWm=NQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4C6AC19F37
	for <linux-phy@archiver.kernel.org>; Wed, 25 Aug 2021 20:55:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 89010610E6
	for <linux-phy@archiver.kernel.org>; Wed, 25 Aug 2021 20:55:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 89010610E6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hocc/HIRrYeAr9+EfS7yyUKxZd2wusWSLpdDJfrn9Sw=; b=inaGszBnbo/IHs9Qsq5oT8SxSl
	oL/b7AKbrRQX1axQv8F1L3LlT6+41UQYNrAxrOjFWdyhLIpL/zxwYdmX/zA9/XEZy7K0qJCv1IRvw
	OC1c+1+rXXXRD6OuGk/sN8ko76bM4KdVWcyUDfbNHTzQRHaVGX6taFMGqvbsuLpGPh7CeSoOmb4kM
	pmR6KTu25kges9qAaGUVmoJkUJ5/8Fl5DLZGf1ZncRhLW61TEx/iKRli1n2DQlCmnQKlc8vpKBUJ+
	cLHel5XJTl+A262fKg0VBt0lQ0jHuFU3sTfw4FwLyMc5wvMq7cbnS3qzOFGl4pm7LZUQW5P4qRZYq
	fKjG7JCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIzvl-008TUf-Vv; Wed, 25 Aug 2021 20:55:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIzvk-008TU6-3E
 for linux-phy@lists.infradead.org; Wed, 25 Aug 2021 20:55:29 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 221C76108E;
 Wed, 25 Aug 2021 20:55:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629924926;
 bh=gjZeZMGJIoheKp31xKi7pLwU9TfiEyPpquQWCgvZtE4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Y9boM9pg89jRKmwouT/QTKTfP6cnbbCCCS7xmR/j11WJTKQOoI8xp/F9tCG875w14
 t6ZHgrFxWueYM1Y92Rl7sM+t1APG8oB3pawMogJMmlk55scB1wpiiS9VEVKHn2TSfQ
 v6b9DHSD8GG1ExHf6HWDK/0ILsqf5kdC4LZvW8txDVi7va9/vzSeyJvT19soF4LTaO
 UhE+SSACe6K2tgwjuD324QiY1xyoXVmyl0z/7jdZ80aCjvvWDXLZHJ4EY3w0hYaMuh
 LCtCQKRsN60dvSDuUXJopL0P8Y23dbW9YmOT36artHj8pWjc7htojIylo/VltN2sRE
 hShhViV80NumQ==
Date: Wed, 25 Aug 2021 22:55:21 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Vignesh R <vigneshr@ti.com>, Marc Zyngier <maz@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Brown <broonie@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 dmaengine@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-media@vger.kernel.org, netdev@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-serial@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-spi@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: Use 'enum' instead of 'oneOf' plus 'const'
 entries
Message-ID: <YSauOeE4lBfeDiGw@kunai>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
 Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Vignesh R <vigneshr@ti.com>,
 Marc Zyngier <maz@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Lee Jones <lee.jones@linaro.org>,
 "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Brown <broonie@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 dmaengine@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-media@vger.kernel.org, netdev@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-serial@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-spi@vger.kernel.org
References: <20210824202014.978922-1-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20210824202014.978922-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210825_135528_213436_1B432C44 
X-CRM114-Status: GOOD (  11.78  )
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
Content-Type: multipart/mixed; boundary="===============5959920862555441581=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5959920862555441581==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l25l+0aqVZr4EHUF"
Content-Disposition: inline


--l25l+0aqVZr4EHUF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 24, 2021 at 03:20:14PM -0500, Rob Herring wrote:
> 'enum' is equivalent to 'oneOf' with a list of 'const' entries, but 'enum'
> is more concise and yields better error messages.
>=20
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Vignesh R <vigneshr@ti.com>
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: Sakari Ailus <sakari.ailus@linux.intel.com>
> Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
> Cc: Lee Jones <lee.jones@linaro.org>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Kishon Vijay Abraham I <kishon@ti.com>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> Cc: dmaengine@vger.kernel.org
> Cc: linux-i2c@vger.kernel.org
> Cc: linux-media@vger.kernel.org
> Cc: netdev@vger.kernel.org
> Cc: linux-pci@vger.kernel.org
> Cc: linux-phy@lists.infradead.org
> Cc: linux-serial@vger.kernel.org
> Cc: alsa-devel@alsa-project.org
> Cc: linux-spi@vger.kernel.org
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Wolfram Sang <wsa@kernel.org> # for I2C

Thanks!


--l25l+0aqVZr4EHUF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmEmrjQACgkQFA3kzBSg
KbZM6Q//Y9REdiq/zJ83ZpDra3byCGjog62qLvRAGT4bIWJksXDHZQIAI+VT4f6T
bcW/EdAoYI1thOwyeO0PFXFAocKX3YZqx8y3bUw/vQXhQmDi3lhbeA3nmGlGl5zF
DJoaMXH/hK7uuwmdyeoHFpedIP5M+gHnvDyC4ZarCzeWuZBWMf4fwFyOgVS4PtHw
nRqm4E9bfQNCveZ/YxIQdbJFg8x419pJ49q3xqnLPweEAPs0h27mIG45IrPwHw8A
aVOGhHDvGqA3HduEiFmcLZWL7Ud3ariS19SSiHwdcdTPXtYBI+JPJh+arDDaJ2JF
8sgn/OSkymL9JZa0mg5Y3O9+FczVUlHALdrC+eSxkOlfXNR3xOJzetBC12vBlH44
6gBxucO3QoyujUTd7gsfaVIn5XqssAsWn2BYD9iM5j0D74Quyb2t1m10e6wMRWVv
/wSiWLnsC6dSO2jpulphC/G/Fyw+YcPfmvm402PlgOY5tzsY6sVS6eqyegvMReUP
oc26QyGtdxBy9Ksr54/s3N8WV14vcJm/mjCLH3ejKPrtBvOyu9sXEFmyV6lhB9r2
pEr0igI5TSC1J9EHQyvT10B56KbKlz4ZLB44daIOAYCvAIrlVRd+Yn/Nnmvk0mbs
7bnP+mB18KKgKC6GdNtfMyyZFCetGmhPLp1n1JUeoTlACwJF++Q=
=9C1H
-----END PGP SIGNATURE-----

--l25l+0aqVZr4EHUF--


--===============5959920862555441581==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5959920862555441581==--

