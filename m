Return-Path: <SRS0=2YxO=I6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA30AC433ED
	for <linux-phy@archiver.kernel.org>; Thu,  1 Apr 2021 11:00:06 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 53F42610A0
	for <linux-phy@archiver.kernel.org>; Thu,  1 Apr 2021 11:00:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 53F42610A0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=r+C5eFQox0pNUpIG22r26ngbDEqqKhy/uV6R4leUpf4=; b=lAd2XKm/ydiXPFmli6DiZyLiJ
	fj/7WeIrTfV6er2YpZwWbTYJ2EAgHmpFguXTKN+ZbKKJHA+EAoNj6JmfaAEWa/arCyqjN/CryMj7N
	1RfBNwc74ReSO6gLe/ScRLSqKXR/zzvHGJy8IlueU9KcLjvAmfGH5AQA1w5wET39MFOyqhtrFlrzp
	7q9vdNfWRWlbOH01XAOU2aJg2TgD+0f6W6NJR5NfJ2ai8eUIu2lK+4oaJAPcVlWTYVF0afLVQd28E
	F2zbozF3uQwLBD3ObgiYEROztEXstZTSLifKGF/BJfKaMyRPXo8JFR3txrFj+i45YvBsR+tX/o9pM
	SZt8ioFwA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRv3P-009J7A-0G; Thu, 01 Apr 2021 11:00:03 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRv3K-009J6G-Ux
 for linux-phy@lists.infradead.org; Thu, 01 Apr 2021 10:59:56 +0000
Received: by mail-ej1-x62c.google.com with SMTP id u9so2228699ejj.7
 for <linux-phy@lists.infradead.org>; Thu, 01 Apr 2021 03:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HQT+MfXSbU3OrSCCpbcdilBmnY1F0nrfdGq3rre+Jq8=;
 b=sFdAa+KJ/72QxV7NWhfK6r4ms6/34selgLvWkNEGEPm4Q42S6Pc5jt5i7K1iyP7Nzx
 lYYaR1y+DcPvsqXaO3evhm93l1p3KJXlYvXpjuwGoADenT/cOZ/ZllNb4PKHTTf6fGXA
 sRR87zOBDkUnvSuzSEhIJXT3I6vtm2qbFsjrFQWUhsGxGDu/HSmP7Wl7C+5EboaMXMQx
 TS0Of0dwpicC3laUDxrPIhJRjLjqw8uj2m7SayqIRhzKaUBAdFXizwyP1lGUQ1NraFsw
 2rQ9MlQncIR+P8mK7iKeqJCMx4wAVMCrR95I9LRFwAnaLpgne4In3P+YyFv/SQIVRRUG
 9qhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HQT+MfXSbU3OrSCCpbcdilBmnY1F0nrfdGq3rre+Jq8=;
 b=hDvob4Cxotfx8uYxfWyk6a41cm0i1nGhi9PrJJNSarGvsJ57DtTvg2OMku035kpNTF
 5Jyu8EdyjGVDG0sLnlyfOKkBoVbZE1FQ5X0q+jT+ZYN46FSDFri292NigWyRO3Z51Pjb
 iTDCpAD0wdzCOSaeB5aA9CMklerO+2DqHvkUVnPtEN3ryhlG7j5DETCR3cZOLaP/p7sV
 5sG9uXr35koJg9x6BO8fxwrMnSxJTZqG1qzF4CjMvXkGCEg6uxHAQmk4nTpEBOudixf9
 3yqET4OpPFENe6jZT29UTiIJfaFloHJRhIDR/9unHeiDo6CBybSFPVWPjmlnWzSRuqaI
 ZuPA==
X-Gm-Message-State: AOAM533JDzHq8YKAY5/m6zKQxs9c+Hxa25BF7h1soDrupdY4fJTAyN9g
 l2o6fJAGsJeuZpHYKbbe2Io=
X-Google-Smtp-Source: ABdhPJwif69oPS/oE0DnF294MN6X53YGdyUxADFwKndhXaPMFcJS6q3Z9IqzRYL8CHmdmuLaZzoYwA==
X-Received: by 2002:a17:906:2612:: with SMTP id
 h18mr8341376ejc.309.1617274794368; 
 Thu, 01 Apr 2021 03:59:54 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id ci22sm2597916ejc.54.2021.04.01.03.59.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 01 Apr 2021 03:59:51 -0700 (PDT)
Date: Thu, 1 Apr 2021 13:00:18 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Mathias Nyman <mathias.nyman@intel.com>, JC Kuo <jckuo@nvidia.com>,
 Jon Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v8 11/13] phy: tegra: xusb: Add wake/sleepwalk for Tegra186
Message-ID: <YGWnwhhiEZ596ct4@orome.fritz.box>
References: <20210325164057.793954-1-thierry.reding@gmail.com>
 <20210325164057.793954-12-thierry.reding@gmail.com>
 <YGVs5/57Z+6zKuQa@vkoul-mobl.Dlink>
MIME-Version: 1.0
In-Reply-To: <YGVs5/57Z+6zKuQa@vkoul-mobl.Dlink>
User-Agent: Mutt/2.0.6 (98f8cb83) (2021-03-06)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210401_115955_042624_C644A10A 
X-CRM114-Status: GOOD (  20.01  )
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
Content-Type: multipart/mixed; boundary="===============1271236301659374192=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============1271236301659374192==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="BQy/s5Q8W1hUIwRV"
Content-Disposition: inline


--BQy/s5Q8W1hUIwRV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 01, 2021 at 12:19:11PM +0530, Vinod Koul wrote:
> On 25-03-21, 17:40, Thierry Reding wrote:
> > From: JC Kuo <jckuo@nvidia.com>
> >=20
> > This commit implements Tegra186/Tegra194 XUSB PADCTL/AO wake and
> > sleepwalk operations.
> >=20
> > Signed-off-by: JC Kuo <jckuo@nvidia.com>
> > Signed-off-by: Thierry Reding <treding@nvidia.com>
> > ---
> >  drivers/phy/tegra/xusb-tegra186.c | 558 +++++++++++++++++++++++++++++-
> >  1 file changed, 557 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/drivers/phy/tegra/xusb-tegra186.c b/drivers/phy/tegra/xusb=
-tegra186.c
> > index 5d64f69b39a9..6378bf722745 100644
> > --- a/drivers/phy/tegra/xusb-tegra186.c
> > +++ b/drivers/phy/tegra/xusb-tegra186.c
> > @@ -1,6 +1,6 @@
> >  // SPDX-License-Identifier: GPL-2.0
> >  /*
> > - * Copyright (c) 2016-2019, NVIDIA CORPORATION.  All rights reserved.
> > + * Copyright (c) 2016-2020, NVIDIA CORPORATION.  All rights reserved.
> >   */
> > =20
> >  #include <linux/delay.h>
> > @@ -113,6 +113,117 @@
> >  #define  ID_OVERRIDE_FLOATING			ID_OVERRIDE(8)
> >  #define  ID_OVERRIDE_GROUNDED			ID_OVERRIDE(0)
> > =20
> > +/* XUSB AO registers */
> > +#define XUSB_AO_USB_DEBOUNCE_DEL		(0x4)
> > +#define   UHSIC_LINE_DEB_CNT(x)			(((x) & 0xf) << 4)
> > +#define   UTMIP_LINE_DEB_CNT(x)			((x) & 0xf)
> > +
> > +#define XUSB_AO_UTMIP_TRIGGERS(x)		(0x40 + (x) * 4)
> > +#define   CLR_WALK_PTR				(1 << 0)
> > +#define   CAP_CFG				(1 << 1)
> > +#define   CLR_WAKE_ALARM			(1 << 3)
> > +
> > +#define XUSB_AO_UHSIC_TRIGGERS(x)		(0x60 + (x) * 4)
> > +#define   HSIC_CLR_WALK_PTR			(1 << 0)
> > +#define   HSIC_CLR_WAKE_ALARM			(1 << 3)
> > +#define   HSIC_CAP_CFG				(1 << 4)
> > +
> > +#define XUSB_AO_UTMIP_SAVED_STATE(x)		(0x70 + (x) * 4)
> > +#define   SPEED(x)				((x) & 0x3)
> > +#define     UTMI_HS				SPEED(0)
> > +#define     UTMI_FS				SPEED(1)
> > +#define     UTMI_LS				SPEED(2)
> > +#define     UTMI_RST				SPEED(3)
> > +
> > +#define XUSB_AO_UHSIC_SAVED_STATE(x)		(0x90 + (x) * 4)
> > +#define   MODE(x)				((x) & 0x1)
> > +#define   MODE_HS				MODE(0)
> > +#define   MODE_RST				MODE(1)
> > +
> > +#define XUSB_AO_UTMIP_SLEEPWALK_CFG(x)		(0xd0 + (x) * 4)
> > +#define XUSB_AO_UHSIC_SLEEPWALK_CFG(x)		(0xf0 + (x) * 4)
> > +#define   FAKE_USBOP_VAL			(1 << 0)
> > +#define   FAKE_USBON_VAL			(1 << 1)
> > +#define   FAKE_USBOP_EN				(1 << 2)
> > +#define   FAKE_USBON_EN				(1 << 3)
> > +#define   FAKE_STROBE_VAL			(1 << 0)
> > +#define   FAKE_DATA_VAL				(1 << 1)
> > +#define   FAKE_STROBE_EN			(1 << 2)
> > +#define   FAKE_DATA_EN				(1 << 3)
> > +#define   WAKE_WALK_EN				(1 << 14)
> > +#define   MASTER_ENABLE				(1 << 15)
> > +#define   LINEVAL_WALK_EN			(1 << 16)
>=20
> BIT() or GENMASK() please
>=20
> > +static inline void ao_writel(struct tegra186_xusb_padctl *priv, u32 va=
lue, unsigned int offset)
> > +{
> > +	dev_dbg(priv->base.dev, "ao %08x < %08x\n", offset, value);
>=20
> Too many debug prints in this patch as well...
>=20
> With the nits fixed:
>=20
> Acked-By: Vinod Koul <vkoul@kernel.org>

Done, thanks.

Thierry

--BQy/s5Q8W1hUIwRV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmBlp8AACgkQ3SOs138+
s6FNYQ//ZCu0RiXY4bKYD0YkdSBK952Z/KYrEDrhuDPEBc3i9RA8TE6l/IJqgA6l
gvczZki7xJf5xxfPYVQz47kCpP6aVYTQhx2tkqIopBvjf6pIxTpxvSZYQak7bg9h
x63nuX/TsJg1pZhInBMmN1pex1a6W1HeDthgOvMjInP08qJiRcHuePWNOfMVYMxR
m1EmYOD3SvSnMU6OchsmZ//pRn8E32JGZmJbxHotF/JTvPvoyb/vhOESBFDkaw/X
L0qHzDJf7Bq94qrJkB7/L09qCfnXT85eg6UvIPSeKY2oCRAZejRcOoLDEzWkpgWi
MSrU2k/ltVbdZQuaGEw3zJxBsALkBXKLqZMFQBZ5jAVF+pYtCYY65uThu+Xl5OKh
pTkQNRJiL4vFG6NSuTUgGrddTi2BXrD9OC+N0OJhLp7gK2wzjRUO4g0OMHYlnsE4
6ukP6vQ7/y5w1R89pKPabN1Hua9/ealW6FQtOq3IP+LgKp655AC36POOS5GdPJAT
J+4I89T1STHN4ebmiQHjMDm4rKZYZIuWRaTduMgaXthxYXMt7vUZI5MTDlsBawWz
4MuVs6bDQa3vV3ivwNn8ILyDFEdzQivGg6T8Ad3J5UgqyrR6LtWi4v7a64zgHYel
6Rg+Xj78dfixdNoG73VW2kUHCnr9/kBXx7eqYQGOk627xjctIno=
=5jX+
-----END PGP SIGNATURE-----

--BQy/s5Q8W1hUIwRV--


--===============1271236301659374192==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============1271236301659374192==--

