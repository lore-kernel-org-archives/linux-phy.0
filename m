Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7875C64ED8
	for <linux-phy@archiver.kernel.org>; Mon, 13 Feb 2023 14:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2mVZat5HvsuhsdGCMzXCN6XFA8/xlNUyp6Vxbbzw+YA=; b=LTtAPZDYr4isJ+NusZ4EE/EcCl
	0dnu6ls9JrLpcP1zzZzrVNkjrf0YkEIsZI6y9GVXeeCil5g0d1hqM+fHTeMMtMPyUOdA6236KqK1t
	Bt6Sh9ScWv2p4cftwLB5Qn5fWQ+6riAkmoyb47FsafYlbOPOZdJIqxlMPmJ4b8rGTIkMxMpzu+eJ9
	p6SWF5ixAiOBhRVstpy71gH0fXnCOqVdo5wqo8/vt7zO3Bbf5KASvtuKk70ZsPpfo/hIcXJzzhwKM
	F0KAw4Eyc8PMy4StleLjPa/OOjH9OSv1PIjGm6NIgN2Ht/8EU6JxpDYBJ1RJx+lJ5/nGg+RNv6SZ5
	ApbvwWFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRaIf-00F54B-3V; Mon, 13 Feb 2023 14:59:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRaIb-00F50X-I1
	for linux-phy@lists.infradead.org; Mon, 13 Feb 2023 14:59:23 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mgr@pengutronix.de>)
	id 1pRaIW-0006xv-Sq; Mon, 13 Feb 2023 15:59:16 +0100
Received: from mgr by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mgr@pengutronix.de>)
	id 1pRaIV-0000pa-BV; Mon, 13 Feb 2023 15:59:15 +0100
Date: Mon, 13 Feb 2023 15:59:15 +0100
From: Michael Grzeschik <mgr@pengutronix.de>
To: Fabrice Gasnier <fabrice.gasnier@foss.st.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	vkoul@kernel.org, kishon@kernel.org, mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com, error27@gmail.com,
	kernel@pengutronix.de
Subject: Re: [PATCH] phy: stm32-usphyc: add mdelay(1) to fix timeout on some
 machines
Message-ID: <20230213145915.GA20628@pengutronix.de>
References: <20230124204500.3502665-1-m.grzeschik@pengutronix.de>
 <ce8efcd8-fade-5328-8f21-3583e076b266@foss.st.com>
MIME-Version: 1.0
In-Reply-To: <ce8efcd8-fade-5328-8f21-3583e076b266@foss.st.com>
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
X-CRM114-CacheID: sfid-20230213_065921_627708_97A17D24 
X-CRM114-Status: GOOD (  34.06  )
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
Content-Type: multipart/mixed; boundary="===============3068132978429456524=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============3068132978429456524==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BXVAT5kNtrzKuDFl"
Content-Disposition: inline


--BXVAT5kNtrzKuDFl
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Fabrice,

On Wed, Feb 01, 2023 at 05:20:11PM +0100, Fabrice Gasnier wrote:
>On 1/24/23 21:45, Michael Grzeschik wrote:
>> An mdelay of 1 seems to be necessary on some machines, since
>
>Hi Michael,
>
>Could you precise on which board ?

It was reproducible on one of our lxa-mc1 boards.

>> the monsel status does not seem to be accurate. On rare occasions just
>> working with the phy after this pll check lead to no functional usb.
>
>Could you elaborate on the symptoms (provide some error logs) ?

The symptom was, that the dwc2 controller was not resuming from polling
on the soft reset done bit and so ran into a timeout. (dwc2: GRSTCTL_CSFTRS=
T(GRSTCTL_CSFTRST_DONE))

While debugging we found that the stm vendor uboot phy driver
was just adding an predefined wait of 200us after setting
the pll.

https://github.com/STMicroelectronics/u-boot/blob/v2021.10-stm32mp/drivers/=
phy/phy-stm32-usbphyc.c#L257

The comment for the PLL_INIT_TIME_US says that the value is based on the
possible max pll lock latency and an additional phy init delay:

  /* max 100 us for PLL lock and 100 us for PHY init */
  #define PLL_INIT_TIME_US	200

Reading the datasheet of the stm32mp1, the 100 us sure come from
tLOCK in Table 41. USB_PLL characteristics. (Page 159)

https://www.st.com/resource/en/datasheet/stm32mp157c.pdf


In the mainline Kernel we have the set of lock monitor
bits that are actually undefined in any register specs
we read so far.

  /* STM32_USBPHYC_MONITOR bit fields */
  #define STM32_USBPHYC_MON_OUT   GENMASK(3, 0)
  #define STM32_USBPHYC_MON_SEL   GENMASK(8, 4)
  #define STM32_USBPHYC_MON_SEL_LOCKP 0x1F
  #define STM32_USBPHYC_MON_OUT_LOCKP BIT(3)

So this will bring the maximum lock delay to its real
delay.

But for the additional phy init delay, we are unsure where the 100us are
coming from. So we could not really tell if the value makes sense at
all. The assumption was to increase the delay, just to make sure that
this will solve the issue for good.

>> With this short mdelay this issue was not reported again.
>>
>> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
>> ---
>>  drivers/phy/st/phy-stm32-usbphyc.c | 9 +++++++++
>>  1 file changed, 9 insertions(+)
>>
>> diff --git a/drivers/phy/st/phy-stm32-usbphyc.c b/drivers/phy/st/phy-stm=
32-usbphyc.c
>> index 5bb9647b078f12..c452a0caceb9fa 100644
>> --- a/drivers/phy/st/phy-stm32-usbphyc.c
>> +++ b/drivers/phy/st/phy-stm32-usbphyc.c
>> @@ -353,6 +353,15 @@ static int stm32_usbphyc_phy_init(struct phy *phy)
>>  		goto pll_disable;
>>  	}
>>
>> +	/* This mdelay seems to be necessary on some machines, since the
>> +	 * monsel status does not seem to be accurate. On rare occasions
>> +	 * just working with the phy after this pll check the usb
>> +	 * peripheral (e.g. on the dwc2) run into timeout issues and
>> +	 * leading to no functional usb. With this short mdelay this
>> +	 * issue was not reported again.
>> +	 */
>> +	mdelay(1);
>> +
>
>The USBPHYC provides two PHY interfaces:
>- PHY port#1 is for USBH
>- PHY port#2 can be assigned to USBH or DWC2.
>
>Adding some delay here, we'll hit twice this penalty (e.g. for USBH +
>DWC2 or dual USBH) on all MP1 (MP13 & MP15) platforms.
>
>Could you try to narrow down the issue by adding some debug log in:
>- stm32_usbphyc_phy_init
>- stm32_usbphyc_clk48_prepare

The whole issue is actually very easy to reproduce in the bootloader.
So we already mainlined this patch to the barebox bootloader.

So this patch is actually a port from the bootloader to make sure
that the kernel does not run into the issue as well.

I bet your team at st can figure out a more reasonable value for the
delay.

>>  	usbphyc_phy->active =3D true;
>>
>>  	return 0;
>

Regards,
Michael

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--BXVAT5kNtrzKuDFl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEElXvEUs6VPX6mDPT8C+njFXoeLGQFAmPqUD8ACgkQC+njFXoe
LGRr6Q/+P77giuDGOcFOOO4urFHBj+iwYzXExDDwquTl5ht4UdQO03TIE3UIWdOy
lcpgDxw7ZvKWZZE8KPUd4l7E44z5CCWbMFi+4d2f66+9RZOvgGd9lUpGHa6v8K7Q
69bUYsok7dS8wc7KiZSu4gWd6hs3wHQOqGpyc3ID9fJ5iC+ltNKYfcA7kMOdDP63
njcygRrkYoDQjusZojyreZSI/4zvL41CqdzglRCE6WFXIWc/bjtVMuaLCh8Y1PI0
ah3Dtkjum2SSXBP0qCOzzT+6P7FeI++ky5s3Yg9oFmtR5/A47Y8aX4UU9zZwu24y
WwEzR79th91GewyAPPa2XfJAlZocw3EG5recDkwETJdbopcqu9qbvvMx3u/GiE+C
TOSPQx53wol/RovP2dO6Mi6L4TKJSyVI0CNuPy25jJtwJBeHvFwyP8gS15+SkIYS
tDz3nxeswx+VdsPVk5+EaqbFgiPC7A5FoA39+jvJclWfmJaxOjaDddFCFZFBxXQI
gnoXtZy7TUna5TfwC4AjlbZ1ElgchQGtwTvEI+8O4CdP53qGzE/2+YbXnz6hfM7s
4O9EC4R41Tl2yejF1W5dIMWB8H5r62FhsmqDtp6zWu9eX9eh+TcdNs4gY73kN2ox
OgWsMk3PnX8MXJDAC/I0AVJQ3hxla3xyN4PTEhAEPLPx5yH1dKs=
=9ojl
-----END PGP SIGNATURE-----

--BXVAT5kNtrzKuDFl--


--===============3068132978429456524==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============3068132978429456524==--

