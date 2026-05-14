Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89CDCCD4F39
	for <linux-phy@archiver.kernel.org>; Thu, 14 May 2026 21:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rbQ7/SrZwHSdev/SISX1YfxWjuWurlEcWmhzxpLwU+4=; b=LHXSdRDzo5Ag/k9ag/nnIEWEPW
	dkmfQMtfr9avFehMgITTuyOlrcWkaHqqI+dmphi2t3zo3m8NQCS8gzsiIz0mGt1ycI7fTnxGGcjbS
	qDIJqs3X24tr/FP+EpUXHP1LVMA9tOZAsLhHOQuX8UqZmmw2/0O31xMZHK7YkIbUw+HvdihqVfoNC
	2xFSz5RXXrVeh69CbNYn2YZ+6YfXQm/OBLtuAx+rZUjPR1Kv421ss+flFQfjD9NuPkEhaLSbAVWa+
	xqAochgygM8ecv/frd6ecOEXgD+I1WwxIftICjAHzeqx/nNB82NSlrHRNKsaweX4a2zI4oIxxu4zZ
	6/0T/lRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNdSO-00000006abS-0Uee;
	Thu, 14 May 2026 21:19:00 +0000
Received: from mx.nabladev.com ([178.251.229.89])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNdSL-00000006aaQ-0u43
	for linux-phy@lists.infradead.org;
	Thu, 14 May 2026 21:18:58 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 5894610D2B0;
	Thu, 14 May 2026 23:18:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1778793528;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 in-reply-to:references; bh=fWIwSSucsz37Y4TFwVU3mNclvHt2V4rfnNHQHEULdZA=;
	b=JIxhNPeCmXyziGyByiRcG07xZvIvWVrbCZ9A0Q2CqNJ81QOMUF3A2Kwctfb/0BAfBak3Rm
	1VKU2QkHsG4wqMb2ecFg3ZKEWS3Cm9BoQ2nNacQKqjfmW0/7pXFTsw6hTmC2wRyot5sOwC
	eLrIeaQKRbrPu1BzUqqVnWZ4Ihgn4vcGdOGEa2/iuFvd+K6gCQrMAfixQW007uDM3sCSjm
	C0KUsZDsgcLMjc7Dn2dcZ9oy1Uwm4Z3zYh960Mhx8WyMsUni/wy46N+Iav7bN2t73DSbcv
	pHHMOl+P1FV+QW8mpdhlbWPqCPWUnimMtOcSSuopnhhGnWOaXtb8kOuR5Iff1A==
Date: Thu, 14 May 2026 23:18:44 +0200
From: Pavel Machek <pavel@nabladev.com>
To: Claudiu Beznea <claudiu.beznea@kernel.org>
Cc: yoshihiro.shimoda.uh@renesas.com, vkoul@kernel.org,
	neil.armstrong@linaro.org, geert+renesas@glider.be,
	magnus.damm@gmail.com, prabhakar.mahadev-lad.rj@bp.renesas.com,
	linux-renesas-soc@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	stable@vger.kernel.org, Pavel Machek <pavel@nabladev.com>,
	Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Subject: Re: [PATCH] phy: renesas: rcar-gen3-usb2: Avoid long delay in atomic
 context
Message-ID: <agY8NAyCcHkhBvBv@duo.ucw.cz>
References: <20260514111300.2152386-1-claudiu.beznea@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20260514111300.2152386-1-claudiu.beznea@kernel.org>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260514_141857_470675_CB4A17B0 
X-CRM114-Status: GOOD (  19.27  )
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
Content-Type: multipart/mixed; boundary="===============1186984619500276898=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============1186984619500276898==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="y638fiKJVX+YDLWt"
Content-Disposition: inline


--y638fiKJVX+YDLWt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>=20
> The OTG PHY initialization sequence needs to wait for 20 ms at a specific
> step, as described in commit 72c0339c115b ("phy: renesas:
> rcar-gen3-usb2: follow the hardware manual procedure").
>=20
> Commit 55a387ebb921 ("phy: renesas: rcar-gen3-usb2: Lock around hardware
> registers and driver data") tried to address various problems in the
> rcar-gen3-usb2 driver and converted the mutex protecting HW register
> accesses to a spin lock, leaving, however, a long delay in the critical
> section protected by the spin lock. This may become a problem,
> especially on RT kernels.
>=20
> To address this, release the spin lock before sleeping for 20 ms as
> required by the HW manual and reacquire it afterwards. To avoid other
> threads entering the critical section and configuring the HW while the
> software is waiting for the OTG initialization to complete, introduce the
> otg_initializing variable alongside the otg_init_done completion. Any
> other thread trying to configure the HW while the OTG PHY initialization
> is in progress waits for the completion instead of immediately returning
> errors to PHY users. The IRQs were also disabled while waiting for the OTG
> PHY initialization to complete, as the interrupt handler may also apply HW
> settings.

Just... there has to be a better way.

> +++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> +static int rcar_gen3_phy_wait_otg_init(struct rcar_gen3_chan *channel,
> +				       unsigned long *flags)
> +{
> +	unsigned long timeout =3D msecs_to_jiffies(25);
> +	unsigned long ret =3D 1;
> +
> +	lockdep_assert_held(&channel->lock);
> +
> +	/*
> +	 * The OTG can be initialized only once and needs to release the lock
> +	 * and wait for 20 ms due to hardware constraints. Wait for the OTG PHY
> +	 * initialization to complete if another PHY executes configuration
> +	 * code while the OTG PHY is waiting. This avoids returning failures to
> +	 * PHY users.
> +	 */
> +	if (READ_ONCE(channel->otg_initializing)) {
> +		spin_unlock_irqrestore(&channel->lock, *flags);

This is not nice, passing flags between functions like this is a red flag.

You are only accessing otg_initializing under the spinlock. That means
that READ_ONCE is reduntant.

But AFAICT spinlock is only held over this function to protect
channel->otg_initializing access. I suspect correct answer here is
getting rid of spinlock over this function, and using
test_bit(BIT_INITIALIZING, ...) or something similar.

Best regards,
								Pavel


--y638fiKJVX+YDLWt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCagY8NAAKCRAw5/Bqldv6
8kIyAKCub4uUA4428i2iky/At/AjsQbCUQCdGEn8frZbIA7Svvvs4RzSMZ4QgA0=
=iyqe
-----END PGP SIGNATURE-----

--y638fiKJVX+YDLWt--


--===============1186984619500276898==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============1186984619500276898==--

