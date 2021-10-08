Return-Path: <SRS0=HpPM=O4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 39929C433F5
	for <linux-phy@archiver.kernel.org>; Fri,  8 Oct 2021 12:56:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0301E61037
	for <linux-phy@archiver.kernel.org>; Fri,  8 Oct 2021 12:56:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0301E61037
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9C2Ru1WV/AXf2WZ0/6rPSG8dkjLLeGKLQ+9004tV8Aw=; b=rBECZMbd3mtC2CkQYvK9Xdwbaj
	9gm3xJwv0ra3AtN1rTqhU7oPBDuZSTB3WAoM9eDfXCIjPO77k+nLE3sSFB1DR0oI9/icKnWC6ykN4
	Bj05DrWVB8bGHoPpLdP1HmfF1o3LeiGIDAtAjs+oIoq7ceIpY1HJtiEfYYN/gPEzhx2PZ9Mn6tDBm
	Pp24BUiDR0EOAw5pH/oDADpzPpvN5fSMsMhdMXzxh9Ek9/OgpHBC0zb4JEyz+C637QnfSWm7fjpSt
	RuxK3EzTStTsZSqwOt2oF0mBNUDY4hKEY1c30VhhxIvzpeHop0+Hv0QOhN9tPWzYKPV29ABFBW4T5
	+32l/z5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYpPv-002pHM-It; Fri, 08 Oct 2021 12:56:03 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYpPs-002pG8-Fm
 for linux-phy@lists.infradead.org; Fri, 08 Oct 2021 12:56:02 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 11D2D20000F;
 Fri,  8 Oct 2021 12:55:54 +0000 (UTC)
Date: Fri, 8 Oct 2021 14:55:54 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Pratyush Yadav <p.yadav@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Nikhil Devshatwar <nikhil.nd@ti.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 2/6] phy: cdns-dphy: Add Rx support
Message-ID: <YWA/2o/Df34VDcpp@aptenodytes>
References: <20210902185543.18875-1-p.yadav@ti.com>
 <20210902185543.18875-3-p.yadav@ti.com>
 <YUMa/ocoQ9l3JDe6@aptenodytes>
 <20210917172809.rjtf7ww7vjcfvey5@ti.com> <YVapVLnGfSBZCDTY@matsya>
 <YV463gUvYauhDP/l@pendragon.ideasonboard.com>
 <20211007121436.jkck2cue5zd3rys4@ti.com>
 <YWAdKTvYzF58oyU/@pendragon.ideasonboard.com>
MIME-Version: 1.0
In-Reply-To: <YWAdKTvYzF58oyU/@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211008_055600_847540_107E7D15 
X-CRM114-Status: GOOD (  39.31  )
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
Content-Type: multipart/mixed; boundary="===============5051331095793162439=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5051331095793162439==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="L5dYWIzivIAnCCEH"
Content-Disposition: inline


--L5dYWIzivIAnCCEH
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri 08 Oct 21, 13:27, Laurent Pinchart wrote:
> Hi Pratyush,
>=20
> On Thu, Oct 07, 2021 at 05:44:38PM +0530, Pratyush Yadav wrote:
> > On 07/10/21 03:10AM, Laurent Pinchart wrote:
> > > On Fri, Oct 01, 2021 at 11:53:16AM +0530, Vinod Koul wrote:
> > > > On 17-09-21, 22:58, Pratyush Yadav wrote:
> > > > > On 16/09/21 12:22PM, Paul Kocialkowski wrote:
> > > > > > On Fri 03 Sep 21, 00:25, Pratyush Yadav wrote:
> > > > > > > The Cadence DPHY can be used to receive image data over the C=
SI-2
> > > > > > > protocol. Add support for Rx mode. The programming sequence d=
iffers from
> > > > > > > the Tx mode so it is added as a separate set of hooks to isol=
ate the two
> > > > > > > paths. The mode in which the DPHY has to be used is selected =
based on
> > > > > > > the compatible.
> > > > > >=20
> > > > > > I just realized that I didn't follow-up on a previous revision =
on the debate
> > > > > > about using the phy sub-mode to distinguish between rx/tx.
> > > > > >=20
> > > > > > I see that you've been using a dedicated compatible, but I'm no=
t sure this is a
> > > > > > good fit either. My understanding is that the compatible should=
 describe a group
> > > > > > of register-compatible revisions of a hardware component, not h=
ow the hardware
> > > > > > is used specifically. I guess the distinction between rx/tx fal=
ls under
> > > > > > the latter rather than the former.
> > > > >=20
> > > > > I am not sure if that is the case. For example, we use "ti,am654-=
ospi"=20
> > > > > for Cadence Quadspi controller. The default compatible, "cdns,qsp=
i-nor",=20
> > > > > only supports Quad SPI (4 lines). The "ti,am654-ospi" compatible =
also=20
> > > > > supports Octal SPI (8 lines).
> > > >=20
> > > > Those are hardware defaults right?
> > > >=20
> > > > > In addition, I feel like the Rx DPHY is almost a different type o=
f=20
> > > > > device from a Tx DPHY. The programming sequence is completely dif=
ferent,=20
> > > >=20
> > > > Is that due to direction or something else..?
> > > >=20
> > > > > the clocks required are different, etc. So I think using a differ=
ent=20
> > > > > compatible for Rx mode makes sense.
> > > >=20
> > > > Is the underlaying IP not capable of both TX and RX and in the spec=
ific
> > > > situations you are using it as TX and RX.
> > > >=20
> > > > I am okay that default being TX but you can use Paul's approach of
> > > > direction with this to make it better proposal
> > >=20
> > >=20
> > > Given that the RX and TX implementations are very different (it's not=
 a
> > > matter of selecting a mode at runtime), I'm actually tempted to
> > > recommend having two drivers, one for the RX PHY and one for the TX P=
HY.
> > > This can only be done with two different compatible strings, which I
> > > think would be a better approach.
> >=20
> > FWIW, I think having different drivers would certainly make things=20
> > easier to maintain.
>=20
> I'm sorry for not having recommended this in the first place.
>=20
> Any objection from anyone against going in this direction ?

So apparently there is not a single register that is shared between rx and =
tx
and clocks are not the same either so it feels to me like a separate driver
would be legit. This looks like two distinct IPs sharing the same base addr=
ess.

Cheers,

Paul

> > > It's unfortunate that the original compatible string didn't contain
> > > "tx". We could rename it and keep the old one in the driver for backw=
ard
> > > compatibility, making things cleaner going forward.
>=20
> --=20
> Regards,
>=20
> Laurent Pinchart

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--L5dYWIzivIAnCCEH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmFgP9oACgkQ3cLmz3+f
v9Hxvwf/e/A29WlDAhrBrskZq6ow7NWWzWAoCdjdGQl/QDZmIe7f2+93Q97rjSLn
eiXMvHxgnuvkm4KWlGM7MBEczcwbSfnZKyu48UWYsdGwfkNAvLJEka522u7nhsxY
j68hda1nI6BpV7tmX4zsQH/kySF/z1Z787q/CoYl7Yq/dYxtNW8L0EDval4kbYQI
vHu4CXsmFw0ToPPJd0d4wBrD8WEU8wQX6CkNhDIw92RCzMMJu7jy9FRD5/ekF93P
Bty3NYcL3a9jcNoX82BeFcBbRE+xyJxeCHR8KpBAmgTaVefI3E6aoPQL1L55bN1v
SuwC4/l8Bq3f03IyIv222HfPQ6rURw==
=ceu9
-----END PGP SIGNATURE-----

--L5dYWIzivIAnCCEH--


--===============5051331095793162439==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5051331095793162439==--

