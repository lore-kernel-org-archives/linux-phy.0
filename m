Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3176C282C5
	for <linux-phy@archiver.kernel.org>; Fri, 28 Feb 2025 12:38:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AVAdJO/o2wPI9+gPoMfQPaNxDXYA5HjPaaXXBuNFHCY=; b=3NKT2eBEFADVm5
	dSthTOzZp13ENo5ARQnSwIkWASzPd5nSTCFrGWh7NfAtEv0V5StC7Id0zqs+4sJ3RtIustej1MMzF
	oR0c6jWpwaYU4VDKzozo6GcQnJdTIhssISC6OzIcrHvdiMQrtbaESZnsd5vZIGZG+7aq3LlfcTEpj
	VNFQaosYcNXDkzbNeL3otgTOWlDJJaYGpwWBQOsr+YchJFLSkHoFSdhNYL++JBB2o2qcjcMeZskLy
	QyBJlDPIAuuM6iPKwHAW+MACnByoPT5m4JkyQ3lQn53JIeKe9ODShcB3kQWoztRjK+J9EVXRckYsV
	W6AYCxqmqz6nd09VFNnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnzdK-0000000AwFm-0Ufu;
	Fri, 28 Feb 2025 12:38:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnzdH-0000000AwDy-0S0T
	for linux-phy@lists.infradead.org;
	Fri, 28 Feb 2025 12:38:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tnzd6-0000H9-Kc; Fri, 28 Feb 2025 13:38:12 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tnzd5-003IOz-2H;
	Fri, 28 Feb 2025 13:38:11 +0100
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tnzd5-0007Cv-20;
	Fri, 28 Feb 2025 13:38:11 +0100
Message-ID: <c965906ea8797385399534e974cabdba5564ae0f.camel@pengutronix.de>
Subject: Re: [PATCH v1 1/2] phy: freescale: imx8m-pcie: cleanup reset logic
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Stefan Eichenberger <eichest@gmail.com>, vkoul@kernel.org, 
	kishon@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, tharvey@gateworks.com, 
	hongxing.zhu@nxp.com, francesco.dolcini@toradex.com
Cc: linux-phy@lists.infradead.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Stefan
	Eichenberger <stefan.eichenberger@toradex.com>
Date: Fri, 28 Feb 2025 13:38:11 +0100
In-Reply-To: <20250228103959.47419-2-eichest@gmail.com>
References: <20250228103959.47419-1-eichest@gmail.com>
	 <20250228103959.47419-2-eichest@gmail.com>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_043823_149491_D8EB44F2 
X-CRM114-Status: GOOD (  15.60  )
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

On Fr, 2025-02-28 at 11:38 +0100, Stefan Eichenberger wrote:
> From: Stefan Eichenberger <stefan.eichenberger@toradex.com>
> 
> Remove the switch statement and base perst release on whether it is
> found in the device tree. The probe function fails without the reset
> property, making it mandatory. Therefore, always release reset
> independent of the variant.
> 
> This does not change the behavior of the driver but reduces driver
> complexity and allows for easier future modifications.
> 
> Signed-off-by: Stefan Eichenberger <stefan.eichenberger@toradex.com>
> ---
>  drivers/phy/freescale/phy-fsl-imx8m-pcie.c | 12 ++++--------
>  1 file changed, 4 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> index e98361dcdeadf..00f957a42d9dc 100644
> --- a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> +++ b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> @@ -141,15 +141,11 @@ static int imx8_pcie_phy_power_on(struct phy *phy)
>  			   IMX8MM_GPR_PCIE_REF_CLK_PLL);
>  	usleep_range(100, 200);
>  
> -	switch (imx8_phy->drvdata->variant) {
> -	case IMX8MP:
> +	if (imx8_phy->perst)

This check is not necessary, reset_control_deassert(NULL) is a no-op:

>  		reset_control_deassert(imx8_phy->perst);

regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
