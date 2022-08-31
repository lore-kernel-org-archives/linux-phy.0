Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93523ECAAD3
	for <linux-phy@archiver.kernel.org>; Wed, 31 Aug 2022 08:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3k2aenoCJH2k0kmBq0mgDVwbO/HIl+/54uiZbsKCS1o=; b=B2M7+VzVdGCEMt
	YaLU+TEwka2+IRErull+QVS3S0J/57PgSoiHLDyZJOxuLsAykyAffX6u+Iat/wmgz0SHUCbEj0nmC
	5mcdJunjze4ppoISRmIj9hMN6dplzynjHuH2qAF6xF7dnOB4sbGkhVcZHEeomPVtPFcpec9rTaWYA
	HZqmh0sbzV2Z5//QcQ0sL/F+FwWT3Zu+fcThkmucjURmDVg1pT8TRIOjvPD/8Wk5ZjZbu71h9QNMy
	xXBo05wSE1exUmtn2CdwDsa4kyu18e0rDWezvMXbCszbguj0ZtQPgsg0aK3ARwzJu+E34KAD+k0XF
	IQuhDSdcvJ1PHzzSkahg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTJDR-0050bO-1E; Wed, 31 Aug 2022 08:36:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTJDO-0050aQ-Ld
	for linux-phy@lists.infradead.org; Wed, 31 Aug 2022 08:36:51 +0000
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1oTJDE-0008Cf-KV; Wed, 31 Aug 2022 10:36:40 +0200
Message-ID: <cbf7cc48acb1c772bea8594aa4017f56b4d1074e.camel@pengutronix.de>
Subject: Re: [PATCH v5 5/7] soc: imx: imx8mp-blk-ctrl: handle PCIe PHY resets
From: Lucas Stach <l.stach@pengutronix.de>
To: Richard Zhu <hongxing.zhu@nxp.com>, p.zabel@pengutronix.de, 
	bhelgaas@google.com, lorenzo.pieralisi@arm.com, robh@kernel.org, 
	shawnguo@kernel.org, vkoul@kernel.org, alexander.stein@ew.tq-group.com, 
	marex@denx.de, richard.leitner@linux.dev
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@pengutronix.de, linux-imx@nxp.com
Date: Wed, 31 Aug 2022 10:36:39 +0200
In-Reply-To: <1661845564-11373-6-git-send-email-hongxing.zhu@nxp.com>
References: <1661845564-11373-1-git-send-email-hongxing.zhu@nxp.com>
	 <1661845564-11373-6-git-send-email-hongxing.zhu@nxp.com>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_013650_739109_A103EE4C 
X-CRM114-Status: GOOD (  14.32  )
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

Am Dienstag, dem 30.08.2022 um 15:46 +0800 schrieb Richard Zhu:
> From: Lucas Stach <l.stach@pengutronix.de>
> 
> Dessert the PHY reset when powering up the domain and put it back
> into reset when the domain is powered down.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

According to patch submission guidelines you need to add your own sign-
off when integrating this patch into your series. Please add in the
next revision.

Regards,
Lucas

> ---
>  drivers/soc/imx/imx8mp-blk-ctrl.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/soc/imx/imx8mp-blk-ctrl.c b/drivers/soc/imx/imx8mp-blk-ctrl.c
> index 4ca2ede6871b..6c939d68ba9a 100644
> --- a/drivers/soc/imx/imx8mp-blk-ctrl.c
> +++ b/drivers/soc/imx/imx8mp-blk-ctrl.c
> @@ -18,6 +18,8 @@
>  #define GPR_REG0		0x0
>  #define  PCIE_CLOCK_MODULE_EN	BIT(0)
>  #define  USB_CLOCK_MODULE_EN	BIT(1)
> +#define  PCIE_PHY_APB_RST	BIT(4)
> +#define  PCIE_PHY_INIT_RST	BIT(5)
>  
>  struct imx8mp_blk_ctrl_domain;
>  
> @@ -75,6 +77,10 @@ static void imx8mp_hsio_blk_ctrl_power_on(struct imx8mp_blk_ctrl *bc,
>  	case IMX8MP_HSIOBLK_PD_PCIE:
>  		regmap_set_bits(bc->regmap, GPR_REG0, PCIE_CLOCK_MODULE_EN);
>  		break;
> +	case IMX8MP_HSIOBLK_PD_PCIE_PHY:
> +		regmap_set_bits(bc->regmap, GPR_REG0,
> +				PCIE_PHY_APB_RST | PCIE_PHY_INIT_RST);
> +		break;
>  	default:
>  		break;
>  	}
> @@ -90,6 +96,10 @@ static void imx8mp_hsio_blk_ctrl_power_off(struct imx8mp_blk_ctrl *bc,
>  	case IMX8MP_HSIOBLK_PD_PCIE:
>  		regmap_clear_bits(bc->regmap, GPR_REG0, PCIE_CLOCK_MODULE_EN);
>  		break;
> +	case IMX8MP_HSIOBLK_PD_PCIE_PHY:
> +		regmap_clear_bits(bc->regmap, GPR_REG0,
> +				  PCIE_PHY_APB_RST | PCIE_PHY_INIT_RST);
> +		break;
>  	default:
>  		break;
>  	}



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
