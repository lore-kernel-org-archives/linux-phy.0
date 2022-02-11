Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80CB8C433F5
	for <linux-phy@archiver.kernel.org>; Fri, 11 Feb 2022 15:41:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Gt0fwryTuB4ENRvnAStqVVnab+ueIlPN27Bcvbe0fsA=; b=pAL3kTxptFRdCSO9cNunOaq50K
	P1I2pGX/tu6e41uB7f4eByomZXlo+cj7OP0stsu1+yMsiDtCtsrvRFJFGNCD4Q8gqPnza1fFQYy0n
	fFc/cm1kWZ06ks1Z3V/6FYwwE3CNJj27c7AxAsVtMXUg/UX8g1Rv259JizRlpf7hJRfAFNfRYnJ1W
	An1c2nc3WeIiBoNt+NMVKAaMbwQdqegHGO5KWts8qLKsFqhN5Tv7KtTJ9jns7Tc5sAplXT6pAvPf2
	Wl3ifU0ilbMfLNcJsXFqiMQRD0JCd7w9W80IOCDjkPiaANTtLwnoXyBBOwfzk8dwU7LxvSt1cnlCQ
	DXpKyDSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIY2t-007q6l-WB; Fri, 11 Feb 2022 15:41:16 +0000
Received: from relay8-d.mail.gandi.net ([2001:4b98:dc4:8::228])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIY2f-007q2M-17; Fri, 11 Feb 2022 15:41:03 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id 616F21BF204;
 Fri, 11 Feb 2022 15:40:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1644594058;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Qp1uvSCll9e+XoqAo0K2+ZnWbyAAKcHSRy3v4H7ll4g=;
 b=l8WQv/CAyMdPT6fSHDJ3FxJ6V8xVqjZxq7jsfX0VRcHye3b8E5WRDWp3ivSulUGKIdWp5k
 x06WdR4HOSoPNhn/wo4DYc6FmnxRA9JR2hms7/1UpjETMSDN8yANV9aaiPY825ZPA/VGBf
 dxC/tMApm6e+RjnAw2EQwCAu/nWicZz2nhlC6s4Elx1UZ4BhGjXs7XRPRg5W1stpj5DmR1
 aMVIHtYA3tD2jmQ80mnbmW5U5ckKyivbTElJs49T+8IOwYdfneRn2vmR//B8H/qpxCwaM6
 p3dIdpL+CUtFnwp1UO3IHXM7TDF7MBvr0fLJ/dG0D0Izof12iQvkPPh4CLX3+w==
Date: Fri, 11 Feb 2022 16:40:55 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Maxime Ripard <maxime@cerno.tech>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-staging@lists.linux.dev,
 Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2 32/66] media: sun6i-csi: Add capture state using vsync
 for page flip
Message-ID: <YgaDhxYLciLUm5ks@aptenodytes>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-33-paul.kocialkowski@bootlin.com>
 <20220209092642.hhppmrrekj7zrorj@houat>
MIME-Version: 1.0
In-Reply-To: <20220209092642.hhppmrrekj7zrorj@houat>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_074101_543583_6E451D76 
X-CRM114-Status: GOOD (  23.12  )
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
Content-Type: multipart/mixed; boundary="===============7178691976600340935=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7178691976600340935==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="EeBCw5B6aMoynUBc"
Content-Disposition: inline


--EeBCw5B6aMoynUBc
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed 09 Feb 22, 10:26, Maxime Ripard wrote:
> On Sat, Feb 05, 2022 at 07:53:55PM +0100, Paul Kocialkowski wrote:
> > This introduces a new state structure and associated helpers for
> > capture, which handles the buffer queue and state for each submitted
> > buffer.
> >=20
> > Besides from the code refactoring, this changes the page flip point
> > to vsync instead of frame done, which allows working with only
> > two buffers without losing frames. This is apparently a more
> > appropriate thing to do with this controller.
>=20
> Why? What issues were you seeing before, how does using a separate
> interrupt addresses it, and what makes you think it's more appropriate?

I'll try to update the commit log to address this, thanks.

One of the main issues that the rework is trying to address is the way
that double buffering is handled, which currently requires up to 3 buffers
to work, due to how buffer configuration is implemented. In particular,
it's synchronizing to the frame done interrupt which seems to hit after
scanout of the next frame begins, so page flips are always delayed by one
frame.

This is currently solved by setting two buffers when starting the stream:
the first one is set before vcap is enabled and seems to be sampled when the
first frame scan begins and the second one is set after and stays until the
second vsync hits, at which point it becomes the current active buffer.
This way no frame is lost but 3 frames are needed to start.

This proposal changes the sync point to vsync which allows page flipping to
happen for the next frame, thus only 2 buffers are required.

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--EeBCw5B6aMoynUBc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmIGg4cACgkQ3cLmz3+f
v9FBkgf/XeGRgZ1V/7sJ0ZcawpYN5TgUP8CYJqD7lrdYPo8dqJyKNln/wFou2iXQ
vA2rfXQIumoeMEGStvu3RfXFHhEXF3zrScW/DYNfSlhSM0+fKWVhQrJfU8Lsvet2
Zm5qqm5BM+8KjafzCLQWmJj8hXWB1J5goZprtlrlxbSNKFQhaeFE+mrLbYjoMMh0
alNjgE5LeQC2/FmgS1bm9j+7+Zl5c0v5WZU7/QS/i/X7xSgN4oyj3rwhVD1cJ2c/
tq7aNj4H6Bxmtu4U4EgDt4QOGiRqLS/LE7TzV0/w6LfVlj4h9vn5SS0TOPwNWFIL
/t/fdcrPLRjJFc8zm7lRGew/xxd83g==
=qgUb
-----END PGP SIGNATURE-----

--EeBCw5B6aMoynUBc--


--===============7178691976600340935==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7178691976600340935==--

