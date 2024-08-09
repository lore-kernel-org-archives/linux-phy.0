Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 569C6C3DA4A
	for <linux-phy@archiver.kernel.org>; Fri,  9 Aug 2024 01:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ReOH4rxrvZdGKGSqly1XIYz++LeU8mifNAU1MbcY1Z0=; b=WPa+syuIjQ63SJ
	u95OBjl3HsMR8YtDl/df8TnArgONv/1NBpBasrzOYhHelxJOMjt82ZhHvO6q1lAgRb/wrOFlm4uh0
	TGOIv0y9/lLjpYZXx5XaMOpzPBqZm0b0kNT7vUptS5NdddUSAfKT/C0Wb1bKGdCUsW4rVd/WQ26ff
	st26mBxW7oaknWyWbQ0YWsqmcw8r7XcvKq0wYWIWOz/bKzan2Ow293rqxf/BS9/RXYkRUEc+c1B/P
	XFBG2WPkdXjS3495dANtnBXqFSIShIPKo6w68+tuaRNhpwHhcQj5b7msL1s4rqfSiaDHHWmhFYZwd
	trOHXOGRQq8ffv4YIhEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scEZR-00000009xEp-3ou9;
	Fri, 09 Aug 2024 01:37:33 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scEYn-00000009x8N-3Vmf;
	Fri, 09 Aug 2024 01:36:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 387E9CE09E5;
	Fri,  9 Aug 2024 01:36:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1ED2EC32782;
	Fri,  9 Aug 2024 01:36:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723167411;
	bh=xluVK0tHO9NNdylwkimcBkO3o8kPzPqVXhIbqDXILzQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FgH7tSZWD2XBgI51fyuFDm9ja8Fnpj6WGe42SVK5B+2PewUTLmn0Hk+CY7ZvKmuTY
	 u5ZzuAFGnFxDX5Cln8xO09AWl/Hd8qCOKISVf509sjkDCbwnHZKE3wglITFj3qy0AT
	 ifVdMQbQ/YRx4MXhNKR42O6NAX3lIEU5flNdiS0pZVRG2u4EOVbUNKn+gosedrvruy
	 Uzv9MXgq6Xxrm1uanay7P0lro3APD5myVC/Di0VesQ8H7hBaHI0Ue1waabDJex/Llt
	 dUAEOP9uEdPG5kmMlvNaXYTXcIIj10ZhUZF8Gf8D+8OyPS3l1SXasupnMi7dTO3opr
	 2cL8hzX/2vgJA==
Date: Fri, 9 Aug 2024 09:36:42 +0800
From: Peter Chen <peter.chen@kernel.org>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	gregkh@linuxfoundation.org, herve.codina@bootlin.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-usb@vger.kernel.org, jun.li@nxp.com
Subject: Re: [PATCH v2 2/6] usb: phy: mxs: keep USBPHY2's clk always on
Message-ID: <20240809013642.GF2673490@nchen-desktop>
References: <20240726113207.3393247-1-xu.yang_2@nxp.com>
 <20240726113207.3393247-2-xu.yang_2@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240726113207.3393247-2-xu.yang_2@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_183654_242906_FCA2DCF9 
X-CRM114-Status: GOOD (  21.00  )
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

On 24-07-26 19:32:03, Xu Yang wrote:
> IP require keep USBPHY2's clk always on, so USBPHY2 (PLL7) power can be
> controlled by suspend signal. USB remote wakeup needs resume signal be
> sent out as soon as possible to match USB requirements.
> 
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>

Reviewed-by: Peter Chen <peter.chen@kernel.org>
> 
> ---
> Changes in v2:
>  - modify commit message
>  - remove hardware_control_phy2_clk
> ---
>  drivers/usb/phy/phy-mxs-usb.c | 33 ++++++++++++++++++++++++++-------
>  1 file changed, 26 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/usb/phy/phy-mxs-usb.c b/drivers/usb/phy/phy-mxs-usb.c
> index d9d29f0b37de..e172af75f602 100644
> --- a/drivers/usb/phy/phy-mxs-usb.c
> +++ b/drivers/usb/phy/phy-mxs-usb.c
> @@ -150,6 +150,15 @@
>  #define MXS_PHY_TX_D_CAL_MIN			79
>  #define MXS_PHY_TX_D_CAL_MAX			119
>  
> +/*
> + * At imx6q/6sl/6sx, the PHY2's clock is controlled by hardware directly,
> + * eg, according to PHY's suspend status. In these PHYs, we only need to
> + * open the clock at the initialization and close it at its shutdown routine.
> + * These PHYs can send resume signal without software interfere if not
> + * gate clock.
> + */
> +#define MXS_PHY_HARDWARE_CONTROL_PHY2_CLK	BIT(4)
> +
>  struct mxs_phy_data {
>  	unsigned int flags;
>  };
> @@ -161,12 +170,14 @@ static const struct mxs_phy_data imx23_phy_data = {
>  static const struct mxs_phy_data imx6q_phy_data = {
>  	.flags = MXS_PHY_SENDING_SOF_TOO_FAST |
>  		MXS_PHY_DISCONNECT_LINE_WITHOUT_VBUS |
> -		MXS_PHY_NEED_IP_FIX,
> +		MXS_PHY_NEED_IP_FIX |
> +		MXS_PHY_HARDWARE_CONTROL_PHY2_CLK,
>  };
>  
>  static const struct mxs_phy_data imx6sl_phy_data = {
>  	.flags = MXS_PHY_DISCONNECT_LINE_WITHOUT_VBUS |
> -		MXS_PHY_NEED_IP_FIX,
> +		MXS_PHY_NEED_IP_FIX |
> +		MXS_PHY_HARDWARE_CONTROL_PHY2_CLK,
>  };
>  
>  static const struct mxs_phy_data vf610_phy_data = {
> @@ -175,7 +186,8 @@ static const struct mxs_phy_data vf610_phy_data = {
>  };
>  
>  static const struct mxs_phy_data imx6sx_phy_data = {
> -	.flags = MXS_PHY_DISCONNECT_LINE_WITHOUT_VBUS,
> +	.flags = MXS_PHY_DISCONNECT_LINE_WITHOUT_VBUS |
> +		MXS_PHY_HARDWARE_CONTROL_PHY2_CLK,
>  };
>  
>  static const struct mxs_phy_data imx6ul_phy_data = {
> @@ -518,12 +530,19 @@ static int mxs_phy_suspend(struct usb_phy *x, int suspend)
>  		}
>  		writel(BM_USBPHY_CTRL_CLKGATE,
>  		       x->io_priv + HW_USBPHY_CTRL_SET);
> -		clk_disable_unprepare(mxs_phy->clk);
> +		if (!(mxs_phy->port_id == 1 &&
> +			(mxs_phy->data->flags &
> +				MXS_PHY_HARDWARE_CONTROL_PHY2_CLK)))
> +			clk_disable_unprepare(mxs_phy->clk);
>  	} else {
>  		mxs_phy_clock_switch_delay();
> -		ret = clk_prepare_enable(mxs_phy->clk);
> -		if (ret)
> -			return ret;
> +		if (!(mxs_phy->port_id == 1 &&
> +			(mxs_phy->data->flags &
> +				MXS_PHY_HARDWARE_CONTROL_PHY2_CLK))) {
> +			ret = clk_prepare_enable(mxs_phy->clk);
> +			if (ret)
> +				return ret;
> +		}
>  		writel(BM_USBPHY_CTRL_CLKGATE,
>  		       x->io_priv + HW_USBPHY_CTRL_CLR);
>  		writel(0, x->io_priv + HW_USBPHY_PWD);
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
