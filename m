Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EEE8C531F9
	for <linux-phy@archiver.kernel.org>; Fri, 24 Jul 2026 21:51:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A128PDE108ObX1f7+6i5HPQgiZaLQwShzKQEZ3pEZWA=; b=xeW8Ylf/im+/LQqz3+pM8he/Xv
	VatZs45oV1A2yKJjaubI/UHQ13pWReLQvW6IIFQShIGM77auWJl32KAWDgea+rwFLC//vOCI3KJ0C
	gOkXq9qN3Gb49HbcIQDyP+gB0O40396OTg4q+fk7qNzhiAivqEXdDE2ynfEOZMpXGMTfnyAk8YTCk
	WMeM42ynK/hfB46E4adEO6VGlryilblc2+FDk7/NiOgbiWjkZNbpTjnHHEM+0bdcD5ASojwzALOcs
	a3zEtvS0OE0h75ZvfS+RZV70XbfOaeolqz8kJADSYyzoQ3OewDMhgywpv6YlVRcqj6VJxTQWlRhZ3
	1nuNwPmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnNo0-0000000HHGU-0Sd3;
	Fri, 24 Jul 2026 21:51:44 +0000
Received: from sender4-op-o11.zoho.com ([136.143.188.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnNnx-0000000HHGA-31z8
	for linux-phy@lists.infradead.org;
	Fri, 24 Jul 2026 21:51:43 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1784929893; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=oDXJGvsrkabItjiH+v4NuUbnqaJXs9R5UMnFLoeALWPjgS3E9uwieCTPysdaXlqtQx7Y0glSQUdvXkPfVvwkEzwSRINfHfr0Q1JTW1Gok8jUaiRMueLjhndyiVQEcdMN1phJAxTCQh34jm06Q7hH3JUtXoJTqWw0NUTOdpQaSuI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1784929893; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=rxObKoBYz9bdL1QDIAY38u1ujROlN6uVzdz2O8QptDc=; 
	b=RB0co4FTwKqnrPA6pjLLZ713gW0Q0PTePi1zV+IyVeuuPquzonPTmhgnAhfuWaJPv04lBdj46SpdD9TGnXpn6cJGlDjgUZQSya+A1FsKRJWvrHzlfBdA6Fd+y5A5rgUwFKSsFa0Jp9kAN5jt+1/1gHDoZeDsN4gBtS8i2dIHzQQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1784929893;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=rxObKoBYz9bdL1QDIAY38u1ujROlN6uVzdz2O8QptDc=;
	b=atvDK0mQ8rOk1q1Cl/hJbTPH1cdUWpWueM1L/ETUu7NRbP6HMTeR03A+Esw30YlC
	ANd/Z77xm6JykrrewsP96vFrCHkqSaW4mDpHqCtppyS2/nXIUvHMMI3ORKglr0bcjn/
	bD5iqewvFeSMvisjM9YKei0KR1agwMO2dn9+3vQ0=
Received: by mx.zohomail.com with SMTPS id 178492989200395.17774346570991;
	Fri, 24 Jul 2026 14:51:32 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id EE334181F16; Fri, 24 Jul 2026 23:51:27 +0200 (CEST)
Date: Fri, 24 Jul 2026 23:51:27 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v5 3/5] phy: snps-eusb2: Set phy type to EUSB2
Message-ID: <amPdeL2GWkNhPoal@venus>
References: <20260723-eusb2-int-handling-v5-v5-0-f32ea6c1a318@oss.qualcomm.com>
 <20260723-eusb2-int-handling-v5-v5-3-f32ea6c1a318@oss.qualcomm.com>
MIME-Version: 1.0
In-Reply-To: <20260723-eusb2-int-handling-v5-v5-3-f32ea6c1a318@oss.qualcomm.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.10.1.5.2/284.919.37
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260724_145141_838264_04636595 
X-CRM114-Status: GOOD (  16.09  )
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
Content-Type: multipart/mixed; boundary="===============0620034536444113557=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0620034536444113557==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="m55f6i4q6qo7c2yd"
Content-Disposition: inline


--m55f6i4q6qo7c2yd
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v5 3/5] phy: snps-eusb2: Set phy type to EUSB2
MIME-Version: 1.0

Hi,

On Thu, Jul 23, 2026 at 04:09:06PM +0530, Krishna Kurapati wrote:
> USB controllers like DWC3 are agnostic of the kind of phy (USB2/eUSB2)
> connected to it. Set the phy type to EUSB2 to let the controller know
> the phy type when queried during its probe.
>=20
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  drivers/phy/phy-snps-eusb2.c | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
> index f90bf7e95463..e139b17bcda5 100644
> --- a/drivers/phy/phy-snps-eusb2.c
> +++ b/drivers/phy/phy-snps-eusb2.c
> @@ -13,6 +13,8 @@
>  #include <linux/regulator/consumer.h>
>  #include <linux/reset.h>
> =20
> +#include <dt-bindings/phy/phy.h>
> +
>  #define EXYNOS_USB_PHY_HS_PHY_CTRL_RST	(0x0)
>  #define USB_PHY_RST_MASK		GENMASK(1, 0)
>  #define UTMI_PORT_RST_MASK		GENMASK(5, 4)
> @@ -597,6 +599,8 @@ static int snps_eusb2_hsphy_probe(struct platform_dev=
ice *pdev)
>  		return PTR_ERR(generic_phy);
>  	}
> =20
> +	phy_set_type(generic_phy, PHY_TYPE_EUSB2);

Isn't there a potential race condition if it's handled in this way?

1. phy-snps-eusb2 probe: PHY is registered
2. dwc3 probes
3. phy-snps-eusb2 probe: PHY type is set

Greetings,

-- Sebastian

> +
>  	dev_set_drvdata(dev, phy);
>  	phy_set_drvdata(generic_phy, phy);
> =20
>=20
> --=20
> 2.34.1
>=20
>=20

--m55f6i4q6qo7c2yd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmpj3lsACgkQ2O7X88g7
+ppUyQ/9Em5Or2yxSmbUYLORK19KD1Ah9p71VebqMaZ/N4eIcJpgJ+U7LU//WbV0
K/UeAVFd7AFU0w/aPAQBgz/WgUW406YPriExgZsr8CWHDQyWlmVrr0LVeCHy+x+Q
UzeBQaZsXISMhjKClU0lVhcQHUoedsdj7CFydDsyuRoz/xZvc0TcJ79UMvrDqVAl
jlksFfBQQ8pDU0N81xv0F5ESB5GUID27RAAT3UnCub9WwKqoTvxcrpkwqsIw4EgQ
ttU/wwf7lM+9mzoYYXupTG8g2OuhpJSFdJTf0EHFh1una9EZ/5fy76xzESsSlQ6j
Q+V91T74J94m3His2Tm9SHXzv2JFj7GG8Ayk6uvYzBlZJ8VBvEZajNyR0zmYHq6v
TgNBh89YATTx/0QHiZPQC3bBiWNvsQDNkkQU/Rjk97UM2n09M3CH/Ymkcdgmb+f1
H9/8wYK4RLJPFnOodSPqQFsXqBvYXAIgembbFCupDvPz76EycTHDIiscGiXQhVfw
EdM2GOlvc77BrGSfCpjbULsLd1pqBHRwxQym15cTY8FUM4/d9ZqdS3+fDtY5URPv
eayatF4MyBo8+jhol6prDNPvKuSxuPZnMZaskylhUMYvEElxTnHBBlnkWGyRFsYO
T4pbgRFEclb/xZA/YYLdZ/7rtwsfqrAKjh2je+eKfh+eb3rpfxM=
=Pqf2
-----END PGP SIGNATURE-----

--m55f6i4q6qo7c2yd--


--===============0620034536444113557==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0620034536444113557==--

