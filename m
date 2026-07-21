Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40973C4451C
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 08:44:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:Subject:To:From:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zffl12kyKsppHr5+jNRO9/G6//C5XGBm38rnCc0CBMY=; b=rU66yK7SbmAMl93FTH0Vg5TWHI
	GR03B577EaJLuBI3OHOVeg31vqL28vWYbqdvf0IWx4cZnBtYqe9P0k1qZP/vFuJrNWFDh7yJvBZy2
	mFRy86OWLvIfGFft7P9MPR/UdwbnXGusnouV+Uqj+AWXiSpGWS6jbeOQTg1CEoGK78WpzvpXrt+SN
	HNJoPSeC2bY6ZGeKOSZ8wwvAvHgC38rOUchY3WVe1KUQhk3V18Xb9gFnVXd87lo69hkT3pXhYSiAL
	3bFJAiudNfJCCssJkkLMWgeVISYayAI4bGt3P4lIzPD3KNC97Yh9Q3howqzmVmqZLYQlxEx4VenTd
	ZWGgXLEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm65c-00000008rr5-38Qm;
	Tue, 21 Jul 2026 08:44:36 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm65b-00000008rqs-1xOn
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 08:44:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with UTF8SMTP id 186AA4381E;
	Tue, 21 Jul 2026 08:44:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with UTF8SMTPSA id 6EF4C1F000E9;
	Tue, 21 Jul 2026 08:44:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784623475;
	bh=jJgmLQ0PBklWvKN4vrJrqNpLIPHESCWsAxcppX/aKF8=;
	h=Date:Cc:From:To:Subject:References:In-Reply-To;
	b=b5vUMsWE8LXO1BbsE/RXxg95MQrRpbp+hrUx+0yey9iYVJs+Hcuq0o/pnNWGVvQCn
	 tJtoGhFuelhDf3LdsTMtibnJiyMtxP2UZqi7/6NEttaaLzDsHESBdWQqegSRWHplIv
	 PTY/AJr25Bce1kM4WZKfhSR35Hw810JSsf5BXyyxZDrrPs8wi94I4HpfSjeT7ogwTq
	 cJP7ONP/Y1o4kg18p1qZbSkIE4GfnHb5J35mX9S33KjlyPJlC9sIVtKIPg13Etmvhd
	 CF34hG5xlo7YUhAGI339NB97tMyVAtYiznCcXUgi2ekI4FkCWNjyreQrkrigy15lH9
	 O9RV4ImFoVV5A==
Mime-Version: 1.0
Date: Tue, 21 Jul 2026 10:44:30 +0200
Message-Id: <DK44809N7Y8I.J2Z3U4N32H0Q@kernel.org>
Cc: <devicetree@vger.kernel.org>, <robh@kernel.org>, <conor+dt@kernel.org>,
 <vkoul@kernel.org>, <neil.armstrong@linaro.org>, <olteanv@gmail.com>,
 <linux-phy@lists.infradead.org>
From: "Michael Walle" <mwalle@kernel.org>
To: "Vladimir Oltean" <vladimir.oltean@nxp.com>
Subject: Re: [PATCH v3 phy-next 2/8] soc: fsl: guts: add a global structure
 to hold state
X-Mailer: aerc 0.20.0
References: <20260720133642.136324-1-vladimir.oltean@nxp.com>
 <20260720133642.136324-3-vladimir.oltean@nxp.com>
 <20260720135049.8AC231F00A3D@smtp.kernel.org>
 <20260720140139.dmgysphpse2jf3fi@skbuf>
 <20260720145724.acega7erguyufxd3@skbuf>
In-Reply-To: <20260720145724.acega7erguyufxd3@skbuf>
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
Content-Type: multipart/mixed; boundary="===============4698286257728657842=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============4698286257728657842==
Content-Type: multipart/signed;
 boundary=4d358136a3b66542fc9f6e397693250b807903e2552f8ebad5754366153e;
 micalg=pgp-sha384; protocol="application/pgp-signature"

--4d358136a3b66542fc9f6e397693250b807903e2552f8ebad5754366153e
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Vladimir,

On Mon Jul 20, 2026 at 4:57 PM CEST, Vladimir Oltean wrote:
> On Mon, Jul 20, 2026 at 05:01:39PM +0300, Vladimir Oltean wrote:
>> On Mon, Jul 20, 2026 at 01:50:49PM +0000, sashiko-bot@kernel.org wrote:
>> > [Severity: High]
>> > Will jumping to err_nomem cause a NULL pointer dereference?
>> >=20
>> > If the allocation of soc_dev_attr fails, the code now jumps to the err=
or
>> > handling path which dereferences soc_dev_attr to free its members:
>> >=20
>> > > @@ -269,6 +271,8 @@ static int __init fsl_guts_init(void)
>> > >  	kfree(soc_dev_attr->revision);
>> > >  	kfree(soc_dev_attr->serial_number);
>> >=20
>> > Since soc_dev_attr is NULL when this allocation fails, won't evaluatin=
g
>> > soc_dev_attr->revision and other members result in a kernel panic?
>>=20
>> yeah.
>>=20
>> I tried to be nice and play with the existing "err_nomem" and "err"
>> error handling labels, but the truth is that a single error cleanup path
>> is just an antipattern that doesn't scale as code becomes more complex.
>>=20
>> Instead of having a single error handling procedure which needs to
>> carefully fend off from various invalid contexts from all the goto
>> sites, the standard convention is to have an incremental set of labels
>> which undo just the setup that was done up to the goto jump site.
>>=20
>> I'll refactor fsl_guts_init() to use that convention for v4.
>
> While I was doing this refactoring, I noticed that this code path:
>
> 	if (soc_data)
> 		soc_uid =3D fsl_guts_get_soc_uid(soc_data->sfp_compat,
> 					       soc_data->uid_offset);
> 	if (soc_uid) {
> 		soc_dev_attr->serial_number =3D kasprintf(GFP_KERNEL, "%016llX",
> 							soc_uid);
> 		// no kasprintf() NULL return code check here, unlike
> 		// the rest of the code

It's a long time ago, but it seems to be designed be optional. In
that case a NULL pointer check was omitted, because nothing bad can
happen anyway. Either you'll free the string if !=3D NULL or you don't
free anything.

> 	}
>
> 	soc_dev =3D soc_device_register(soc_dev_attr);
> 	if (IS_ERR(soc_dev)) {
> 		ret =3D PTR_ERR(soc_dev);
> 		goto err;
> 	}
>
> proceeds with soc_device_register() even if fsl_guts_get_soc_uid() was
> able to get a soc unique id from the security fuse processor, but we
> fail to print that string to the soc_dev_attr->serial_number variable.
>
> I don't see anywhere mentioned in commit 786dde1e59d7 ("soc: fsl: guts:
> add serial_number support") that this would be intentional, so it can
> just as well be an omission.
>
> Is it OK if I replace the silent failure with a loud failure of the
> entire fsl_guts_init()? The code executes only if soc_uid is non-zero
> anyway.
>
> kasprintf() fails only for memory related reasons.

I don't have a strong opinion. If you ever get that error, something
is seriously bad anyway.

-michael

--4d358136a3b66542fc9f6e397693250b807903e2552f8ebad5754366153e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iKgEABMJADAWIQTIVZIcOo5wfU/AngkSJzzuPgIf+AUCal8xbhIcbXdhbGxlQGtl
cm5lbC5vcmcACgkQEic87j4CH/ieSgF+ICekJYVWEq9rBDY5VZlPzbSBak27dBhZ
NkdIeCS2Vd7RS4jfJ2na8hplH3Fu7kTuAX4hd5ZuNnKDx0T1mYH5EUpZu0N0lVyS
xrLYo7Lk/69G931Si9SJgvHYemQA8/J8+q4=
=xtHI
-----END PGP SIGNATURE-----

--4d358136a3b66542fc9f6e397693250b807903e2552f8ebad5754366153e--


--===============4698286257728657842==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============4698286257728657842==--

