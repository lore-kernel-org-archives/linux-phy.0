Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5146CD342F
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 07:52:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RZ1Pb/UQFDt7k6fV8fJsW/8xzVfSaRqcRMO2wDIi3hI=; b=MtaEoJNowL4OpL
	NSoRlApM1fRhtm7oVQ0woRqjw1HGLS/hk1VXnWIQUWJCnyGYgvYnII4RcUh7xzFPfveERjnPm2qF/
	pBy3sp50ibwxKDwP3wgyfqatA6QWHUkUXMlPyB2/zzwE8WaMUid2UityP9nz4VmZCjNL3Cn1nrRAG
	datL8puxFtLQvZ6zav4r6nP+5cENXFpikgyIuvX1O/sEKC65s8VzLLGvelLUqc2DnEL/6JieCY0YN
	XylwqFrlCpdxDd1gTL1ZQmScR5Z+QmjJYgeRXWxN2W/2Z0Tb7M28Fm9zlPx5e7mC+DraWgeP9wlvj
	KZHwnNIuifihnNcinO2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slOLC-0000000Glpy-1Qy6;
	Tue, 03 Sep 2024 07:52:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slOGa-0000000GkaW-463A
	for linux-phy@lists.infradead.org;
	Tue, 03 Sep 2024 07:47:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1slOGX-0004RF-CO; Tue, 03 Sep 2024 09:47:53 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1slOGV-0058BE-NY; Tue, 03 Sep 2024 09:47:51 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1slOGV-004N9C-1x;
	Tue, 03 Sep 2024 09:47:51 +0200
Date: Tue, 3 Sep 2024 09:47:51 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Adam Ford <aford173@gmail.com>
Cc: linux-phy@lists.infradead.org, dominique.martinet@atmark-techno.com,
	linux-imx@nxp.com, festevam@gmail.com, frieder.schrempf@kontron.de,
	aford@beaconembedded.com, Sandor.yu@nxp.com,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Lucas Stach <l.stach@pengutronix.de>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V4 1/5] phy: freescale: fsl-samsung-hdmi: Replace
 register defines with macro
Message-ID: <20240903074751.nacchml6trk6si6s@pengutronix.de>
References: <20240903013113.139698-1-aford173@gmail.com>
 <20240903013113.139698-2-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240903013113.139698-2-aford173@gmail.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_004757_193259_7831849E 
X-CRM114-Status: GOOD (  25.52  )
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

Hi Adam,

thanks for the patch.

On 24-09-02, Adam Ford wrote:
> There are 47 registers defined as PHY_REG_xx were xx goes from 00 to
> 47.  Simplify this by replacing them all with a macro which is passed
> the register number to return the proper register offset.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> ---
>  drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 138 ++++++-------------
>  1 file changed, 41 insertions(+), 97 deletions(-)
> 
> diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> index 9048cdc760c2..bc5d3625ece6 100644
> --- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> +++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> @@ -14,76 +14,20 @@
>  #include <linux/platform_device.h>
>  #include <linux/pm_runtime.h>
>  
> -#define PHY_REG_00		0x00
> -#define PHY_REG_01		0x04
> -#define PHY_REG_02		0x08
> -#define PHY_REG_08		0x20
> -#define PHY_REG_09		0x24
> -#define PHY_REG_10		0x28
> -#define PHY_REG_11		0x2c
> -
> -#define PHY_REG_12		0x30
> -#define  REG12_CK_DIV_MASK	GENMASK(5, 4)
> -
> -#define PHY_REG_13		0x34
> -#define  REG13_TG_CODE_LOW_MASK	GENMASK(7, 0)
> -
> -#define PHY_REG_14		0x38
> -#define  REG14_TOL_MASK		GENMASK(7, 4)
> -#define  REG14_RP_CODE_MASK	GENMASK(3, 1)
> -#define  REG14_TG_CODE_HIGH_MASK	GENMASK(0, 0)
> -
> -#define PHY_REG_15		0x3c
> -#define PHY_REG_16		0x40
> -#define PHY_REG_17		0x44
> -#define PHY_REG_18		0x48
> -#define PHY_REG_19		0x4c
> -#define PHY_REG_20		0x50
> -
> -#define PHY_REG_21		0x54
> -#define  REG21_SEL_TX_CK_INV	BIT(7)
> -#define  REG21_PMS_S_MASK	GENMASK(3, 0)
> -
> -#define PHY_REG_22		0x58
> -#define PHY_REG_23		0x5c
> -#define PHY_REG_24		0x60
> -#define PHY_REG_25		0x64
> -#define PHY_REG_26		0x68
> -#define PHY_REG_27		0x6c
> -#define PHY_REG_28		0x70
> -#define PHY_REG_29		0x74
> -#define PHY_REG_30		0x78
> -#define PHY_REG_31		0x7c
> -#define PHY_REG_32		0x80
> -
> -/*
> - * REG33 does not match the ref manual. According to Sandor Yu from NXP,
> - * "There is a doc issue on the i.MX8MP latest RM"
> - * REG33 is being used per guidance from Sandor
> - */

Can we keep this comment please.

> -#define PHY_REG_33		0x84
> -#define  REG33_MODE_SET_DONE	BIT(7)
> -#define  REG33_FIX_DA		BIT(1)
> -
> -#define PHY_REG_34		0x88
> -#define  REG34_PHY_READY	BIT(7)
> -#define  REG34_PLL_LOCK		BIT(6)
> -#define  REG34_PHY_CLK_READY	BIT(5)
> -
> -#define PHY_REG_35		0x8c
> -#define PHY_REG_36		0x90
> -#define PHY_REG_37		0x94
> -#define PHY_REG_38		0x98
> -#define PHY_REG_39		0x9c
> -#define PHY_REG_40		0xa0
> -#define PHY_REG_41		0xa4
> -#define PHY_REG_42		0xa8
> -#define PHY_REG_43		0xac
> -#define PHY_REG_44		0xb0
> -#define PHY_REG_45		0xb4
> -#define PHY_REG_46		0xb8
> -#define PHY_REG_47		0xbc
> +#define PHY_REG(reg)		(reg * 4)
> +
> +#define REG12_CK_DIV_MASK	GENMASK(5, 4)

> +#define REG13_TG_CODE_LOW_MASK	GENMASK(7, 0)

> +#define REG14_TOL_MASK		GENMASK(7, 4)
> +#define REG14_RP_CODE_MASK	GENMASK(3, 1)
> +#define REG14_TG_CODE_HIGH_MASK	GENMASK(0, 0)

> +#define REG21_SEL_TX_CK_INV	BIT(7)
> +#define REG21_PMS_S_MASK	GENMASK(3, 0)

> +#define REG33_MODE_SET_DONE	BIT(7)
> +#define REG33_FIX_DA		BIT(1)

> +#define REG34_PHY_READY	BIT(7)
> +#define REG34_PLL_LOCK		BIT(6)
> +#define REG34_PHY_CLK_READY	BIT(5)

Also please add newlines in between different reg defines like I did
above. The comment which we should keep should be put above
REG_33_MODE_SET_DONE. The rest LGTM.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

>  #define PHY_PLL_DIV_REGS_NUM 6
>  
> @@ -369,29 +313,29 @@ struct reg_settings {
>  };
>  
>  static const struct reg_settings common_phy_cfg[] = {
> -	{ PHY_REG_00, 0x00 }, { PHY_REG_01, 0xd1 },
> -	{ PHY_REG_08, 0x4f }, { PHY_REG_09, 0x30 },
> -	{ PHY_REG_10, 0x33 }, { PHY_REG_11, 0x65 },
> +	{ PHY_REG(0), 0x00 }, { PHY_REG(1), 0xd1 },
> +	{ PHY_REG(8), 0x4f }, { PHY_REG(9), 0x30 },
> +	{ PHY_REG(10), 0x33 }, { PHY_REG(11), 0x65 },
>  	/* REG12 pixclk specific */
>  	/* REG13 pixclk specific */
>  	/* REG14 pixclk specific */
> -	{ PHY_REG_15, 0x80 }, { PHY_REG_16, 0x6c },
> -	{ PHY_REG_17, 0xf2 }, { PHY_REG_18, 0x67 },
> -	{ PHY_REG_19, 0x00 }, { PHY_REG_20, 0x10 },
> +	{ PHY_REG(15), 0x80 }, { PHY_REG(16), 0x6c },
> +	{ PHY_REG(17), 0xf2 }, { PHY_REG(18), 0x67 },
> +	{ PHY_REG(19), 0x00 }, { PHY_REG(20), 0x10 },
>  	/* REG21 pixclk specific */
> -	{ PHY_REG_22, 0x30 }, { PHY_REG_23, 0x32 },
> -	{ PHY_REG_24, 0x60 }, { PHY_REG_25, 0x8f },
> -	{ PHY_REG_26, 0x00 }, { PHY_REG_27, 0x00 },
> -	{ PHY_REG_28, 0x08 }, { PHY_REG_29, 0x00 },
> -	{ PHY_REG_30, 0x00 }, { PHY_REG_31, 0x00 },
> -	{ PHY_REG_32, 0x00 }, { PHY_REG_33, 0x80 },
> -	{ PHY_REG_34, 0x00 }, { PHY_REG_35, 0x00 },
> -	{ PHY_REG_36, 0x00 }, { PHY_REG_37, 0x00 },
> -	{ PHY_REG_38, 0x00 }, { PHY_REG_39, 0x00 },
> -	{ PHY_REG_40, 0x00 }, { PHY_REG_41, 0xe0 },
> -	{ PHY_REG_42, 0x83 }, { PHY_REG_43, 0x0f },
> -	{ PHY_REG_44, 0x3E }, { PHY_REG_45, 0xf8 },
> -	{ PHY_REG_46, 0x00 }, { PHY_REG_47, 0x00 }
> +	{ PHY_REG(22), 0x30 }, { PHY_REG(23), 0x32 },
> +	{ PHY_REG(24), 0x60 }, { PHY_REG(25), 0x8f },
> +	{ PHY_REG(26), 0x00 }, { PHY_REG(27), 0x00 },
> +	{ PHY_REG(28), 0x08 }, { PHY_REG(29), 0x00 },
> +	{ PHY_REG(30), 0x00 }, { PHY_REG(31), 0x00 },
> +	{ PHY_REG(32), 0x00 }, { PHY_REG(33), 0x80 },
> +	{ PHY_REG(34), 0x00 }, { PHY_REG(35), 0x00 },
> +	{ PHY_REG(36), 0x00 }, { PHY_REG(37), 0x00 },
> +	{ PHY_REG(38), 0x00 }, { PHY_REG(39), 0x00 },
> +	{ PHY_REG(40), 0x00 }, { PHY_REG(41), 0xe0 },
> +	{ PHY_REG(42), 0x83 }, { PHY_REG(43), 0x0f },
> +	{ PHY_REG(44), 0x3E }, { PHY_REG(45), 0xf8 },
> +	{ PHY_REG(46), 0x00 }, { PHY_REG(47), 0x00 }
>  };
>  
>  struct fsl_samsung_hdmi_phy {
> @@ -442,7 +386,7 @@ fsl_samsung_hdmi_phy_configure_pixclk(struct fsl_samsung_hdmi_phy *phy,
>  	}
>  
>  	writeb(REG21_SEL_TX_CK_INV | FIELD_PREP(REG21_PMS_S_MASK, div),
> -	       phy->regs + PHY_REG_21);
> +	       phy->regs + PHY_REG(21));
>  }
>  
>  static void
> @@ -469,7 +413,7 @@ fsl_samsung_hdmi_phy_configure_pll_lock_det(struct fsl_samsung_hdmi_phy *phy,
>  		break;
>  	}
>  
> -	writeb(FIELD_PREP(REG12_CK_DIV_MASK, ilog2(div)), phy->regs + PHY_REG_12);
> +	writeb(FIELD_PREP(REG12_CK_DIV_MASK, ilog2(div)), phy->regs + PHY_REG(12));
>  
>  	/*
>  	 * Calculation for the frequency lock detector target code (fld_tg_code)
> @@ -489,11 +433,11 @@ fsl_samsung_hdmi_phy_configure_pll_lock_det(struct fsl_samsung_hdmi_phy *phy,
>  
>  	/* FLD_TOL and FLD_RP_CODE taken from downstream driver */
>  	writeb(FIELD_PREP(REG13_TG_CODE_LOW_MASK, fld_tg_code),
> -	       phy->regs + PHY_REG_13);
> +	       phy->regs + PHY_REG(13));
>  	writeb(FIELD_PREP(REG14_TOL_MASK, 2) |
>  	       FIELD_PREP(REG14_RP_CODE_MASK, 2) |
>  	       FIELD_PREP(REG14_TG_CODE_HIGH_MASK, fld_tg_code >> 8),
> -	       phy->regs + PHY_REG_14);
> +	       phy->regs + PHY_REG(14));
>  }
>  
>  static int fsl_samsung_hdmi_phy_configure(struct fsl_samsung_hdmi_phy *phy,
> @@ -503,7 +447,7 @@ static int fsl_samsung_hdmi_phy_configure(struct fsl_samsung_hdmi_phy *phy,
>  	u8 val;
>  
>  	/* HDMI PHY init */
> -	writeb(REG33_FIX_DA, phy->regs + PHY_REG_33);
> +	writeb(REG33_FIX_DA, phy->regs + PHY_REG(33));
>  
>  	/* common PHY registers */
>  	for (i = 0; i < ARRAY_SIZE(common_phy_cfg); i++)
> @@ -511,14 +455,14 @@ static int fsl_samsung_hdmi_phy_configure(struct fsl_samsung_hdmi_phy *phy,
>  
>  	/* set individual PLL registers PHY_REG2 ... PHY_REG7 */
>  	for (i = 0; i < PHY_PLL_DIV_REGS_NUM; i++)
> -		writeb(cfg->pll_div_regs[i], phy->regs + PHY_REG_02 + i * 4);
> +		writeb(cfg->pll_div_regs[i], phy->regs + PHY_REG(2) + i * 4);
>  
>  	fsl_samsung_hdmi_phy_configure_pixclk(phy, cfg);
>  	fsl_samsung_hdmi_phy_configure_pll_lock_det(phy, cfg);
>  
> -	writeb(REG33_FIX_DA | REG33_MODE_SET_DONE, phy->regs + PHY_REG_33);
> +	writeb(REG33_FIX_DA | REG33_MODE_SET_DONE, phy->regs + PHY_REG(33));
>  
> -	ret = readb_poll_timeout(phy->regs + PHY_REG_34, val,
> +	ret = readb_poll_timeout(phy->regs + PHY_REG(34), val,
>  				 val & REG34_PLL_LOCK, 50, 20000);
>  	if (ret)
>  		dev_err(phy->dev, "PLL failed to lock\n");
> -- 
> 2.43.0
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
