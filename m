Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 995C3C369A6
	for <linux-phy@archiver.kernel.org>; Tue,  8 Apr 2025 06:12:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eogNij7OW3ZKakT4khNbfrMJ5B0s54g7kGMYnCGLpN0=; b=3dGQl8Ivpmk5nH
	zhOoQBN3JDfA/Y0+5aaAasf/XpNuIaqZNaEjlfpLw+gm0Mcx9kdy8vucff+ZJyac5KbSzQd6tLm6x
	drgJrHb9OTTHW+Uo8/tlj6Cd3jOUpEbOccL4AYk/785TfgRii2HPSHvzmoNtPnfWwbOha9TtKpWIx
	4jhVHqq9OBeRG0O8kgjqshVs+5Co8eHR8I+aUgksqkp6/jF1qIGeR7SV/Q8SuQ2gZhqCcBUFDfVSN
	6JoibI1rfk5i2czdyOh95FfYjq+RDEoqH9ltFjZybjePuL0l3qLhy74j8DciScFV1hks03nsD/QPt
	181Iju039WUtTfzp/M7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u22C1-00000002rvr-0g1C;
	Tue, 08 Apr 2025 06:12:17 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u229U-00000002rKV-3kHo
	for linux-phy@lists.infradead.org;
	Tue, 08 Apr 2025 06:09:42 +0000
Received: from [192.168.88.20] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 400BD6EC;
	Tue,  8 Apr 2025 08:07:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1744092461;
	bh=vhXBokbuWGYspCF6AqeNVcQchcJ+M8f9eehf7OIPPDc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=juup8+LdOCXqEMyUuGoBzG9MWQsEPRUhHBAm+XfxOxn/chkqQWDXRBKRNgM/Th/KB
	 5U/sxSPIt2OBqHzDhjO5Z/u8D1y1/RCZQvw4/9fVIMP44IKZ/TmbeSoaBnNeXEknEY
	 bUioxqrhH68EYYYIZz+iuQ6lMAI+C//8ozA+93wM=
Message-ID: <daa8c462-e2c7-47fa-9ccd-b72dc3c6b9cc@ideasonboard.com>
Date: Tue, 8 Apr 2025 09:09:34 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 12/18] drm/bridge: cdns-dsi: Drop checks that shouldn't
 be in .mode_valid()
To: Aradhya Bhatia <aradhya.bhatia@linux.dev>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Francesco Dolcini <francesco@dolcini.it>,
 Devarsh Thakkar <devarsht@ti.com>, Jyri Sarha <jyri.sarha@iki.fi>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>
References: <20250402-cdns-dsi-impro-v2-0-4a093eaa5e27@ideasonboard.com>
 <20250402-cdns-dsi-impro-v2-12-4a093eaa5e27@ideasonboard.com>
 <46dc6803-47f0-4434-9794-08307604e450@linux.dev>
Content-Language: en-US
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Autocrypt: addr=tomi.valkeinen@ideasonboard.com; keydata=
 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
In-Reply-To: <46dc6803-47f0-4434-9794-08307604e450@linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_230941_261165_603807CA 
X-CRM114-Status: GOOD (  20.17  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi,

On 07/04/2025 20:59, Aradhya Bhatia wrote:
> Hi Tomi,
> 
> On 02/04/25 19:00, Tomi Valkeinen wrote:
>> The docs say about mode_valid():
>>
>> "it is not allowed to look at anything else but the passed-in mode, and
>> validate it against configuration-invariant hardware constraints"
>>
>> We're doing a lot more than just looking at the mode. The main issue
>> here is that we're doing checks based on the pixel clock, before we know
>> what the pixel clock from the crtc actually is.
>>
>> So, drop the checks from .mode_valid(). This also allows us to remove
>> the 'mode_valid_check' parameter from internal functions, and the
>> related code.
>>
>> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
>> ---
>>   drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c | 44 ++++++++------------------
>>   1 file changed, 14 insertions(+), 30 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
>> index e85c8652c96e..cf783680b1b4 100644
>> --- a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
>> +++ b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
>> @@ -469,25 +469,17 @@ static unsigned int dpi_to_dsi_timing(unsigned int dpi_timing,
>>   
>>   static int cdns_dsi_mode2cfg(struct cdns_dsi *dsi,
>>   			     const struct drm_display_mode *mode,
>> -			     struct cdns_dsi_cfg *dsi_cfg,
>> -			     bool mode_valid_check)
>> +			     struct cdns_dsi_cfg *dsi_cfg)
>>   {
>>   	struct cdns_dsi_output *output = &dsi->output;
>>   	u32 dpi_hsa, dpi_hbp, dpi_hfp, dpi_hact;
>>   	bool sync_pulse;
>>   	int bpp;
>>   
>> -	if (mode_valid_check) {
>> -		dpi_hsa = mode->hsync_end - mode->hsync_start;
>> -		dpi_hbp = mode->htotal - mode->hsync_end;
>> -		dpi_hfp = mode->hsync_start - mode->hdisplay;
>> -		dpi_hact = mode->hdisplay;
>> -	} else {
>> -		dpi_hsa = mode->crtc_hsync_end - mode->crtc_hsync_start;
>> -		dpi_hbp = mode->crtc_htotal - mode->crtc_hsync_end;
>> -		dpi_hfp =  mode->crtc_hsync_start - mode->crtc_hdisplay;
>> -		dpi_hact = mode->crtc_hdisplay;
>> -	}
>> +	dpi_hsa = mode->crtc_hsync_end - mode->crtc_hsync_start;
>> +	dpi_hbp = mode->crtc_htotal - mode->crtc_hsync_end;
>> +	dpi_hfp =  mode->crtc_hsync_start - mode->crtc_hdisplay;
>> +	dpi_hact = mode->crtc_hdisplay;
>>   
>>   	memset(dsi_cfg, 0, sizeof(*dsi_cfg));
>>   
>> @@ -518,8 +510,7 @@ static int cdns_dsi_mode2cfg(struct cdns_dsi *dsi,
>>   static int cdns_dsi_adjust_phy_config(struct cdns_dsi *dsi,
>>   			      struct cdns_dsi_cfg *dsi_cfg,
>>   			      struct phy_configure_opts_mipi_dphy *phy_cfg,
>> -			      const struct drm_display_mode *mode,
>> -			      bool mode_valid_check)
>> +			      const struct drm_display_mode *mode)
>>   {
>>   	struct cdns_dsi_output *output = &dsi->output;
>>   	unsigned long long dlane_bps;
>> @@ -549,11 +540,11 @@ static int cdns_dsi_adjust_phy_config(struct cdns_dsi *dsi,
>>   	if (dsi_htotal % lanes)
>>   		adj_dsi_htotal += lanes - (dsi_htotal % lanes);
>>   
>> -	dpi_hz = (mode_valid_check ? mode->clock : mode->crtc_clock) * 1000;
>> +	dpi_hz = mode->crtc_clock * 1000;
>>   	dlane_bps = (unsigned long long)dpi_hz * adj_dsi_htotal;
>>   
>>   	/* data rate in bytes/sec is not an integer, refuse the mode. */
>> -	dpi_htotal = mode_valid_check ? mode->htotal : mode->crtc_htotal;
>> +	dpi_htotal = mode->crtc_htotal;
>>   	if (do_div(dlane_bps, lanes * dpi_htotal))
>>   		return -EINVAL;
>>   
>> @@ -569,27 +560,25 @@ static int cdns_dsi_adjust_phy_config(struct cdns_dsi *dsi,
>>   
>>   static int cdns_dsi_check_conf(struct cdns_dsi *dsi,
>>   			       const struct drm_display_mode *mode,
>> -			       struct cdns_dsi_cfg *dsi_cfg,
>> -			       bool mode_valid_check)
>> +			       struct cdns_dsi_cfg *dsi_cfg)
>>   {
>>   	struct cdns_dsi_output *output = &dsi->output;
>>   	struct phy_configure_opts_mipi_dphy *phy_cfg = &output->phy_opts.mipi_dphy;
>>   	unsigned int nlanes = output->dev->lanes;
>> -	int mode_clock = (mode_valid_check ? mode->clock : mode->crtc_clock);
>>   	unsigned long req_hs_clk_rate;
>>   	int ret;
>>   
>> -	ret = cdns_dsi_mode2cfg(dsi, mode, dsi_cfg, mode_valid_check);
>> +	ret = cdns_dsi_mode2cfg(dsi, mode, dsi_cfg);
>>   	if (ret)
>>   		return ret;
>>   
>> -	ret = phy_mipi_dphy_get_default_config(mode_clock * 1000,
>> +	ret = phy_mipi_dphy_get_default_config(mode->crtc_clock * 1000,
>>   					       mipi_dsi_pixel_format_to_bpp(output->dev->format),
>>   					       nlanes, phy_cfg);
>>   	if (ret)
>>   		return ret;
>>   
>> -	ret = cdns_dsi_adjust_phy_config(dsi, dsi_cfg, phy_cfg, mode, mode_valid_check);
>> +	ret = cdns_dsi_adjust_phy_config(dsi, dsi_cfg, phy_cfg, mode);
>>   	if (ret)
>>   		return ret;
>>   
>> @@ -635,8 +624,7 @@ cdns_dsi_bridge_mode_valid(struct drm_bridge *bridge,
>>   	struct cdns_dsi_input *input = bridge_to_cdns_dsi_input(bridge);
>>   	struct cdns_dsi *dsi = input_to_dsi(input);
>>   	struct cdns_dsi_output *output = &dsi->output;
>> -	struct cdns_dsi_cfg dsi_cfg;
>> -	int bpp, ret;
>> +	int bpp;
>>   
>>   	/*
>>   	 * VFP_DSI should be less than VFP_DPI and VFP_DSI should be at
>> @@ -654,10 +642,6 @@ cdns_dsi_bridge_mode_valid(struct drm_bridge *bridge,
>>   	if ((mode->hdisplay * bpp) % 32)
>>   		return MODE_H_ILLEGAL;
>>   
>> -	ret = cdns_dsi_check_conf(dsi, mode, &dsi_cfg, true);
>> -	if (ret)
>> -		return MODE_BAD;
>> -
>>   	return MODE_OK;
>>   }
>>   
>> @@ -996,7 +980,7 @@ static int cdns_dsi_bridge_atomic_check(struct drm_bridge *bridge,
>>   	adjusted_crtc_mode->flags &= ~(DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC);
>>   	adjusted_crtc_mode->flags |= DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC;
>>   
>> -	return cdns_dsi_check_conf(dsi, mode, dsi_cfg, false);
>> +	return cdns_dsi_check_conf(dsi, mode, dsi_cfg);
> 
> With this patch, the driver shifts to using the crtc_* values during the
> check phase, and then, it is brought back to using non crtc_* values in
> the next patch.
> 
> Should this patch just drop the cdns_dsi_check_conf() check from
> .mode_valid() instead, and let the next patch phase out the
> mdoe_valid_check parameter as the driver simultaneously shifts to using
> the non crtc_* values throughout?

Yes.

  Tomi


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
