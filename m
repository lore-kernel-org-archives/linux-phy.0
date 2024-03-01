Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E940EC5478C
	for <linux-phy@archiver.kernel.org>; Fri,  1 Mar 2024 17:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Xg1pTKHo+vFt5AMByd3Md3pC7n7W7yU3jgOW++L27mA=; b=f9nYew5RMmw05iATOOY00PAVJK
	4GpHegHne3FgO5fEsH5E2Ohr+b7uIWH59HFMjhOjq0LHe5WJ5grnkoJki838ju676D6IkeLImDJ0+
	t8YUgPrmNGmnQtI6RoRWmvVBpszY61hCFV75uM1W6tTl4Ksvb/WKtAnBMw7JTN28UEn7rPlmPJCqs
	vmYJMDVN6HvHgEEEBSFEn4RONTrUV4GrevJ9egzt/b8taTBSjITTS1X6A5rN+jQ/eIaSOQ+VCdu91
	GwvOdsCe6mvQ8Oza4YlSohuZfkpIW0PwCagBQ9u4m3JCLpQ5idZ39qXHwrG+xCYrcMzZe4QOy6F/A
	hasnLu5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg6Iw-00000001FtW-2khf;
	Fri, 01 Mar 2024 17:04:14 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg6Is-00000001Fs7-3SAb;
	Fri, 01 Mar 2024 17:04:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 4CA6BCE25AF;
	Fri,  1 Mar 2024 17:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2511BC433F1;
	Fri,  1 Mar 2024 17:04:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709312647;
	bh=ntg/h3YfMrrAKoiaoTzr/bTGfYlC6A2aWaV4uP698gA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JPkuACmru647DNGcDYTvby0hD3mN1wmRsWZsuvF8/L24NV4AIc50qHFycSlqIJ++F
	 MTEjePdla18Rn5y2FXtyixeN64j4wWumnsx2bQI2EIus+SX9hDsdbhIHF0kjhLlqjv
	 EZzuN2m8qUB3HK8Zxss8V4pCN4xa9tcDYvtBwp1Hju7ZqIDAat7qcBRPzAHIWDnbpY
	 e24cW7kgkuz3PSY1kb0LvMS7hhYsElZNuvfUGLIk8GAcEVNq0rU8R7gAS+FbVif9cL
	 6ullVxlWmmM37ocQkvuhOvnMPmIb1VdFOLPCIuj/MKp+oTKDY++KIOMCvTR59P5RVV
	 uMxCnBnae8piw==
Date: Fri, 1 Mar 2024 17:04:01 +0000
From: Mark Brown <broonie@kernel.org>
To: Sean Nyekjaer <sean@geanix.com>
Cc: vkoul@kernel.org, kishon@kernel.org,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	lgirdwood@gmail.com, u.kleine-koenig@pengutronix.de,
	Marc Kleine-Budde <mkl@pengutronix.de>, m.grzeschik@pengutronix.de,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, marex@denx.de,
	p.paillet@st.com, Olivier Moysan <olivier.moysan@foss.st.com>,
	l.goehrs@pengutronix.de, Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Martin =?iso-8859-1?Q?Hundeb=F8ll?= <martin@geanix.com>
Subject: Re: stm32mp1xx: use of reg11, reg18 and vdd_usb rails
Message-ID: <6d687bc2-3613-452d-b757-73b2a5eaf903@sirena.org.uk>
References: <4807FD7F-FEB5-4460-B1EB-3E2330864C8B@geanix.com>
MIME-Version: 1.0
In-Reply-To: <4807FD7F-FEB5-4460-B1EB-3E2330864C8B@geanix.com>
X-Cookie: Schizophrenia beats being alone.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240301_090411_235851_68C64D9B 
X-CRM114-Status: GOOD (  19.51  )
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
Content-Type: multipart/mixed; boundary="===============9073312592850774982=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============9073312592850774982==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6pjuoBPH3/xbL9Jn"
Content-Disposition: inline


--6pjuoBPH3/xbL9Jn
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 01, 2024 at 03:41:08PM +0100, Sean Nyekjaer wrote:

> With this device tree[1]. We have noticed during boot the reg18 is toggle=
d on and off
> without vdd_usb being turned off before reg18 as required in the data she=
et[2], section 3.8.1:
> VDD3V3_USBHS must not be present unless VDDA1V8_REG is present, otherwise=
 permanent=20
> STM32MP157C/F damage could occur. Must be ensured by PMIC ranking order o=
r with
> external component in case of discrete component power supply implementat=
ion.

The most expedient way of dealing with this might be to mark the 1.8V
supply as always on.  That's not ideal if you've got low power use cases
though.

We don't actually have a facility for forcing one supply to be on
whenever another is on - it's something I was expecting someone to have
a need for but it never came up as a runtime issue before, there is
support for keeping the voltage different between two supplies within a
limit which I'd expect would look similar.

> I can fix it by removing the vdd_usb from the usb33 supply[3]:
> The stm32-pwr.c is (to me) rather weird, as it exposes the usb33 as a reg=
ulator when in fact it=E2=80=99s a detection pin.
> Is that done on purpose?

If this is not a regulator then it quite simply should not be exposed
via the regulator API.  People keep abusing it rather than implement
reference counting....

> I would like introduce a error in the stm32-pwr.c if something is trying =
to power off reg18 with usb33 present?
> Would it be okay to return -EBUSY? Or even -ESMOKE? :)

You'd also need to consider what's going to happen with the error but
yes, if the driver knows it's unsafe in all circumstances it's probably
a good idea to prevent the operation.

--6pjuoBPH3/xbL9Jn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmXiCoAACgkQJNaLcl1U
h9AnHwf+I2SFGN+DHwqmpZxH0sp1k8d8KyKebq+O3IaQC9ReJGz7ZTgNFItcmdvz
n317vumMt98o+gEzSNavRAMPF6hClFvLEERMA/87RZYu0wOz0HFOWRDaCCgqHpqi
IaMmIztm/UPETw7pXjI0B+7g2fDV1E0b/FO67TZbGImzqAyR9V8Yls+JvwLtsFpq
bDFKfr+v5Z9iMe/1lXtvtQc/Q2cVBVr6sgt6RhdvZqen1bqPjRR0S1MFy7PewLCu
JW8lLiSIpfD0OO/6RqZe2vNjUgQp7SUlCKur9PCn1Gw7sIzHKO1se83HXPQa0Tr0
uB5YiaVB7NGDzjs0nJdMDt6cirZ75A==
=H4E/
-----END PGP SIGNATURE-----

--6pjuoBPH3/xbL9Jn--


--===============9073312592850774982==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============9073312592850774982==--

