Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23F67C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 15 Dec 2022 19:52:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ucLnXSnJ3tFqNsaof61pUxA7Mp0q2YVP/+Qt1/Jutz0=; b=hlqUJ/PgGi1PRe
	/v11TmEWoYYAWaePsH+C6KVXOnYP+Gn0NcRub4Wkiw+VEi+eP7vq59JAt8nkjmIE2onEyY8t09Wn0
	aub1os2dBCirndMVtkhKzgGIXH8jQu+eCcNva4imkkC1jF+hOX+Dc4hDW2SScsTTlS1+qsuWUW0hS
	CKp02/0NzYbVHbtVbdOFKJBbEapIAi/8nYrKnoS7SbcWJ9i9WikMbS1U7Hd+ISfdqKU3IJqC0uCPe
	HrgjbkAQB8AbC0OLn+S9WfLwT3vDFYK9JVtsyCWk5ebsgqx6Y3LDWZVFavO9kPtd2eztA0vF0sa8a
	AI4UyhWBv0LrOGoEC7VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5uHK-00B8i1-IP; Thu, 15 Dec 2022 19:52:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5uHG-00B8gD-TP
	for linux-phy@lists.infradead.org; Thu, 15 Dec 2022 19:52:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1p5uH2-0001GM-F7; Thu, 15 Dec 2022 20:52:08 +0100
Message-ID: <03940f9711139055662c00d24f6beb89a9df6e01.camel@pengutronix.de>
Subject: Re: [PATCH 2/2] phy: freescale: add Samsung HDMI PHY
From: Lucas Stach <l.stach@pengutronix.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Vinod Koul
	 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, NXP Linux Team <linux-imx@nxp.com>, 
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 patchwork-lst@pengutronix.de, kernel@pengutronix.de, Inki Dae
 <inki.dae@samsung.com>, Seung-Woo Kim <sw0312.kim@samsung.com>, Sylwester
 Nawrocki <s.nawrocki@samsung.com>, Marek Szyprowski
 <m.szyprowski@samsung.com>
Date: Thu, 15 Dec 2022 20:52:04 +0100
In-Reply-To: <b7dc7ba7-e646-b520-a065-8b47643c1c26@linaro.org>
References: <20220826192023.3216389-1-l.stach@pengutronix.de>
	 <20220826192023.3216389-2-l.stach@pengutronix.de>
	 <b7dc7ba7-e646-b520-a065-8b47643c1c26@linaro.org>
User-Agent: Evolution 3.46.2 (3.46.2-1.fc37) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221215_115222_969376_60B80338 
X-CRM114-Status: GOOD (  23.72  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Krzysztof,

Am Sonntag, dem 28.08.2022 um 18:53 +0300 schrieb Krzysztof Kozlowski:
> On 26/08/2022 22:20, Lucas Stach wrote:
> > This adds the driver for the Samsung HDMI PHY found on the
> > i.MX8MP SoC. Based on downstream implementation from
> > Sandor Yu <Sandor.yu@nxp.com>.
> > 
> > Co-developed-by: Marco Felsch <m.felsch@pengutronix.de>
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> >  drivers/phy/freescale/Kconfig                |   6 +
> >  drivers/phy/freescale/Makefile               |   1 +
> >  drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 699 +++++++++++++++++++
> >  3 files changed, 706 insertions(+)
> >  create mode 100644 drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> > 
> > diff --git a/drivers/phy/freescale/Kconfig b/drivers/phy/freescale/Kconfig
> > index 853958fb2c06..5c2b73042dfc 100644
> > --- a/drivers/phy/freescale/Kconfig
> > +++ b/drivers/phy/freescale/Kconfig
> > @@ -35,6 +35,12 @@ config PHY_FSL_IMX8M_PCIE
> >  	  Enable this to add support for the PCIE PHY as found on
> >  	  i.MX8M family of SOCs.
> >  
> > +config PHY_FSL_SAMSUNG_HDMI_PHY
> > +	tristate "Samsung HDMI PHY support"
> > +	depends on OF && HAS_IOMEM
> > +	help
> > +	  Enable this to add support for the Samsung HDMI PHY in i.MX8MP.
> 
> Your bindings do not mention that this IP block comes from Samsung, so
> please extend the description there.
> 
> Also, since this came from blocks used by Samsung, probably it shares a
> lot with Samsung Exynos SoC, so it would be nice to Cc maintainers of
> DRM DRIVERS FOR EXYNOS for some feedback.
> 
> Although existing Samsung HDMI phy driver is tightly coupled with Exynos
> DRM drivers, so not really re-usable without huge refactoring. I did not
> check the register layout similarities.
> 
I did take a look at the Exynos DRM HDMI driver, but this doesn't seem
to have much in common with what we do here. First the Exynos driver
mixes HDMI controller and PHY programming into a single driver, while
the PHY supported in this driver is paired to a Designware HDMI
controller on the i.MX8MP. Secondly the newest generation supported by
the Exynos driver is Exynos5 which is a 20nm part, while the i.MX8MP is
a 14nm part and PHYs tend to be really technology specific.

I'll CC the Exynos maintainers for the next submission, in case they
can provide some input, but I currently doubt that there is much
overlap.

Regards,
Lucas


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
