Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FF51D78770
	for <linux-phy@archiver.kernel.org>; Fri, 19 Dec 2025 17:56:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c6bJ6uLG/XkEA6C1L6S18s+mt2azdNCdD7m00eGM0gU=; b=2LQ0typVlXpWYX
	mK8DpWKwFsULOOlKvhAkkRAtWVR/eOSQi288nQYB2ak+u/i94++Qoym186IzlOQgBFXrBPNBe9ICc
	DkZUyodvNbuM7Ha48mZhDUTO9dLW/mSy0QL80qGUkRtQ8hpOjvVUgjI6vd672Nj36nZ8LilAU58b5
	+4InciXO27LJ/RRBASUV4Rs5JEUlsg+SrnyhGDiNQSuLTAEUvET1EVwxsdazXjvaEXFLWQ9Ha4G66
	GGtsJUz8+lSTe9PfIffvu0vrqiS1vvXI/vBSwQydjcffOVPBwEfykIUe2RY9WgNUGvY+GG7znKTDj
	8es2qeA90Mxdy26nNVlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWei2-0000000Ajw4-2mus;
	Fri, 19 Dec 2025 17:56:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWehw-0000000AjvY-387c
	for linux-phy@lists.infradead.org;
	Fri, 19 Dec 2025 17:56:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWehg-0002dt-7P; Fri, 19 Dec 2025 18:55:48 +0100
Message-ID: <04aea865-693f-454c-9207-c00e67ad74cc@pengutronix.de>
Date: Fri, 19 Dec 2025 18:55:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] phy: fsl-imx8mq-usb: Clear the PCS_TX_SWING_FULL field
 before using it
To: Stefano Radaelli <stefano.radaelli21@gmail.com>, vkoul@kernel.org,
 neil.armstrong@linaro.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-kernel@vger.kernel.org
Cc: imx@lists.linux.dev, Pierluigi Passaro <pierluigi.p@variscite.com>,
 xu.yang_2@nxp.com, Frank.Li@nxp.com, haibo.chen@nxp.com,
 linux-phy@lists.infradead.org, Stefano Radaelli <stefano.r@variscite.com>,
 Leonid Segal <leonids@variscite.com>, jun.li@nxp.com
References: <20251219160912.561431-1-stefano.r@variscite.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251219160912.561431-1-stefano.r@variscite.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_095604_793854_BDB5B4F0 
X-CRM114-Status: GOOD (  15.83  )
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

On 12/19/25 5:09 PM, Stefano Radaelli wrote:
> Clear the PCS_TX_SWING_FULL field mask before setting the new value
> in PHY_CTRL5 register. Without clearing the mask first, the OR operation
> could leave previously set bits, resulting in incorrect register
> configuration.
> 
> Fixes: 63c85ad0cd81 ("phy: fsl-imx8mp-usb: add support for phy tuning")
> Suggested-by: Leonid Segal <leonids@variscite.com>
> Acked-by: Pierluigi Passaro <pierluigi.p@variscite.com>
> Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
> Reviewed-by: Xu Yang <xu.yang_2@nxp.com>
> Reviewed-by: Frank Li <Frank.Li@nxp.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
> v3:
> - Fixed commit message line wrapping (75 chars)
> v2:
> - Improved commit subject as suggested by Fabio Estevam
> 
>  drivers/phy/freescale/phy-fsl-imx8mq-usb.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
> index ad8a55012e42..9458b6e5fcf4 100644
> --- a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
> +++ b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
> @@ -504,6 +504,7 @@ static void imx8m_phy_tune(struct imx8mq_usb_phy *imx_phy)
>  
>  	if (imx_phy->pcs_tx_swing_full != PHY_TUNE_DEFAULT) {
>  		value = readl(imx_phy->base + PHY_CTRL5);
> +		value &= ~PHY_CTRL5_PCS_TX_SWING_FULL_MASK;
>  		value |= FIELD_PREP(PHY_CTRL5_PCS_TX_SWING_FULL_MASK,
>  				   imx_phy->pcs_tx_swing_full);
>  		writel(value, imx_phy->base + PHY_CTRL5);
> 
> base-commit: ea1013c1539270e372fc99854bc6e4d94eaeff66

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
