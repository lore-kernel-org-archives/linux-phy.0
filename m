Return-Path: <SRS0=BhbR=OD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4B0EC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 13 Sep 2021 08:56:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6D4F160FBF
	for <linux-phy@archiver.kernel.org>; Mon, 13 Sep 2021 08:56:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6D4F160FBF
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QgiADHDxGheNpMR+TIbKnCwgz4l9AGDVgi5ZEeYM24I=; b=W8Swmei489tOpk8PXXlg+eCUjZ
	ebzkSt447M0Kr+SYIBI2ciG+892kRW9UZ5AKi+D49hRmI6Uh9IB709mwdDRPFZ0wXoFL68g6l03Yq
	JxkGxrtk6f0I7EeX9bXTLtJXn5Kp9BTgj9W9D+Ba+j4qjxuWwbXZwgtFrstkl2qsEpcUSlsQx9uD/
	gbO+VdxapsObluYGr5cs150tHA3WCjAAplk7xC8BCbakuM39FJ8cQpsq1E9xfM5hjrnemgB6W/zx+
	pBPFIiI3cQzCLYr6nV+X2lAg6gFsYbCBrDi9PsxD4U47zxdbvwwOWrz56nzY4CP+PHPtRtD2pODMZ
	M8Iu0rWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPhlM-000us4-JB; Mon, 13 Sep 2021 08:56:28 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPhiu-000tnZ-Og; Mon, 13 Sep 2021 08:53:58 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 5001B40003;
 Mon, 13 Sep 2021 08:53:52 +0000 (UTC)
Date: Mon, 13 Sep 2021 10:53:51 +0200
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
Subject: Re: [PATCH 01/22] clk: sunxi-ng: v3s: Make the ISP PLL clock public
Message-ID: <YT8RnzVqLebtPMD+@aptenodytes>
References: <20210910184147.336618-1-paul.kocialkowski@bootlin.com>
 <20210910184147.336618-2-paul.kocialkowski@bootlin.com>
 <20210913075417.ampb2jt4quftpqzj@gilmour>
MIME-Version: 1.0
In-Reply-To: <20210913075417.ampb2jt4quftpqzj@gilmour>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_015356_984115_78B7095E 
X-CRM114-Status: GOOD (  24.41  )
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
Content-Type: multipart/mixed; boundary="===============7879948007939657574=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7879948007939657574==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jDKl5hLx33khB+zy"
Content-Disposition: inline


--jDKl5hLx33khB+zy
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon 13 Sep 21, 09:54, Maxime Ripard wrote:
> On Fri, Sep 10, 2021 at 08:41:26PM +0200, Paul Kocialkowski wrote:
> > In order to reparent the CSI module clock to the ISP PLL via
> > device-tree, export the ISP PLL clock declaration in the public
> > device-tree header.
>=20
> You use clk_set_rate_exclusive in the ISP driver on the module clock so
> it should prevent what you're mentioning from happening.

It does, but then it breaks display support entirely (because the DRM
driver doesn't use clk_set_rate_exclusive).

The bottomline is that using the same PLL for both display and camera
easily results in conflicts.

> If it doesn't, then clk_set_rate_exclusive has a bug and should be
> fixed.
>=20
> Either way, using assigned-clock-parents is not a good solution here
> either, it only makes sure that this is the case when probe is run.

I'm not sure what could provide better guarantees. There is a clock
parenting API (in the clock framework) which may, but this implies
providing the parent clock to the driver which seems way out of line
since this is a platform-specific matter that should certainly not
be handled by the driver.

I also tried hardcoding the reparenting bit in the CCU driver, but
this felt less clean than doing it in device-tree.

What do you think?

> > Details regarding why the CSI module clock is best parented to the ISP
> > PLL are provided in the related commit.
>=20
> This is relevant to this commit too and "the related commit" is far too
> blurry when you consider the entire Linux git history.

Fair enough!

Cheers,

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--jDKl5hLx33khB+zy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmE/EZ8ACgkQ3cLmz3+f
v9GAXgf/WonaK8RTTtsz/x2Qh5N5DUQf8yAr5T68Jmx1Vo0uTy0bCi81Er1mcels
4i6fI+7VeDZT5eopMWHisHVtgCj0u9mACqHgNnH6izOCei7WU1I9NANeIqDDZeow
QVK16HSwIMpe5Be5UTu/tloyf8WGxcmEXTLyAhYSW3wynlegWFx7qe0GpSby7SCW
moBvtsHEQ9k3FlvvRtwnZEuUWuBFf5eWN/o0dHy69BL92MYCA0D4lDg0phCrZzru
ru41/xE+7fKLDTcOUCoVoKQX4Sh23iymP7dzk+YDbXjN8httuTe0HjZiC89sMDX/
NMsXWS3qM/Owy4KyJP7K4dfSLylwQQ==
=Rhfu
-----END PGP SIGNATURE-----

--jDKl5hLx33khB+zy--


--===============7879948007939657574==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7879948007939657574==--

