Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D380C79FA1
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 10:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=79zYuKQLmN+JmljF8HVlawigTnm7XSZD6sAfVW1CsF4=; b=AIYAppURLQxuFcs+8M+FSbAoWG
	KikjRf22otoOlerbmhpJnY0kG7Y4SIRF7kvms5oFI3LXn1Dg8pkl9zWsVPQGSmn6uBMca1OSIg2Be
	zeLK03wukPrQXfS9iG9ZXYeU0zewGEqTOZTWN946H4unO3bSpU4/9Pyh1A6yr56WAd6wYIe9MAmvd
	kgBvKglDwMWZ9x4avhsrUI9P2QBVbO2FMK4ztkPkbCHjKznHf0EVX4mrdmcvfv6yRqcT8ZXQcELRl
	FkPhDNi5XzMonMRn48EUjR6MSIl73MOy2V4YNq7LNEPQ4W2RxCJReXniLuLfOe+12XOMUJ5IkBsB5
	leYU6Oag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3tRi-00000008pDY-09SB;
	Tue, 08 Sep 2026 10:52:58 +0000
Received: from mx.nabladev.com ([178.251.229.89])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3tRe-00000008pCd-2iEz
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 10:52:56 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 1269811DBE5;
	Tue, 08 Sep 2026 12:52:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1788864765;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 in-reply-to:references; bh=Qm+/RmSsjqDSftrpb2Fdvmu04WuqU6msZ94XRN/Z0m0=;
	b=KAQsciz0rHTUA8g2LH0r0l+PxwVd9Htz9ANOG2gGJVJZmtPLPa2bnBukwX1wiICmjmEa8z
	zsb0cOQ7FfSFia/BTyCdiCrnX8FBXMNoGFyDywzBRXO+2ZehxB2wgID5Rx0tO053uHIYaX
	0a6aeOe/UaET4ztukUmw0D+G9/rG6v8GMKYRSkmFefCmPNNbudmjtIqdjWegFyVHEEa9qU
	ssQjW7bzENSxEpVkMMU4G1YfYDDOCFBiJvYSo18i/Z+q4joS/cwKlnTxThEnhW+5fMaA1/
	W5BfRqZxwdRHW2kYBDwvpRgFoBs3QqZNh/ln+x23Uqf1K/QmIJB3wIZwhlyYNA==
Date: Tue, 8 Sep 2026 12:52:41 +0200
From: Pavel Machek <pavel@nabladev.com>
To: Claudiu Beznea <claudiu.beznea+renesas@tuxon.dev>
Cc: yoshihiro.shimoda.uh@renesas.com, vkoul@kernel.org,
	neil.armstrong@linaro.org, geert+renesas@glider.be,
	magnus.damm@gmail.com, prabhakar.mahadev-lad.rj@bp.renesas.com,
	claudiu.beznea@tuxon.dev, linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	stable@vger.kernel.org, Pavel Machek <pavel@nabladev.com>,
	Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Subject: Re: [PATCH v5] phy: renesas: rcar-gen3-usb2: Avoid long delay in
 atomic context
Message-ID: <ap_o-T5GGMFGYZ4v@duo.ucw.cz>
References: <20260716183246.3183877-1-claudiu.beznea+renesas@tuxon.dev>
MIME-Version: 1.0
In-Reply-To: <20260716183246.3183877-1-claudiu.beznea+renesas@tuxon.dev>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_035254_927668_80511240 
X-CRM114-Status: GOOD (  20.84  )
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
Content-Type: multipart/mixed; boundary="===============5360701606693515145=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5360701606693515145==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="AG7eLZ6YP0P+pQxb"
Content-Disposition: inline


--AG7eLZ6YP0P+pQxb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>=20
> To address this, release the spin lock before sleeping for 20 ms as
> required by the HW manual and reacquire it afterwards. To avoid other
> threads entering the critical section and configuring the HW while the
> software is waiting for the OTG initialization to complete, introduce the
> otg_initializing variable alongside the otg_init_done wait
> queue. Any

This is quite complex. How is this solved in mainline?

> To avoid failures when multiple PHYs call struct
> phy_ops::rcar_gen3_phy_usb2_init() simultaneously, and the PHY responsible
> for initializing the OTG either fails or deinit quiqly and another PHY
> takes over the PHY init role), the code waiting for the
> channel->otg_init_done wait queue retries up to NUM_OF_PHYS times.

And more complexity.

Example of the code is quoted below, and we are returning EBUSY to
userspace if it tries to change role at the wrong time. Not great.

As far as I understand, the initialization on needs to be done
once. Instead of exposing /sys interfaces before hardware is ready,
and then doing complex dance when /sys is accessed, could we
initialize hardware in rcar_gen3_phy_usb2_probe or something?

Looking at the code:

        /* If current and new mode is the same, this returns the error */
        if (cur_mode =3D=3D new_mode)
                return -EINVAL;

this should probably just return success? (EINVAL is certainly wrong
error code here.)

Best regards,
								Pavel

> +++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> @@ -392,26 +408,58 @@ static ssize_t role_store(struct device *dev, struc=
t device_attribute *attr,
>  	struct rcar_gen3_chan *ch =3D dev_get_drvdata(dev);
>  	bool is_b_device;
>  	enum phy_mode cur_mode, new_mode;
> +	int retries =3D NUM_OF_PHYS;
> +	unsigned long flags;
> +	int ret =3D -EIO;
> =20
> -	guard(spinlock_irqsave)(&ch->lock);
> +	spin_lock_irqsave(&ch->lock, flags);
> =20
> -	if (!ch->is_otg_channel || !rcar_gen3_is_any_otg_rphy_initialized(ch))
> -		return -EIO;
> +	if (!ch->is_otg_channel)
> +		goto unlock;
> +
> +	while (retries-- && ch->otg_initializing) {
> +		spin_unlock_irqrestore(&ch->lock, flags);
> +
> +		ret =3D wait_event_timeout(ch->otg_init_done, !ch->otg_initializing,
> +					 USB2_OTG_INIT_TIMEOUT);
> +		ret =3D ret ? 0 : -ETIMEDOUT;
> +		if (ret && !retries)
> +			goto exit;
> +
> +		spin_lock_irqsave(&ch->lock, flags);
> +	}
> +
> +	/* If another thread started a new initialization just return -EBUSY. */
> +	if (ch->otg_initializing) {
> +		ret =3D -EBUSY;
> +		goto unlock;
=2E..
> @@ -1007,6 +1226,7 @@ static int rcar_gen3_phy_usb2_probe(struct platform=
_device *pdev)
>  		return ret;
> =20
>  	spin_lock_init(&channel->lock);
> +	init_waitqueue_head(&channel->otg_init_done);
>  	for (i =3D 0; i < NUM_OF_PHYS; i++) {
>  		channel->rphys[i].phy =3D devm_phy_create(dev, NULL,
>  							channel->phy_data->phy_usb2_ops);



--AG7eLZ6YP0P+pQxb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCap/o+QAKCRAw5/Bqldv6
8hBeAJ9DOdo6XuAz5OO4jIKpmONe8cgcKACeNVF5TPhlbIEtTN9b7mWO2f+b4IU=
=QxD/
-----END PGP SIGNATURE-----

--AG7eLZ6YP0P+pQxb--


--===============5360701606693515145==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5360701606693515145==--

