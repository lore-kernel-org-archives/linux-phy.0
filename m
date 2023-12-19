Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97507C41535
	for <linux-phy@archiver.kernel.org>; Tue, 19 Dec 2023 09:13:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gXV3qAkgJyxdfXlK6do3FsAb52/zyDCHX/GNvUXZeeE=; b=JU4FGI6+LIMDyW
	6BnvwzkH5kVlsrhkFYuhlacrw7saNVkK25RajlUqra+RcUnZH8AyfyUODMYKus/KS+Ab5NKFwq4UW
	ouqn6+g9gvSgylPPo1aW7TRYVX/yHeiliMd+li2hHxufljf8mz/CObl/rizlGCOQ/EvrwfD189Jnc
	P9CfZRs1iPN+uc8397xYzDcdyB75r7jnnPM8QKcliH+4FxbU4P86ejwHQ2M+2DE7xMtSrEFRADvRC
	gBIq5Ww+QWQcBdkAU1wZg5H/XPfKdqH/h2WAXXnw+vxX2Xy7Eehoh83LopzuDtuTgRcQfb86cbC48
	PylgwAXuQj4U/EssGkNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFWA1-00DPxX-17;
	Tue, 19 Dec 2023 09:13:09 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFW9x-00DPv4-16;
	Tue, 19 Dec 2023 09:13:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702977185; x=1734513185;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=M4f4mYKCYXzcoA60pphtcdiPSn+8kt+tYAFiFa0hvzE=;
  b=hTvqgPPZLKRNzg1DlG/m2MY39w5a5kGzlY3X4ISYoq2DHcs5KxplPSA/
   Z0ZOUZH3hucBVLGc6B2DsGcWc/jmPazkvvqHqoIRfDDInLha86KbZDQCz
   iZMTj1QjC0nhs2ESJBuGDoXg/HEAc8Sbsgwxh+t6cgdycXc5Pf4sogHaR
   ErNvbJspGHrGhz1ArEv5akXtiCpfAqe96PXsR5phfWIcT4AVoQ7OFm6LK
   Pit3ULBshq5pci0X13PQ9lRpF9+GPoiYsZtKouQG63kS23bwdjQzJ2GvR
   qj8Hu/SO+dZJfeeey1lkfmcdc20FTkhJZNdaJXC/wIPWSUOCHq48X42fU
   Q==;
X-IronPort-AV: E=Sophos;i="6.04,287,1695679200"; 
   d="scan'208";a="34580507"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 19 Dec 2023 10:13:02 +0100
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id B09F3280075;
	Tue, 19 Dec 2023 10:13:01 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>, linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] phy: freescale: phy-fsl-imx8-mipi-dphy: Fix alias name to use dashes
Date: Tue, 19 Dec 2023 10:13:03 +0100
Message-ID: <4858990.GXAFRqVoOG@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <b01e05ac-8b28-49ad-8a1e-9cd667e5f1ec@lunn.ch>
References: <20231219090248.3317500-1-alexander.stein@ew.tq-group.com> <b01e05ac-8b28-49ad-8a1e-9cd667e5f1ec@lunn.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_011305_772750_C49852BE 
X-CRM114-Status: GOOD (  18.46  )
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

Hi Andrew,

Am Dienstag, 19. Dezember 2023, 10:09:24 CET schrieb Andrew Lunn:
> On Tue, Dec 19, 2023 at 10:02:48AM +0100, Alexander Stein wrote:
> > Devicetree spec lists only dashes as valid characters for alias names.
> > Table 3.2: Valid characters for alias names, Devicee Specification,
> > Release v0.4
> > =

> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > ---
> > =

> >  drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > =

> > diff --git a/drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c
> > b/drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c index
> > e625b32889bf..0928a526e2ab 100644
> > --- a/drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c
> > +++ b/drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c
> > @@ -706,7 +706,7 @@ static int mixel_dphy_probe(struct platform_device
> > *pdev)> =

> >  			return ret;
> >  		=

> >  		}
> > =

> > -		priv->id =3D of_alias_get_id(np, "mipi_dphy");
> > +		priv->id =3D of_alias_get_id(np, "mipi-dphy");
> =

> Are there any in tree DT blobs using mipi_dphy which are going to
> break because of this change?

You are right, I should have mentioned that already.
The alias is only used when used on a combo-PHY, which is only i.MX8QXP. Up =

until now there is no DT node in-kernel which uses the fsl,imx8qxp-mipi-dph=
y =

compatible. So no there should be no blobs at all using the old alias name.

Best regards,
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
