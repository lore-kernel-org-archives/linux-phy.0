Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6377ECD342F
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 07:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wws2jFT+rpkg4KII4PGGVeAXQ7BWiwoHgkAkhh0ilwc=; b=UBO432oTx9ltDN
	UaYLoZUiA4z2bfT6vkxujXp531IoQNlKWWn1BK0rZ4PPWCZ7lYZalrK/0eJfEN2WtkpzTUAop4l6Z
	XvIp/ihOrIp3fpuesQ+wL7zCpSYVeH2MdvchmTivIKhWprmOEE8Cq+EWyJfs5uCIhYNElA6be4Smy
	LkuM7DF3c5yMYKL9gY0s9ciMA+7iHi048jlfivGTpxT2CYclZ+IPw7GhzLuKtVwYhfIJmiMWhoLZv
	GrgKECX+fYSzogENYSMAWf64dAtkgdYCi6jjzu3Pe5EQeE7KZV4bavrcqERmo/1a4VXpckWlOfVw3
	DidK8xqbvlIc1NONzlZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slOQP-0000000GnFx-0RJh;
	Tue, 03 Sep 2024 07:58:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slOPs-0000000Gn9G-0FEO
	for linux-phy@lists.infradead.org;
	Tue, 03 Sep 2024 07:57:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1slOPq-0007ir-QS; Tue, 03 Sep 2024 09:57:30 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1slOPq-0058GW-4b; Tue, 03 Sep 2024 09:57:30 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1slOPq-004NHD-04;
	Tue, 03 Sep 2024 09:57:30 +0200
Date: Tue, 3 Sep 2024 09:57:30 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Adam Ford <aford173@gmail.com>
Cc: linux-phy@lists.infradead.org, dominique.martinet@atmark-techno.com,
	linux-imx@nxp.com, festevam@gmail.com, frieder.schrempf@kontron.de,
	aford@beaconembedded.com, Sandor.yu@nxp.com,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Lucas Stach <l.stach@pengutronix.de>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V4 2/5] phy: freescale: fsl-samsung-hdmi: Simplify
 REG21_PMS_S_MASK lookup
Message-ID: <20240903075730.3323moqlc37ykeas@pengutronix.de>
References: <20240903013113.139698-1-aford173@gmail.com>
 <20240903013113.139698-3-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240903013113.139698-3-aford173@gmail.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_005734_982490_A5A47CBF 
X-CRM114-Status: GOOD (  18.15  )
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

On 24-09-02, Adam Ford wrote:
> The value of 'S' is writen to two places, PHY_REG3[7:4] and
> PHY_REG21[3:0].  There is a lookup table which contains
> the value of PHY_REG3.  Rather than using a switch statement
> based on the pixel clock to search for the value of 'S' again,
> just shift the contents of PHY_REG3[7:4] >> 4 and place the value
> in PHY_REG21[3:0].  Doing this can eliminate an entire function.

Good catch!

> Signed-off-by: Adam Ford <aford173@gmail.com>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 39 ++------------------
>  1 file changed, 4 insertions(+), 35 deletions(-)
> 
> diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> index bc5d3625ece6..a700a300dc6f 100644
> --- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> +++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> @@ -355,40 +355,6 @@ to_fsl_samsung_hdmi_phy(struct clk_hw *hw)
>  	return container_of(hw, struct fsl_samsung_hdmi_phy, hw);
>  }
>  
> -static void
> -fsl_samsung_hdmi_phy_configure_pixclk(struct fsl_samsung_hdmi_phy *phy,
> -				      const struct phy_config *cfg)
> -{
> -	u8 div = 0x1;
> -
> -	switch (cfg->pixclk) {
> -	case  22250000 ...  33750000:
> -		div = 0xf;
> -		break;
> -	case  35000000 ...  40000000:
> -		div = 0xb;
> -		break;
> -	case  43200000 ...  47500000:
> -		div = 0x9;
> -		break;
> -	case  50349650 ...  63500000:
> -		div = 0x7;
> -		break;
> -	case  67500000 ...  90000000:
> -		div = 0x5;
> -		break;
> -	case  94000000 ... 148500000:
> -		div = 0x3;
> -		break;
> -	case 154000000 ... 297000000:
> -		div = 0x1;
> -		break;
> -	}
> -
> -	writeb(REG21_SEL_TX_CK_INV | FIELD_PREP(REG21_PMS_S_MASK, div),
> -	       phy->regs + PHY_REG(21));
> -}
> -
>  static void
>  fsl_samsung_hdmi_phy_configure_pll_lock_det(struct fsl_samsung_hdmi_phy *phy,
>  					    const struct phy_config *cfg)
> @@ -457,7 +423,10 @@ static int fsl_samsung_hdmi_phy_configure(struct fsl_samsung_hdmi_phy *phy,
>  	for (i = 0; i < PHY_PLL_DIV_REGS_NUM; i++)
>  		writeb(cfg->pll_div_regs[i], phy->regs + PHY_REG(2) + i * 4);
>  
> -	fsl_samsung_hdmi_phy_configure_pixclk(phy, cfg);
> +	/* High nibble of pll_div_regs[1] contains S which also gets written to REG21 */
> +	writeb(REG21_SEL_TX_CK_INV | FIELD_PREP(REG21_PMS_S_MASK,
> +	       cfg->pll_div_regs[1] >> 4), phy->regs + PHY_REG(21));
> +
>  	fsl_samsung_hdmi_phy_configure_pll_lock_det(phy, cfg);
>  
>  	writeb(REG33_FIX_DA | REG33_MODE_SET_DONE, phy->regs + PHY_REG(33));
> -- 
> 2.43.0
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
