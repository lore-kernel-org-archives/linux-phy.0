Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD362C36010
	for <linux-phy@archiver.kernel.org>; Mon,  7 Apr 2025 18:52:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JYaFG0lnbaOq3ReXOmsnFVyplYJGohg0q8VMc2VD1NA=; b=w6R+/QAFTIVAGi
	DKS90Ff8wyV6MPTpRh/ieLze1t3Wbn4mAaRPGkWRqexd2JsEt9/0dxjFc64tQNwWqJM+iARrOiTqS
	v1nsAs+mzBFIiffJBQ8SqtJMzc/zu3xOiiO5Z+dpKWQ+WaWJmGnPr2nr1q8lH6zdmQZdX86aifDkR
	tWAVLMBQa01/Sr8Aps2Ij7RDhoWieDuUvOFI+jqDJDlX8bHi6dtaHHG/BEZI9dA71emwN45efaGLa
	mn9szvPCOk9Wh6lrtq7lzXybI5y+K5HvYM0RbD0qlxjWzGN8/vIswSCtc4LZi5roLXbQXWOuohZ+y
	dUv9q/krBJ7j1jH5ANLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1rZv-00000001fm3-0mfY;
	Mon, 07 Apr 2025 18:52:15 +0000
Received: from out-187.mta1.migadu.com ([2001:41d0:203:375::bb])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1qm9-00000001SJq-16S7
	for linux-phy@lists.infradead.org;
	Mon, 07 Apr 2025 18:00:50 +0000
Message-ID: <46dc6803-47f0-4434-9794-08307604e450@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1744048846;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LYQgn5/fy4dHXJLjzY7D/eH42PtSSXiU5EQQrf/mBGI=;
	b=QEPXk48XAIJwFjsEkynJHh8BkD7K6R7O3WxD+ynoOmVgsn3k4PmYUCzmmB8MkHr7AN0G6g
	Edf5aQOyIkfIPSNRLd6br718NyzzNT5EVVzm3orqZ8iTpgHbKEiiBu/nFsKZuKQaEa/BU7
	EJ/AhQ9vJrNKR2TUnoIDZwg0gn/FJ7c=
Date: Mon, 7 Apr 2025 23:29:55 +0530
MIME-Version: 1.0
Subject: Re: [PATCH v2 12/18] drm/bridge: cdns-dsi: Drop checks that shouldn't
 be in .mode_valid()
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
 <20250402-cdns-dsi-impro-v2-12-4a093eaa5e27@ideasonboard.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Aradhya Bhatia <aradhya.bhatia@linux.dev>
In-Reply-To: <20250402-cdns-dsi-impro-v2-12-4a093eaa5e27@ideasonboard.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_110049_446998_C71CA6FC 
X-CRM114-Status: GOOD (  23.50  )
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

On 02/04/25 19:00, Tomi Valkeinen wrote:
> The docs say about mode_valid():
> 
> "it is not allowed to look at anything else but the passed-in mode, and
> validate it against configuration-invariant hardware constraints"
> 
> We're doing a lot more than just looking at the mode. The main issue
> here is that we're doing checks based on the pixel clock, before we know
> what the pixel clock from the crtc actually is.
> 
> So, drop the checks from .mode_valid(). This also allows us to remove
> the 'mode_valid_check' parameter from internal functions, and the
> related code.
> 
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
> ---
>  drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c | 44 ++++++++------------------
>  1 file changed, 14 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
> index e85c8652c96e..cf783680b1b4 100644
> --- a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
> +++ b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
> @@ -469,25 +469,17 @@ static unsigned int dpi_to_dsi_timing(unsigned int dpi_timing,
>  
>  static int cdns_dsi_mode2cfg(struct cdns_dsi *dsi,
>  			     const struct drm_display_mode *mode,
> -			     struct cdns_dsi_cfg *dsi_cfg,
> -			     bool mode_valid_check)
> +			     struct cdns_dsi_cfg *dsi_cfg)
>  {
>  	struct cdns_dsi_output *output = &dsi->output;
>  	u32 dpi_hsa, dpi_hbp, dpi_hfp, dpi_hact;
>  	bool sync_pulse;
>  	int bpp;
>  
> -	if (mode_valid_check) {
> -		dpi_hsa = mode->hsync_end - mode->hsync_start;
> -		dpi_hbp = mode->htotal - mode->hsync_end;
> -		dpi_hfp = mode->hsync_start - mode->hdisplay;
> -		dpi_hact = mode->hdisplay;
> -	} else {
> -		dpi_hsa = mode->crtc_hsync_end - mode->crtc_hsync_start;
> -		dpi_hbp = mode->crtc_htotal - mode->crtc_hsync_end;
> -		dpi_hfp =  mode->crtc_hsync_start - mode->crtc_hdisplay;
> -		dpi_hact = mode->crtc_hdisplay;
> -	}
> +	dpi_hsa = mode->crtc_hsync_end - mode->crtc_hsync_start;
> +	dpi_hbp = mode->crtc_htotal - mode->crtc_hsync_end;
> +	dpi_hfp =  mode->crtc_hsync_start - mode->crtc_hdisplay;
> +	dpi_hact = mode->crtc_hdisplay;
>  
>  	memset(dsi_cfg, 0, sizeof(*dsi_cfg));
>  
> @@ -518,8 +510,7 @@ static int cdns_dsi_mode2cfg(struct cdns_dsi *dsi,
>  static int cdns_dsi_adjust_phy_config(struct cdns_dsi *dsi,
>  			      struct cdns_dsi_cfg *dsi_cfg,
>  			      struct phy_configure_opts_mipi_dphy *phy_cfg,
> -			      const struct drm_display_mode *mode,
> -			      bool mode_valid_check)
> +			      const struct drm_display_mode *mode)
>  {
>  	struct cdns_dsi_output *output = &dsi->output;
>  	unsigned long long dlane_bps;
> @@ -549,11 +540,11 @@ static int cdns_dsi_adjust_phy_config(struct cdns_dsi *dsi,
>  	if (dsi_htotal % lanes)
>  		adj_dsi_htotal += lanes - (dsi_htotal % lanes);
>  
> -	dpi_hz = (mode_valid_check ? mode->clock : mode->crtc_clock) * 1000;
> +	dpi_hz = mode->crtc_clock * 1000;
>  	dlane_bps = (unsigned long long)dpi_hz * adj_dsi_htotal;
>  
>  	/* data rate in bytes/sec is not an integer, refuse the mode. */
> -	dpi_htotal = mode_valid_check ? mode->htotal : mode->crtc_htotal;
> +	dpi_htotal = mode->crtc_htotal;
>  	if (do_div(dlane_bps, lanes * dpi_htotal))
>  		return -EINVAL;
>  
> @@ -569,27 +560,25 @@ static int cdns_dsi_adjust_phy_config(struct cdns_dsi *dsi,
>  
>  static int cdns_dsi_check_conf(struct cdns_dsi *dsi,
>  			       const struct drm_display_mode *mode,
> -			       struct cdns_dsi_cfg *dsi_cfg,
> -			       bool mode_valid_check)
> +			       struct cdns_dsi_cfg *dsi_cfg)
>  {
>  	struct cdns_dsi_output *output = &dsi->output;
>  	struct phy_configure_opts_mipi_dphy *phy_cfg = &output->phy_opts.mipi_dphy;
>  	unsigned int nlanes = output->dev->lanes;
> -	int mode_clock = (mode_valid_check ? mode->clock : mode->crtc_clock);
>  	unsigned long req_hs_clk_rate;
>  	int ret;
>  
> -	ret = cdns_dsi_mode2cfg(dsi, mode, dsi_cfg, mode_valid_check);
> +	ret = cdns_dsi_mode2cfg(dsi, mode, dsi_cfg);
>  	if (ret)
>  		return ret;
>  
> -	ret = phy_mipi_dphy_get_default_config(mode_clock * 1000,
> +	ret = phy_mipi_dphy_get_default_config(mode->crtc_clock * 1000,
>  					       mipi_dsi_pixel_format_to_bpp(output->dev->format),
>  					       nlanes, phy_cfg);
>  	if (ret)
>  		return ret;
>  
> -	ret = cdns_dsi_adjust_phy_config(dsi, dsi_cfg, phy_cfg, mode, mode_valid_check);
> +	ret = cdns_dsi_adjust_phy_config(dsi, dsi_cfg, phy_cfg, mode);
>  	if (ret)
>  		return ret;
>  
> @@ -635,8 +624,7 @@ cdns_dsi_bridge_mode_valid(struct drm_bridge *bridge,
>  	struct cdns_dsi_input *input = bridge_to_cdns_dsi_input(bridge);
>  	struct cdns_dsi *dsi = input_to_dsi(input);
>  	struct cdns_dsi_output *output = &dsi->output;
> -	struct cdns_dsi_cfg dsi_cfg;
> -	int bpp, ret;
> +	int bpp;
>  
>  	/*
>  	 * VFP_DSI should be less than VFP_DPI and VFP_DSI should be at
> @@ -654,10 +642,6 @@ cdns_dsi_bridge_mode_valid(struct drm_bridge *bridge,
>  	if ((mode->hdisplay * bpp) % 32)
>  		return MODE_H_ILLEGAL;
>  
> -	ret = cdns_dsi_check_conf(dsi, mode, &dsi_cfg, true);
> -	if (ret)
> -		return MODE_BAD;
> -
>  	return MODE_OK;
>  }
>  
> @@ -996,7 +980,7 @@ static int cdns_dsi_bridge_atomic_check(struct drm_bridge *bridge,
>  	adjusted_crtc_mode->flags &= ~(DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC);
>  	adjusted_crtc_mode->flags |= DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC;
>  
> -	return cdns_dsi_check_conf(dsi, mode, dsi_cfg, false);
> +	return cdns_dsi_check_conf(dsi, mode, dsi_cfg);

With this patch, the driver shifts to using the crtc_* values during the
check phase, and then, it is brought back to using non crtc_* values in
the next patch.

Should this patch just drop the cdns_dsi_check_conf() check from
.mode_valid() instead, and let the next patch phase out the
mdoe_valid_check parameter as the driver simultaneously shifts to using
the non crtc_* values throughout?


-- 
Regards
Aradhya


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
