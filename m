Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4143EC36010
	for <linux-phy@archiver.kernel.org>; Mon,  7 Apr 2025 18:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ijE7F2pF7m/mVkkEsJh00o02Ngk3ttIQHyeG2CuU6X0=; b=gyzYgDTmR/aWch
	Ve7mDAWzaK17yyaxvNT3O+Y9v1KnTSCRDEcw4owkDMpmxWIpYqIKhG9BWEtDkiraepfvejAC4g+nZ
	RefrqcJcdy5TI0YFZXABZYmDgoqL4tLNx5kyD3cGAzy5DZ3HLO1D7G5ZCqq38mdt1ALD3lx7Y+uNp
	APPt3AJPreOt/XumbI3J0fbWrJMoa+R/VB85P9RlNHmZ+eL1qDAQxZsk35fM0VQ6aJi32XXbgnPwK
	WG8Y7NE7tJLiqwsB3+1mfPab+sBPYGIjnrQsm2DoAA8kWk42Rz6MLeRTqduUYp/sUwj0xSlLEwhz6
	O5MuRbnzYXH/3jGTKOCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1rZV-00000001ezt-0ScN;
	Mon, 07 Apr 2025 18:51:49 +0000
Received: from out-181.mta0.migadu.com ([2001:41d0:1004:224b::b5])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1qE4-00000001MJj-42vV
	for linux-phy@lists.infradead.org;
	Mon, 07 Apr 2025 17:25:38 +0000
Message-ID: <874b566f-8e19-4af8-bb6b-e0e5eff7b5f5@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1744046734;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZHM7lHGP8muDGkPak7XcuoIV5Sq2eECb4HN6J4ncuwY=;
	b=oFbmJpme/vhWb25/PtxCTNlmlE6Hk9GVpsnEPaiQJLu8+l+zEXJJylVSYilpIDBtgvKrJL
	zqA5IYo0qDxuil41M7QAZv6h0NLWQVwBZEPcTJPyktDGGmv2QAVAAY5/ncNBe+XlGQ6YHO
	OANqbYgjV/bFKBPaC9OlMrhqhjy8dUQ=
Date: Mon, 7 Apr 2025 22:54:41 +0530
MIME-Version: 1.0
Subject: Re: [PATCH v2 05/18] phy: cdns-dphy: Remove leftover code
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Jyri Sarha <jyri.sarha@iki.fi>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Francesco Dolcini <francesco@dolcini.it>,
 Devarsh Thakkar <devarsht@ti.com>
References: <20250402-cdns-dsi-impro-v2-0-4a093eaa5e27@ideasonboard.com>
 <20250402-cdns-dsi-impro-v2-5-4a093eaa5e27@ideasonboard.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Aradhya Bhatia <aradhya.bhatia@linux.dev>
In-Reply-To: <20250402-cdns-dsi-impro-v2-5-4a093eaa5e27@ideasonboard.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_102537_148735_2555A145 
X-CRM114-Status: GOOD (  17.73  )
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

Hi Tomi,

Thank you for the patches!

On 02/04/25 19:00, Tomi Valkeinen wrote:
> The code in cdns-dphy has probably been part of a DSI driver in the
> past. Remove DSI defines and variables which are not used or do not
> actually do anything. Also rename cdns_dsi_get_dphy_pll_cfg() to
> cdns_get_dphy_pll_cfg(), i.e. drop the "dsi", as it's not relevant here.
> 
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
> ---
>  drivers/phy/cadence/cdns-dphy.c | 19 ++++---------------
>  1 file changed, 4 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/phy/cadence/cdns-dphy.c b/drivers/phy/cadence/cdns-dphy.c
> index f79ec4fab409..7f8b70ec10c5 100644
> --- a/drivers/phy/cadence/cdns-dphy.c
> +++ b/drivers/phy/cadence/cdns-dphy.c
> @@ -55,14 +55,6 @@
>  #define DPHY_PSM_CFG_FROM_REG		BIT(0)
>  #define DPHY_PSM_CLK_DIV(x)		((x) << 1)
>  
> -#define DSI_HBP_FRAME_OVERHEAD		12
> -#define DSI_HSA_FRAME_OVERHEAD		14
> -#define DSI_HFP_FRAME_OVERHEAD		6
> -#define DSI_HSS_VSS_VSE_FRAME_OVERHEAD	4
> -#define DSI_BLANKING_FRAME_OVERHEAD	6
> -#define DSI_NULL_FRAME_OVERHEAD		6
> -#define DSI_EOT_PKT_SIZE		4
> -
>  #define DPHY_TX_J721E_WIZ_PLL_CTRL	0xF04
>  #define DPHY_TX_J721E_WIZ_STATUS	0xF08
>  #define DPHY_TX_J721E_WIZ_RST_CTRL	0xF0C
> @@ -117,10 +109,9 @@ static const unsigned int tx_bands[] = {
>  	870, 950, 1000, 1200, 1400, 1600, 1800, 2000, 2200, 2500
>  };
>  
> -static int cdns_dsi_get_dphy_pll_cfg(struct cdns_dphy *dphy,
> -				     struct cdns_dphy_cfg *cfg,
> -				     struct phy_configure_opts_mipi_dphy *opts,
> -				     unsigned int *dsi_hfp_ext)
> +static int cdns_get_dphy_pll_cfg(struct cdns_dphy *dphy,

nit: cdns_dphy_get_pll_cfg seems more appropriate. We even have a
cdns_dphy_set_pll_cfg.

> +				 struct cdns_dphy_cfg *cfg,
> +				 struct phy_configure_opts_mipi_dphy *opts)
>  {
>  	unsigned long pll_ref_hz = clk_get_rate(dphy->pll_ref_clk);
>  	u64 dlane_bps;
> @@ -289,15 +280,13 @@ static int cdns_dphy_config_from_opts(struct phy *phy,
>  				      struct cdns_dphy_cfg *cfg)
>  {
>  	struct cdns_dphy *dphy = phy_get_drvdata(phy);
> -	unsigned int dsi_hfp_ext = 0;
>  	int ret;
>  
>  	ret = phy_mipi_dphy_config_validate(opts);
>  	if (ret)
>  		return ret;
>  
> -	ret = cdns_dsi_get_dphy_pll_cfg(dphy, cfg,
> -					opts, &dsi_hfp_ext);
> +	ret = cdns_get_dphy_pll_cfg(dphy, cfg, opts);
>  	if (ret)
>  		return ret;
>  
> 

Apart from the small comment above,

Reviewed-by: Aradhya Bhatia <aradhya.bhatia@linux.dev>

-- 
Regards
Aradhya


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
