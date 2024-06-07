Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8301BC27C53
	for <linux-phy@archiver.kernel.org>; Fri,  7 Jun 2024 14:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=01axX/1yHKjlhnCINAG1SNiMtfmEMcb8t4JzSX+KSak=; b=Cq4y/tT4bbx5bmEccbuAwLWNL6
	+cYHQNXlfoeNHGfsXUd5HUO25AaOGyRtobB31KMWAG5ot+LrqnHP1bL5FHIpTUalPQZGggBimB1sz
	QjuLc/KYOPjVReHT1AHBRmaojxbM6GRQ++Bw8JZDxNstO9iOPQZhckpbRXCH++WFJhl4RJODIXWxb
	Xu9tkFW4qW8Ab+y73GYVgRVv5GCfIVgHlYgwC6MaTqe4/njl4alq2MKZHuDcged3/uEEh7ZxPB1kW
	Q7ePc0IXmwLIEI2JpxAIeM97th6aKeVoIdemz4Y4N1VrjbygmSfnqjkHtOCKtoswPM79zEOukt70n
	HHSqtB/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFalv-0000000ETQV-0dJg;
	Fri, 07 Jun 2024 14:40:51 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFalr-0000000ETOS-0ek3;
	Fri, 07 Jun 2024 14:40:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 80A6C61F92;
	Fri,  7 Jun 2024 14:40:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F40A1C4AF0A;
	Fri,  7 Jun 2024 14:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717771246;
	bh=VQCVVnxbbm8joBfmb7fj7T0RW/52mB15i6mWXazrQK8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NTlnrC4Z/4rul5wzpzkhX9FIkH8AtNR8c7yZhNw2cs0aTwb/EaOm+p6Wbe+Ip+hU0
	 g/eld4/HuPRG569CiK6uIOl82Edw8PZN1unWwpScN1WwNezOSs+WKdpPqHI6K0NGkL
	 S1KjviM5T0Cx6S0rXIbv5iJPIoEzCvC1ckmZAVze8fDMH2aNHG7q8+ezXhpPgA5vFn
	 JnU6yg3gLliFjlV2r6VQvvuPTahYpSYAx4UdpNVKsSEfr1RGh2XNs3eH7DtXibBua0
	 adEhqGc8PASWHLdDXD+j5tY6uC4dLmZbKtdLIQSZHn5EGfJOW2HGhVW1TmaWjQfCS8
	 DwLSYBrM3OIjw==
Date: Fri, 7 Jun 2024 15:40:39 +0100
From: Conor Dooley <conor@kernel.org>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Josua Mayer <josua@solid-run.com>, Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Konstantin Porotchkin <kostap@marvell.com>,
	Richard Cochran <richardcochran@gmail.com>,
	Yazan Shhady <yazan.shhady@solid-run.com>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
	linux-phy@lists.infradead.org, netdev@vger.kernel.org
Subject: Re: [PATCH v6 3/7] dt-bindings: iio: adc: ti,ads1015: add compatible
 for tla2021
Message-ID: <20240607-extended-unseated-33ee0e5c7825@spud>
References: <20240602-cn9130-som-v6-0-89393e86d4c7@solid-run.com>
 <20240602-cn9130-som-v6-3-89393e86d4c7@solid-run.com>
 <20240604-suspend-schnapps-191d2c1ad53e@spud>
 <20240606211222.3b0f7a01@jic23-huawei>
MIME-Version: 1.0
In-Reply-To: <20240606211222.3b0f7a01@jic23-huawei>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240607_074047_343489_9777C2E3 
X-CRM114-Status: GOOD (  21.26  )
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
Content-Type: multipart/mixed; boundary="===============8347425255949378666=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8347425255949378666==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="MA/zUUjP3tmJsJYa"
Content-Disposition: inline


--MA/zUUjP3tmJsJYa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 06, 2024 at 09:12:22PM +0100, Jonathan Cameron wrote:
> On Tue, 4 Jun 2024 18:42:46 +0100
> Conor Dooley <conor@kernel.org> wrote:
>=20
> > On Sun, Jun 02, 2024 at 05:49:38PM +0200, Josua Mayer wrote:
> > > TI tla2021 is a limited single-channel variant of tla2024 which is
> > > similar enough to be easily supportable through the same driver.
> > >=20
> > > Add compatible string for tla2021 so boards may describe it in
> > > device-tree.
> > >=20
> > > Signed-off-by: Josua Mayer <josua@solid-run.com> =20
> >=20
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
>=20
> This binding has per channel descriptions. Perhaps for this device
> it should be updated to include a restriction on number of
> such sub nodes (probably via the reg value in them) ?

Oh yeah, it probably should be, using an enum of permitted values.

> Mind you it's currently 8 and the ti,tla2024 only has 4.
> So a possible job for another day, hopefully alongside the
> driver support and the tla2022 which seems to be the 2 channel
> version.

Or a follow-up from Josua if they want, don't think it'd be too hard
to add restrictions for these two tla devices.

--MA/zUUjP3tmJsJYa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZmMb5wAKCRB4tDGHoIJi
0hzTAQDcuCMGXDnmZL5drZ69sO2c4SqM0W5MS7H1bNF122pnZwD/d5DBjkFqVgBO
Bm9FxlFfKn1HWM9DUUIri+fvaVaywAg=
=MqsB
-----END PGP SIGNATURE-----

--MA/zUUjP3tmJsJYa--


--===============8347425255949378666==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8347425255949378666==--

