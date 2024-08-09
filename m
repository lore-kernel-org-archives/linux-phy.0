Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98A68C3DA4A
	for <linux-phy@archiver.kernel.org>; Fri,  9 Aug 2024 01:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XpWQ+TvIDARRBfs4woo9p+AtVGlNpf3wt/PGcsyjiys=; b=0TpqzyrvTvhX7s
	in5cBlYjgOF/0YzOli0dDh3XBLOCa+AYPnvd/cXqN3SmyO2WldkRPICufuPF2sJMKRbnRWeQuiV9n
	5fHmlO7M0qaZv6hqnzwvLLV5aixtWP3vZ+IIInAfL0zqIjQUcmAu6sHnxaVo7JWiIb/TfFrk4aL/9
	SF9OolUeGELZVTJel7uJY/jCn35vhyie4gJmmjFZL9eexSUbqRkvNIDDI2pdBQr363LKZQ+ajqifV
	sKbYmT4HApRb+iBmhBqUkmZQxcMNK8HMTE+flL0YzaQ4jKd95tZoDvIsgaa4UxXEYJH1qpbWKnSKr
	oc9cVFRVSDl9Q5eWtlIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scEWC-00000009whc-1JDZ;
	Fri, 09 Aug 2024 01:34:12 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scEVc-00000009wfR-3Vfn;
	Fri, 09 Aug 2024 01:33:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8AE5D615B5;
	Fri,  9 Aug 2024 01:33:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68CE6C32782;
	Fri,  9 Aug 2024 01:33:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723167215;
	bh=jM04DU9PwiRiXmlRYkEKsDYtOW/V6HmVi1GnllNw9DA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kBc+/6KqlqCmZu3H4y1PnTsBK9UuqqrSMUAOXcF310+tBWQ6Zcw1v6bel69bRi9c/
	 49VGLYjWggxVyvq/FzO2SToILVkFljvNPP5UopswrHma8bS07B//hM0ccEWwNkH2K6
	 fZp5Wd13KMle+6RWDavu3m5f2adELNuBPwvNET//Rn+AFZdPsOKZwFYfue+CZdYztz
	 HOhbYxPmumLDwsVlDsCyi13tdr90ANLN18ivJm6vN0d7ljDpk4j7UnMe0CQAppDRPW
	 +p1TYjddvg1CHlJq8aHeRpyEwRvBcf/extXBPG3Ewyg9azzl+3PNG2t1k+ajyflr4x
	 teEyNnQZxqmoQ==
Date: Fri, 9 Aug 2024 09:33:25 +0800
From: Peter Chen <peter.chen@kernel.org>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	gregkh@linuxfoundation.org, herve.codina@bootlin.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-usb@vger.kernel.org, jun.li@nxp.com
Subject: Re: [PATCH v2 5/6] usb: phy: mxs: enable weak 1p1 regulator for
 imx6ul during suspend
Message-ID: <20240809013325.GD2673490@nchen-desktop>
References: <20240726113207.3393247-1-xu.yang_2@nxp.com>
 <20240726113207.3393247-5-xu.yang_2@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240726113207.3393247-5-xu.yang_2@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_183337_007126_19100F1A 
X-CRM114-Status: GOOD (  24.63  )
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

On 24-07-26 19:32:06, Xu Yang wrote:
> 1p1 is off when the system enters suspend at i.MX6UL. It cause the PHY
> get wrong USB DP/DM value, then unexpected wakeup may occur if USB wakeup
> enabled. This will enable weak 1p1 during PHY suspend if vbus exist. So
> USB DP/DM is correct when system suspend.
> 
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> 
> ---
> Changes in v2:
>  - modify commit message
> ---
>  drivers/usb/phy/phy-mxs-usb.c | 32 ++++++++++++++++++++++++++++----
>  1 file changed, 28 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/usb/phy/phy-mxs-usb.c b/drivers/usb/phy/phy-mxs-usb.c
> index acaae22df3ba..cc4156c1b148 100644
> --- a/drivers/usb/phy/phy-mxs-usb.c
> +++ b/drivers/usb/phy/phy-mxs-usb.c
> @@ -71,6 +71,9 @@
>  #define BM_USBPHY_PLL_EN_USB_CLKS		BIT(6)
>  
>  /* Anatop Registers */
> +#define ANADIG_REG_1P1_SET			0x114
> +#define ANADIG_REG_1P1_CLR			0x118
> +
>  #define ANADIG_ANA_MISC0			0x150
>  #define ANADIG_ANA_MISC0_SET			0x154
>  #define ANADIG_ANA_MISC0_CLR			0x158
> @@ -123,6 +126,9 @@
>  
>  #define USB_PHY_VLLS_WAKEUP_EN			BIT(0)
>  
> +#define BM_ANADIG_REG_1P1_ENABLE_WEAK_LINREG	BIT(18)
> +#define BM_ANADIG_REG_1P1_TRACK_VDD_SOC_CAP	BIT(19)
> +
>  #define to_mxs_phy(p) container_of((p), struct mxs_phy, phy)
>  
>  /* Do disconnection between PHY and controller without vbus */
> @@ -196,7 +202,8 @@ static const struct mxs_phy_data imx6sx_phy_data = {
>  };
>  
>  static const struct mxs_phy_data imx6ul_phy_data = {
> -	.flags = MXS_PHY_DISCONNECT_LINE_WITHOUT_VBUS,
> +	.flags = MXS_PHY_DISCONNECT_LINE_WITHOUT_VBUS |
> +		MXS_PHY_HARDWARE_CONTROL_PHY2_CLK,
>  };
>  
>  static const struct mxs_phy_data imx7ulp_phy_data = {
> @@ -241,6 +248,11 @@ static inline bool is_imx7ulp_phy(struct mxs_phy *mxs_phy)
>  	return mxs_phy->data == &imx7ulp_phy_data;
>  }
>  
> +static inline bool is_imx6ul_phy(struct mxs_phy *mxs_phy)
> +{
> +	return mxs_phy->data == &imx6ul_phy_data;
> +}
> +
>  /*
>   * PHY needs some 32K cycles to switch from 32K clock to
>   * bus (such as AHB/AXI, etc) clock.
> @@ -884,18 +896,30 @@ static void mxs_phy_wakeup_enable(struct mxs_phy *mxs_phy, bool on)
>  
>  static void mxs_phy_enable_ldo_in_suspend(struct mxs_phy *mxs_phy, bool on)
>  {
> -	unsigned int reg = on ? ANADIG_ANA_MISC0_SET : ANADIG_ANA_MISC0_CLR;
> +	unsigned int reg;
> +	u32 value;
>  
>  	/* If the SoCs don't have anatop, quit */
>  	if (!mxs_phy->regmap_anatop)
>  		return;
>  
> -	if (is_imx6q_phy(mxs_phy))
> +	if (is_imx6q_phy(mxs_phy)) {
> +		reg = on ? ANADIG_ANA_MISC0_SET : ANADIG_ANA_MISC0_CLR;
>  		regmap_write(mxs_phy->regmap_anatop, reg,
>  			BM_ANADIG_ANA_MISC0_STOP_MODE_CONFIG);
> -	else if (is_imx6sl_phy(mxs_phy))
> +	} else if (is_imx6sl_phy(mxs_phy)) {
> +		reg = on ? ANADIG_ANA_MISC0_SET : ANADIG_ANA_MISC0_CLR;
>  		regmap_write(mxs_phy->regmap_anatop,
>  			reg, BM_ANADIG_ANA_MISC0_STOP_MODE_CONFIG_SL);
> +	} else if (is_imx6ul_phy(mxs_phy)) {
> +		reg = on ? ANADIG_REG_1P1_SET : ANADIG_REG_1P1_CLR;
> +		value = BM_ANADIG_REG_1P1_ENABLE_WEAK_LINREG |
> +			BM_ANADIG_REG_1P1_TRACK_VDD_SOC_CAP;
> +		if (mxs_phy_get_vbus_status(mxs_phy) && on)
> +			regmap_write(mxs_phy->regmap_anatop, reg, value);
> +		else if (!on)
> +			regmap_write(mxs_phy->regmap_anatop, reg, value);

Please check if vbus is not there but wakeup is enabled, and see the
behaviour is expected or not.

Peter
> +	}
>  }
>  
>  static int mxs_phy_system_suspend(struct device *dev)
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
