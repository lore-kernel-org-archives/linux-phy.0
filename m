Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D45A4CD6E55
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 06:14:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KGjeE1miUoFMzt4vaYgl5759MMXmXr+2GGwCzRCkbmM=; b=xh0OJCuDy7CiOs
	cep1wfaoG/sj+Vr+Z/KrkBmTqbZeolTP6otlNe6FYURm98g/Q5ULQ7m9UEc8UQMPJlnE8dnMZ3UXV
	JVe39RLpA+xQPo/81nGSw874d72oWRZutjDOfyImEjOIqG5y96z0nF5f9ZSa5YmwqAc0HhdOzd3s1
	wazDEqKywFUL27NTxyTBwBozjdfoElm7pQCF7FaoTul/Qw/yyq3im5u8QhAOVUmEpxz2QrcynRfbF
	VEgUplSUPq+ssc5u2rJKcm479pu/a1vzeCjZxhZ9isK5yL/NQBvrgD0p1nerQoD2JEXxUiLa0wM/K
	aFyd9t7tijQkFRYoUo6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUesM-0000000EMvk-1gvO;
	Wed, 03 Jun 2026 06:14:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUesL-0000000EMvd-09VH
	for linux-phy@bombadil.infradead.org;
	Wed, 03 Jun 2026 06:14:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=y607uulUmr2CvX+maPSBeo2KBP9xki0r6+5VJWHdYvU=; b=QB6Hhb8sEcjYeMyMVXd0OXqss7
	s6Ni9EJRBesTQULUzp6f3T/p15KrdJmU+KFZGAKzA7I8ObpDbk+RHR4CkHTRzMwjT8QL0MvmUvgRU
	uS/DOTxMkDPJCWee6xBDql5beKmuejtogO38swTYK1KclrhFU8BkElClZdZb1FJ82Mhx7fZG/E0g2
	FMZjR7rKDIDN2EaTKBUju+1cUdRdO+CZRsDF+eerCeCZPKYHLVXh41BOMDvuSAWVTj5P5qM/f4aJ6
	SDXocgHKco5GLu82NGTqJuuEjnmblmARgSI5/vFdd5kFrwhkzpHWqSJqiQYSOhKL4hIbYOMKS4g4B
	/k7orQMg==;
Received: from www537.your-server.de ([188.40.3.216])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wUesH-0000000BFn0-2pJy
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 06:14:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=y607uulUmr2CvX+maPSBeo2KBP9xki0r6+5VJWHdYvU=; b=mybKwaa6U1ItEswUwSRZmjRCrw
	iHrrj57zxLf+hUxQJy+HH9Ywpsa7ffWFIGHADkkytXwUpe3XAPBPvLC4jo57NT2tuFKPsG4fdF40M
	v9isdzBXg9tEMl86O9+3xEcLrBNd1uM4ncEan7sNI+G38H6z3i2zpCk9ZApUZrkiIuTXNGztXLHDj
	f4Ck1hkHHdozzSvuDoDb4mjUrG30Lok8O79K50sHRsa9jLNOGLttCQpbQNKyChWHdNrwelblB/RD7
	PllGwaowjA/aCPtnmPBf/7P5ShYIyz76XKmPlQi36ERgnsZkwNNhgodUUT1Gy+CdPWcM2ZhjuJbDS
	h6u4a12w==;
Received: from sslproxy05.your-server.de ([78.46.172.2])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1wUes4-000Goq-1Q;
	Wed, 03 Jun 2026 08:14:32 +0200
Received: from localhost ([127.0.0.1])
	by sslproxy05.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1wUes3-0000R1-18;
	Wed, 03 Jun 2026 08:14:32 +0200
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Tanjeff Moos <tanjeff.moos@westermo.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 phy-next 13/15] dt-bindings: phy: lynx-10g: initial document
Date: Wed, 03 Jun 2026 08:14:31 +0200
Message-ID: <5829252.LvFx2qVVIh@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20260602090356.ewl5bezjxyqys6ee@skbuf>
References: <20260529171509.1163787-1-vladimir.oltean@nxp.com>
 <2842502.mvXUDI8C0e@steina-w> <20260602090356.ewl5bezjxyqys6ee@skbuf>
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/28019/Tue Jun  2 08:33:27 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_071445_957355_034BE91F 
X-CRM114-Status: GOOD (  30.21  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Valdimir,

Am Dienstag, 2. Juni 2026, 11:03:56 CEST schrieb Vladimir Oltean:
> Hi Alexander,
> =

> On Mon, Jun 01, 2026 at 08:34:25AM +0200, Alexander Stein wrote:
> > Hi,
> > =

> > Am Freitag, 29. Mai 2026, 19:15:07 CEST schrieb Vladimir Oltean:
> > > Add a schema for the 10G Lynx SerDes. This is very similar to the mod=
ern
> > > form of the 28G Lynx SerDes, which is very much the intention.
> > > =

> > > We allow both forms of #phy-cells =3D <1> in the top-level provider
> > > and #phy-cells =3D <0> in the per-lane provider for more flexibility =
to
> > > consumers, and because the kernel code is shared with the 28G Lynx wh=
ich
> > > already has that support for compatibility reasons.
> > > =

> > > Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> > > ---
> > > Cc: devicetree@vger.kernel.org
> > > Cc: Conor Dooley <conor+dt@kernel.org>
> > > Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> > > Cc: Rob Herring <robh@kernel.org>
> > > =

> > > v1->v2:
> > > - move patch later in series, right before driver
> > > - deliberately ignoring this Sashiko feedback:
> > >   https://lore.kernel.org/linux-phy/20260529125017.ifqunh52gdzhthdg@s=
kbuf/
> > > ---
> > >  .../devicetree/bindings/phy/fsl,lynx-10g.yaml | 131 ++++++++++++++++=
++
> > >  1 file changed, 131 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/phy/fsl,lynx-10=
g.yaml
> > > =

> > > diff --git a/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml =
b/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
> > > new file mode 100644
> > > index 000000000000..993f076bba4e
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
> > > @@ -0,0 +1,131 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/phy/fsl,lynx-10g.yaml
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml
> > > +
> > > +title: Freescale Lynx 10G SerDes PHY
> > > +
> > > +maintainers:
> > > +  - Vladimir Oltean <vladimir.oltean@nxp.com>
> > > +
> > > +description:
> > > +  The 10G Lynx is a multi-protocol SerDes block which handles networ=
king, PCIe,
> > > +  SATA and other high-speed interfaces. It is present on most QorIQ =
and
> > > +  Layerscape SoCs. The register map is common, but the integration is
> > > +  SoC-specific, with the differences consisting in register endianne=
ss, the
> > > +  number of lanes, protocol converters available per lane and their =
location in
> > > +  the PCCR registers. Some SoCs have multiple SerDes blocks and thos=
e differ in
> > > +  their protocol capabilities per lane.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    description:
> > > +      There is intentionally no generic fsl,lynx-10g compatible stri=
ng due to
> > > +      the hardware inability to report its capabilities, despite hav=
ing a
> > > +      common register map.
> > > +    enum:
> > > +      - fsl,ls1028a-serdes
> > > +      - fsl,ls1046a-serdes1
> > > +      - fsl,ls1046a-serdes2
> > > +      - fsl,ls1088a-serdes1
> > > +      - fsl,ls1088a-serdes2
> > > +      - fsl,ls2088a-serdes1
> > > +      - fsl,ls2088a-serdes2
> > =

> > Silly question: What about LS1043A? AFAIK it has a single serdes block.
> > =

> > Best regards
> > Alexander
> =

> My understanding is that hardware validation for LS1043A was not
> budgeted for the main two features why the lynx-10g driver is necessary:
> RCW override for 1G <-> 10G dynamic protocol switching and KR link
> training. As such, this SoC isn't supported by the SerDes driver in the
> NXP BSP either. With the exception of 1G <-> 2.5G minor protocol
> switching, having a lynx-10g driver would not be very useful for the
> LS1043A as is, without a procedure from h/w validation to do RCW
> override.

Thanks for the explanation. If there is no need for serdes driver then good.
I was just wondering why ls1043a was not in the list, although it's quite
similar to ls1046a.

Thanks and best regards,
Alexander
-- =

TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
