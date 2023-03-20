Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5484C7618A
	for <linux-phy@archiver.kernel.org>; Mon, 20 Mar 2023 12:02:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E+rnXWqa2OiH0jcg7bKS/db8yc1U+sgnsfTlSMWog3Y=; b=w8KeaGE7lTPX9WP44ei2a/OIeT
	iK4uzmXC0vU6AUzs/Y3VQxt27gLdFR2LChgPCnZfjSak5u2AHhRqZzOfwBh4pK8c6PZ2v3DAJhyhR
	gz0ESim/a5Y83DX/1wXqfdA+QTCI6BQcGz/ERweG4J8BXuxrttxxc4IyECMzuww7NIifPCa0xTg9l
	pTehNqjxvzWA6QSWSCspd5Xm9wynReFgkM2AapEVkuaLIxuARIoltqCjQp0LFebK/5IRfUeGlwa83
	qtx0uaZ+tU8P8pPLfyl3+QyrPuJaKtlFfLSWDENogYfMBVdV/MdoXJzXJ8WeF84pJfQN0xwGsvet0
	kF8wfn/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peEDR-008vGd-1d;
	Mon, 20 Mar 2023 12:02:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peEDO-008vFc-1z
	for linux-phy@lists.infradead.org;
	Mon, 20 Mar 2023 12:02:16 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mgr@pengutronix.de>)
	id 1peEDL-0001VQ-Hw; Mon, 20 Mar 2023 13:02:11 +0100
Received: from mgr by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mgr@pengutronix.de>)
	id 1peEDK-0002MP-3H; Mon, 20 Mar 2023 13:02:10 +0100
Date: Mon, 20 Mar 2023 13:02:10 +0100
From: Michael Grzeschik <mgr@pengutronix.de>
To: Fabrice Gasnier <fabrice.gasnier@foss.st.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	vkoul@kernel.org, kishon@kernel.org, mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com, error27@gmail.com,
	kernel@pengutronix.de, linux-stm32@st-md-mailman.stormreply.com,
	amelie.delaunay@foss.st.com
Subject: Re: [PATCH v2] phy: stm32-usphyc: add 200 to 300 us delay to fix
 timeout on some machines
Message-ID: <20230320120210.GA26652@pengutronix.de>
References: <1869feff-06b1-17f1-4628-b433c858ad79@foss.st.com>
 <20230227151318.1894938-1-m.grzeschik@pengutronix.de>
 <27b9e057-bdd7-b4e6-445c-8da700423600@foss.st.com>
 <20230310104438.GB7352@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20230310104438.GB7352@pengutronix.de>
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
X-CRM114-CacheID: sfid-20230320_050214_653530_2664B9F7 
X-CRM114-Status: GOOD (  18.33  )
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
Content-Type: multipart/mixed; boundary="===============2860202301174634890=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2860202301174634890==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5vNYLRcllDrimb99"
Content-Disposition: inline


--5vNYLRcllDrimb99
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Gentle Ping!

On Fri, Mar 10, 2023 at 11:44:38AM +0100, Michael Grzeschik wrote:
>Hi Fabrice,
>
>On Tue, Feb 28, 2023 at 06:28:21PM +0100, Fabrice Gasnier wrote:
>>On 2/27/23 16:13, Michael Grzeschik wrote:
>>>An minimum udelay of 200 us seems to be necessary on some machines. After
>>>the setup of the pll, which needs about 100 us to be locked there seem
>>>to be additional 100 us to get the phy really functional. Without this
>>>delay the usb runs not functional. With this additional short udelay
>>>this issue was not reported again.
>>>
>>>Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
>>>
>>
>>Hi Michael,
>>
>>Thank you for the updates,
>>
>>Fell free to add my:
>>Reviewed-by: Fabrice Gasnier <fabrice.gasnier@foss.st.com>
>
>Thanks!
>
>Through which tree will this be picked?
>Will it be possible to add this to v6.3?
>
>Regards,
>Michael
>
>>>---
>>>v1 -> v2: - changed the mdelay to udelay_range(200, 300), like suggested=
 by fabrice
>>>          - moved the delay to pll enable so it will only be triggered o=
nce
>>>
>>> drivers/phy/st/phy-stm32-usbphyc.c | 3 +++
>>> 1 file changed, 3 insertions(+)
>>>
>>>diff --git a/drivers/phy/st/phy-stm32-usbphyc.c b/drivers/phy/st/phy-stm=
32-usbphyc.c
>>>index 5bb9647b078f12..dd469f57fba7eb 100644
>>>--- a/drivers/phy/st/phy-stm32-usbphyc.c
>>>+++ b/drivers/phy/st/phy-stm32-usbphyc.c
>>>@@ -317,6 +317,9 @@ static int stm32_usbphyc_pll_enable(struct stm32_usb=
phyc *usbphyc)
>>>
>>> 	stm32_usbphyc_set_bits(pll_reg, PLLEN);
>>>
>>>+	/* Wait for maximum lock time */
>>>+	usleep_range(200, 300);
>>>+
>>> 	return 0;
>>>
>>> reg_disable:
>>
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

--5vNYLRcllDrimb99
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEElXvEUs6VPX6mDPT8C+njFXoeLGQFAmQYSz8ACgkQC+njFXoe
LGRbkQ//eOR236b0+6LMuH5ek/HAf47UMfPZPStT3U8amYAgfBQmECQnWvijfGYF
alJYCzkIoqvWu30YjpG4Ka1d2eQQFOhU/kcz6JFMYC4knqKt+MIBKb1M60koiHib
5UHp89WzGM9W33INJGbl7WHceMRVXyeWNq8vM89CkOzIw7ZdaUrDScNsThUyi0Cb
Y9+OjfL3DPIcc+K2g6zi00P9Yt0PLZS5euD6aATqoHFAV7SsmTMUMiNH82/P7/P8
PoM3mIqk1O0qOGPsnqAad02cKVYk6rgXWEow5ZRwbpMwQqZL53ZmyPgaoMOU8+nU
iRxI/n6WAm0+pWOq/AvGHj2dsHE+kMa2aQL/smod7kh77xhxA5RFLy+VZRd7LJXE
NySradjZD3CJ9xenTfdDi/QoDqiC4bTTV6hqdztl4OoMNj3G15h9qj5+gpsiNM5W
JTMBYCqaDMc2S2Ja/MUFziAXiky+TFxDzsl7VV9aUR4I9lGZUcBYn20X2C/qnaRx
gbj+uBsw2yUn+mmFTqqxxxwEo7BLrqQSHXv5XvgjAtTbrRdBuAvPS5sSdZj1T9Vj
mvFsYG7CkKo2EIOr4dNnImtFkyYzWnD16FJbxVpHluyJla/OXpwrBD13UFXEs220
KN5zxM6YTp4sSzOE7a67xTaBNBZVwLa2HzbL1sfq6hEMHd06z8k=
=nVhr
-----END PGP SIGNATURE-----

--5vNYLRcllDrimb99--


--===============2860202301174634890==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2860202301174634890==--

