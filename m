Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC22BC4828D
	for <linux-phy@archiver.kernel.org>; Sat,  3 Feb 2024 20:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4NbhwfKm49CFefaT0xY0PG9hSlN7lal2Pri+eEBH5Vo=; b=ZxSv5qN2vy23TS0FjxgpOiqb8L
	x1eePc6UsJw7QUaFY0ZJvqTuQItJ+arN4V7N6ZkapfX/qR9wpoZVNIeYvK4r/YaP7oetl2NPtSNAe
	qo3TFOHNZmW01aGrhSrYP66XRWjxMAkI37U6OmXy+grfXkwcp29XaAnK8/hwz8vtvFr4KJX64eM52
	eQWmgbD+km9MoK8yW8VZ/Jnc2mm+4Z0u3hJ/2mnSZDHjAcp+nG1XM9XSeZXeWYnFBww40QWb9iOTM
	vtH4iw4Nr42iVohkak/kMQ0n4snSNx/cXjBsfajvfrJ9sKpAcq2sP1dvkJbXv5iQZDwWcNG5q9uF/
	T3yX7f+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWMvW-0000000HDOd-2SL6;
	Sat, 03 Feb 2024 20:47:50 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWMvT-0000000HDN3-1PLg;
	Sat, 03 Feb 2024 20:47:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 6310BCE0946;
	Sat,  3 Feb 2024 20:47:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA2F8C433F1;
	Sat,  3 Feb 2024 20:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706993263;
	bh=f2I8gWEzkwSZbGGlhrQHuwLADXjkshYxOtnScKHw11s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GN/4T/RqtAM5pPUfQihjK3Wa8sAV3pUsmPhYvA/cg2Mt2nro2ZyjanWbrJsFNV3X0
	 z5BUbR+pQSMZAeHOP3sXKHIURcwPfLXvK10KTL7JVV6BMqAtJcWeBZZaUNH8BgEZwr
	 WzCvc/4pSyEOOKjimaGiYIRPvzhm5cFZkClqVzDoxmb/PXTafnKB5XS5SvdpzINgmK
	 q/IJVnPabe73UT5UmIzBjjFDfb7yi95qtdPjsD2ng69sNJ9Ox97m8liHEvjdKMoKE0
	 QcQjfDe1BO9oUeMuwNyLPZn3s3kiyHosGSbJT7/8lpjlfsPnQ91fjVkcMwRyGM/tUl
	 QPqwMl+qAzuzA==
Date: Sat, 3 Feb 2024 21:47:39 +0100
From: Wolfram Sang <wsa@kernel.org>
To: Gatien Chevallier <gatien.chevallier@foss.st.com>
Cc: Oleksii_Moisieiev@epam.com, gregkh@linuxfoundation.org,
	herbert@gondor.apana.org.au, davem@davemloft.net,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, alexandre.torgue@foss.st.com, vkoul@kernel.org,
	jic23@kernel.org, olivier.moysan@foss.st.com,
	arnaud.pouliquen@foss.st.com, mchehab@kernel.org,
	fabrice.gasnier@foss.st.com, andi.shyti@kernel.org,
	ulf.hansson@linaro.org, edumazet@google.com, kuba@kernel.org,
	pabeni@redhat.com, hugues.fruchet@foss.st.com, lee@kernel.org,
	will@kernel.org, catalin.marinas@arm.com, arnd@kernel.org,
	richardcochran@gmail.com, Frank Rowand <frowand.list@gmail.com>,
	peng.fan@oss.nxp.com, lars@metafoo.de, rcsekar@samsung.com,
	wg@grandegger.com, mkl@pengutronix.de, linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	dmaengine@vger.kernel.org, linux-i2c@vger.kernel.org,
	linux-iio@vger.kernel.org, alsa-devel@alsa-project.org,
	linux-media@vger.kernel.org, linux-mmc@vger.kernel.org,
	netdev@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-serial@vger.kernel.org, linux-spi@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH v8 02/13] dt-bindings: treewide: add access-controllers
 description
Message-ID: <Zb6ma9lHMu3SAe0U@shikoro>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
	Gatien Chevallier <gatien.chevallier@foss.st.com>,
	Oleksii_Moisieiev@epam.com, gregkh@linuxfoundation.org,
	herbert@gondor.apana.org.au, davem@davemloft.net,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, alexandre.torgue@foss.st.com, vkoul@kernel.org,
	jic23@kernel.org, olivier.moysan@foss.st.com,
	arnaud.pouliquen@foss.st.com, mchehab@kernel.org,
	fabrice.gasnier@foss.st.com, andi.shyti@kernel.org,
	ulf.hansson@linaro.org, edumazet@google.com, kuba@kernel.org,
	pabeni@redhat.com, hugues.fruchet@foss.st.com, lee@kernel.org,
	will@kernel.org, catalin.marinas@arm.com, arnd@kernel.org,
	richardcochran@gmail.com, Frank Rowand <frowand.list@gmail.com>,
	peng.fan@oss.nxp.com, lars@metafoo.de, rcsekar@samsung.com,
	wg@grandegger.com, mkl@pengutronix.de, linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	dmaengine@vger.kernel.org, linux-i2c@vger.kernel.org,
	linux-iio@vger.kernel.org, alsa-devel@alsa-project.org,
	linux-media@vger.kernel.org, linux-mmc@vger.kernel.org,
	netdev@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-serial@vger.kernel.org, linux-spi@vger.kernel.org,
	linux-usb@vger.kernel.org
References: <20231212152356.345703-1-gatien.chevallier@foss.st.com>
 <20231212152356.345703-3-gatien.chevallier@foss.st.com>
MIME-Version: 1.0
In-Reply-To: <20231212152356.345703-3-gatien.chevallier@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240203_124747_736628_2FE2E179 
X-CRM114-Status: GOOD (  10.64  )
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
Content-Type: multipart/mixed; boundary="===============3012423421491534185=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============3012423421491534185==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VPm+VxExOC+V7OZ+"
Content-Disposition: inline


--VPm+VxExOC+V7OZ+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 12, 2023 at 04:23:45PM +0100, Gatien Chevallier wrote:
> access-controllers is an optional property that allows a peripheral to
> refer to one or more domain access controller(s).
>=20
> Description of this property is added to all peripheral binding files of
> the peripheral under the STM32 firewall controller. It allows an accurate
> representation of the hardware, where various peripherals are connected
> to a firewall bus. The firewall can then check the peripheral accesses
> before allowing its device to probe.
>=20
> Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>

Acked-by: Wolfram Sang <wsa+renesas@sang-engineering.com> # for I2C


--VPm+VxExOC+V7OZ+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmW+pmsACgkQFA3kzBSg
KbY64RAAof4Gx7h4jhXu9UFvGgxDMB7nucJwU2vnrWAQqslpX78IIuHnDzQGSdx4
YeqQnv3x5PquSqBz8x/rnE1ptR0LqnAgeJdEOQB0AAicQ+VFy75kPngr9dtiCJuf
SrCwaIYQ13qIhhC6pa7HTEUSQN/KX6DVSffmeJmOJoHIqGa1L1ldEH5tujF71Plb
q5ugpGi2Jkmb+UU5/EaXadNKZ5b3BSp/xWur8Eemy9Z4DqqoipzJRzSJHufFNZDR
pRdNn14JQlzQ948vT+YdpGqPE6jrVpd48rygAjaXsPx3cVQx7ouU6tKPnFLjtgyp
tb0R2ZIQNXVaQV36XLwhvv0qFqHEiY36q+GjYSEbMHbO1b0+zneKgmZXNSwCclEp
WQ8DrD3UEKTXcDHmoRV5GVgzZyk7wmK8zq3jofTemYyfKhSvsmAiufzZCQLV/9GI
ScuNib34aJrsiIXiD40DsFNcutPh2v+aBXQmtfpkA++3ZvY9aBQa5KeEqzrKPaa0
AVXFtXPN4hnNkUzTogCTHEvL7dYtbi0h7W5fun3D5kOLdZuewR8vFAotIaDRG7tB
S7AWJDu+x2RT2xAs2yJEfSHMwoBZRdq3nJVugmRDb+VELZmIDBdN4vwBRXfi+cHr
ouzPgt76DcQhfF6JGRUhloWtVuWW3QRQ1uYMpWUrKztG+3WiqBU=
=nMRV
-----END PGP SIGNATURE-----

--VPm+VxExOC+V7OZ+--


--===============3012423421491534185==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============3012423421491534185==--

