Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32E62C64EC4
	for <linux-phy@archiver.kernel.org>; Fri, 10 Mar 2023 10:44:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DDsVQF9swjpNjRhSaJ5CSegu5MMdiLn66AYLa6/lTnc=; b=F22HrrT2C5foKrCPZt6tirskun
	ysm98q7SKQbGXPn7fo+8U9ixuzc5z7pPSSvQET4I3eXJH2l/OcJfyrXqvDYxXAPpTuh0AkjoBpL+O
	UZtppxzfiiQ3zVoesQi/iTBZwqFw8svxjdWMQuYiQUrm4PwFLVeTaKSri1bp71+fLZZhwPGOCu8Jl
	FhqqUWtEnXKzXreu32JP+sCaEkoq3SLkAx1QB8pO9qjMO1p7oHDgJKG6WVQ8w9sn00wj7FKTd3K0/
	Qnx8tAPxxLonhiwju/6HLsvDq0hKeXB9dtEqTnBdERvnTGZ/RmTNHhefzS5DWmDuo2sCt0IOlQv7p
	ki6/D5Bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paaEz-00EERl-LG
	for linux-phy@archiver.kernel.org; Fri, 10 Mar 2023 10:44:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paaEw-00EEPu-LV
	for linux-phy@lists.infradead.org; Fri, 10 Mar 2023 10:44:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mgr@pengutronix.de>)
	id 1paaEp-00071Q-Df; Fri, 10 Mar 2023 11:44:39 +0100
Received: from mgr by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mgr@pengutronix.de>)
	id 1paaEo-0001df-34; Fri, 10 Mar 2023 11:44:38 +0100
Date: Fri, 10 Mar 2023 11:44:38 +0100
From: Michael Grzeschik <mgr@pengutronix.de>
To: Fabrice Gasnier <fabrice.gasnier@foss.st.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	vkoul@kernel.org, kishon@kernel.org, mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com, error27@gmail.com,
	kernel@pengutronix.de, linux-stm32@st-md-mailman.stormreply.com,
	amelie.delaunay@foss.st.com
Subject: Re: [PATCH v2] phy: stm32-usphyc: add 200 to 300 us delay to fix
 timeout on some machines
Message-ID: <20230310104438.GB7352@pengutronix.de>
References: <1869feff-06b1-17f1-4628-b433c858ad79@foss.st.com>
 <20230227151318.1894938-1-m.grzeschik@pengutronix.de>
 <27b9e057-bdd7-b4e6-445c-8da700423600@foss.st.com>
MIME-Version: 1.0
In-Reply-To: <27b9e057-bdd7-b4e6-445c-8da700423600@foss.st.com>
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
X-CRM114-CacheID: sfid-20230310_024446_722711_8D2FCE5B 
X-CRM114-Status: GOOD (  23.39  )
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
Content-Type: multipart/mixed; boundary="===============2600682190384073700=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2600682190384073700==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Fba/0zbH8Xs+Fj9o"
Content-Disposition: inline


--Fba/0zbH8Xs+Fj9o
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Fabrice,

On Tue, Feb 28, 2023 at 06:28:21PM +0100, Fabrice Gasnier wrote:
>On 2/27/23 16:13, Michael Grzeschik wrote:
>> An minimum udelay of 200 us seems to be necessary on some machines. After
>> the setup of the pll, which needs about 100 us to be locked there seem
>> to be additional 100 us to get the phy really functional. Without this
>> delay the usb runs not functional. With this additional short udelay
>> this issue was not reported again.
>>
>> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
>>
>
>Hi Michael,
>
>Thank you for the updates,
>
>Fell free to add my:
>Reviewed-by: Fabrice Gasnier <fabrice.gasnier@foss.st.com>

Thanks!

Trhough which tree will this be picked?
Wil it be possible to add this to v6.3?

Regards,
Michael

>> ---
>> v1 -> v2: - changed the mdelay to udelay_range(200, 300), like suggested=
 by fabrice
>>           - moved the delay to pll enable so it will only be triggered o=
nce
>>
>>  drivers/phy/st/phy-stm32-usbphyc.c | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/drivers/phy/st/phy-stm32-usbphyc.c b/drivers/phy/st/phy-stm=
32-usbphyc.c
>> index 5bb9647b078f12..dd469f57fba7eb 100644
>> --- a/drivers/phy/st/phy-stm32-usbphyc.c
>> +++ b/drivers/phy/st/phy-stm32-usbphyc.c
>> @@ -317,6 +317,9 @@ static int stm32_usbphyc_pll_enable(struct stm32_usb=
phyc *usbphyc)
>>
>>  	stm32_usbphyc_set_bits(pll_reg, PLLEN);
>>
>> +	/* Wait for maximum lock time */
>> +	usleep_range(200, 300);
>> +
>>  	return 0;
>>
>>  reg_disable:
>

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--Fba/0zbH8Xs+Fj9o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEElXvEUs6VPX6mDPT8C+njFXoeLGQFAmQLChUACgkQC+njFXoe
LGSckg//ZonCarFQiaZdDZZ8dqltO/AmRY2Lu1k1HjsKZM7ROzxjjapPHtuMiuI2
ZJGFrY/3OsHCT8MYlVKSvKLkzyvpnJ/y6aKmg65o2mou6n6ikFkg0Run9XbZypLL
3O5/PZxg9p+y/FZSuoTMSHOgtD30kCxgnFQJd9UNjJMFS9IEha6Kyjy4lFuMnamA
hE6yKxUH3g6rRa2mTYG9uCVHHEVrWuyItZ9v9Br8RxZiOATK1i1BzwxSGBCBxu/B
iRPpjLtybUBuDkmkvQ5p+koYr6ZxrORxynlYyDWvKkEo+xoEXoOuXpSRv5P3zM1S
f3m9izPLSOpFxQmGMT2iShdkawetuIQ6YFgTIAVBOIsP23KKEsa5r2DKQ2105KdV
WmBWxjbhnRPfNWVyDj85xnHGGn+PO2RgeiFIVhIevCsEm6G8M2REqb4Oy/yULMe5
cyCn65ZhMxsNxg80UEvOZSYnvkeDatYqi4Y68hgATCQku3U6nr9GJHWFSxax3lGC
QydjjYwuyrRFj8R0pdJ1q+Tae3k9FMK7tIeZKbrTn3wJFE/QcNLWlrYcHwp2fVtp
qVea+pLmA5T/rKZRV8IHOnh7yWu8BLVhnM0MslypbFN7Dwj3iNIagwF6E3UUzX+h
EcyX71uL+FIQeomN+B6CBLgP/NVAbg0mfBfDq0y82zX+BBKqCvo=
=GkzB
-----END PGP SIGNATURE-----

--Fba/0zbH8Xs+Fj9o--


--===============2600682190384073700==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2600682190384073700==--

