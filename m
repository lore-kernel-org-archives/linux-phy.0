Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3602CC6FD18
	for <linux-phy@archiver.kernel.org>; Fri, 31 Mar 2023 12:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uZvqD1p+afL0edAVpj2tvGM/2V4ibJMfqQLThqnJMHM=; b=wf2mIv7jfXeSk6oeADll7i4+tG
	uQgprHhf1PCpHVaeav7wH7dM0jKu2bYUaziaXoKxtSLm6IHT0mz8U/i9MZs5J9kYNo7mVDZSneC2a
	tQ1cgoGmlo1hjXyUENuXwx1AFj5I8F7+HiPZqoZu6hjPWrDPi/2kBRAqkPdg93h5MQoc2+1XuRjUF
	VDAMthNLg3RiN5u7SVfRJR7nDhcmWYI8yjnOWo9YSjcRhGDbb573TdjNrmEAbjJJbTPcYcMwgCUtm
	nkXCJ8SacPspu4fLpNRzN7GA2PtxwNoPe4DgwDfMvYIuxQKkGb2p13S/ufRwMkijxlYvblOUbPw9Z
	vQK1zBkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piDWg-007DA0-2o;
	Fri, 31 Mar 2023 12:06:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piDWc-007D7a-35
	for linux-phy@lists.infradead.org;
	Fri, 31 Mar 2023 12:06:37 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mgr@pengutronix.de>)
	id 1piDWX-0006Xe-5F; Fri, 31 Mar 2023 14:06:29 +0200
Received: from mgr by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mgr@pengutronix.de>)
	id 1piDWV-0000Wo-BS; Fri, 31 Mar 2023 14:06:27 +0200
Date: Fri, 31 Mar 2023 14:06:27 +0200
From: Michael Grzeschik <mgr@pengutronix.de>
To: Fabrice Gasnier <fabrice.gasnier@foss.st.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	vkoul@kernel.org, kishon@kernel.org, mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com, error27@gmail.com,
	kernel@pengutronix.de, linux-stm32@st-md-mailman.stormreply.com,
	amelie.delaunay@foss.st.com, gregkh@linuxfoundation.org
Subject: Re: [PATCH v2] phy: stm32-usphyc: add 200 to 300 us delay to fix
 timeout on some machines
Message-ID: <20230331120627.GJ6000@pengutronix.de>
References: <1869feff-06b1-17f1-4628-b433c858ad79@foss.st.com>
 <20230227151318.1894938-1-m.grzeschik@pengutronix.de>
 <27b9e057-bdd7-b4e6-445c-8da700423600@foss.st.com>
 <20230310104438.GB7352@pengutronix.de>
 <20230320120210.GA26652@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20230320120210.GA26652@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mgr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_050634_999317_2FA7B0A2 
X-CRM114-Status: GOOD (  18.41  )
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
Content-Type: multipart/mixed; boundary="===============8944832862424321528=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8944832862424321528==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="m0XfRaZG5aslkcJX"
Content-Disposition: inline


--m0XfRaZG5aslkcJX
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Cc'ing: Greg Kroah-Hartman <gregkh@linuxfoundation.org>


On Mon, Mar 20, 2023 at 01:02:10PM +0100, Michael Grzeschik wrote:
>Gentle Ping!
>
>On Fri, Mar 10, 2023 at 11:44:38AM +0100, Michael Grzeschik wrote:
>>Hi Fabrice,
>>
>>On Tue, Feb 28, 2023 at 06:28:21PM +0100, Fabrice Gasnier wrote:
>>>On 2/27/23 16:13, Michael Grzeschik wrote:
>>>>An minimum udelay of 200 us seems to be necessary on some machines. Aft=
er
>>>>the setup of the pll, which needs about 100 us to be locked there seem
>>>>to be additional 100 us to get the phy really functional. Without this
>>>>delay the usb runs not functional. With this additional short udelay
>>>>this issue was not reported again.
>>>>
>>>>Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
>>>>
>>>
>>>Hi Michael,
>>>
>>>Thank you for the updates,
>>>
>>>Fell free to add my:
>>>Reviewed-by: Fabrice Gasnier <fabrice.gasnier@foss.st.com>
>>
>>Thanks!
>>
>>Through which tree will this be picked?
>>Will it be possible to add this to v6.3?

Hi Greg!

Since nobody seem to catch this, is it possible that you pick this?

Regards,
Michael

>>>>---
>>>>v1 -> v2: - changed the mdelay to udelay_range(200, 300), like suggeste=
d by fabrice
>>>>         - moved the delay to pll enable so it will only be triggered o=
nce
>>>>
>>>>drivers/phy/st/phy-stm32-usbphyc.c | 3 +++
>>>>1 file changed, 3 insertions(+)
>>>>
>>>>diff --git a/drivers/phy/st/phy-stm32-usbphyc.c b/drivers/phy/st/phy-st=
m32-usbphyc.c
>>>>index 5bb9647b078f12..dd469f57fba7eb 100644
>>>>--- a/drivers/phy/st/phy-stm32-usbphyc.c
>>>>+++ b/drivers/phy/st/phy-stm32-usbphyc.c
>>>>@@ -317,6 +317,9 @@ static int stm32_usbphyc_pll_enable(struct stm32_us=
bphyc *usbphyc)
>>>>
>>>>	stm32_usbphyc_set_bits(pll_reg, PLLEN);
>>>>
>>>>+	/* Wait for maximum lock time */
>>>>+	usleep_range(200, 300);
>>>>+
>>>>	return 0;
>>>>
>>>>reg_disable:
>>>
>>
>>--=20
>>Pengutronix e.K.                           |                             |
>>Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>>31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>>Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>
>
>
>>_______________________________________________
>>linux-arm-kernel mailing list
>>linux-arm-kernel@lists.infradead.org
>>http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>
>
>--=20
>Pengutronix e.K.                           |                             |
>Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



>_______________________________________________
>linux-arm-kernel mailing list
>linux-arm-kernel@lists.infradead.org
>http://lists.infradead.org/mailman/listinfo/linux-arm-kernel


--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--m0XfRaZG5aslkcJX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEElXvEUs6VPX6mDPT8C+njFXoeLGQFAmQmzMAACgkQC+njFXoe
LGSM3xAArhYnSSduYJpcQh5Xg+ZVIFNnMq8n+1DBjV5XggKG1igLrTMoOoBkSZmP
Y3DPR0uGP89RKj8Aqo9tZ6gtQdb2FlyF7i6j0ySwJMvA+i+0JBlkJiyluEgexaA5
8Ww8NrIKHyOPhCA2A1VMmtrF9y7bjpQCUch0mMnZofxbvvEd55kwSa8Tg6Suq6v+
jslt054rTtbUi/gzG1FeQCCdplK4YbuZtQOETqZnD1PZDJvb653BlRKGPVD7m88s
VGcOhBEkHbHeABSvR1gBsskKTvxSuCALiiObcgnG/d2g7orZjqddDt1+O+pRopv1
5V8RM/qGZpC4qGwXbWMSrh78TD8qXWNeVgWltHp0A21sAC8c6a/xZAnyX0hDnWwT
4gqCHNGBwK39p8KiAOVO8zg+vjyepvvlEYmUzrgRo1S2MVOFGVS+YrLBD5xgo4a0
k469UrSRvz9mpRQJp7sZdtGxxRPOH0F3+eX2PifFonsxkRDGjcD9oZeFeKrV8hnE
70ZhZcQOx9gqUTWK1tqaRihSHDrhEVuY6LjEWl0d/pBPAn2iNWAHcgNUBD5kOjlN
uRG1sVgCyMu9oqS73lkZd6m0YcMaSegDvsZTG0/KHgDByaIWuXOK2+8Z89Zw1Ys1
Fc3hva8KstGxAqlg+vTOjd80JUzGZrt0UplsxvpBHlVG5am1czE=
=ehiC
-----END PGP SIGNATURE-----

--m0XfRaZG5aslkcJX--


--===============8944832862424321528==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8944832862424321528==--

