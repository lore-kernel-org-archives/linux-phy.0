Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE997C369A8
	for <linux-phy@archiver.kernel.org>; Fri, 11 Apr 2025 11:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sz3276WM6slohXPS08EfKpJv35SlQWDp9pXKBbDEr5M=; b=w3NjlS44dutOSd
	m7HbUs8q1sTqEEYf4uEppRiG1pIfjldIsTp3RBBEff5cVplGQR0Ybu1k3x0SK/kn34EPSDjtePtI0
	50oMOt2q2NBP5ChVhQh2tueCT7MF2jIGQ7IwJoHpuiIwAw+0XIsmSGcNrTxy+kT0wYbzpIbQdoIYO
	KuNBMTQUeiftIPzzxGwZGor4HpSQoBUTQcnOCYVH81emkfAEcVPfj3Qptw+f9+65UsQxI4lrksM5J
	eeu4aVLBDHI7TQPYZbj6uZrhQ72IktPbhFDXr6WJJksDj6i3uTqkrFjwRI0NLIEycV9q6uj9HT93O
	RO7qDqNTLxDpnruCIoHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3CQ7-0000000DVkR-2sif;
	Fri, 11 Apr 2025 11:19:39 +0000
Received: from fllvem-ot04.ext.ti.com ([198.47.19.246])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3CCc-0000000DSuZ-33U1
	for linux-phy@lists.infradead.org;
	Fri, 11 Apr 2025 11:05:44 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllvem-ot04.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 53BB4jYZ2106336
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 11 Apr 2025 06:04:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1744369486;
	bh=i+gloN32aTctMyYVY8o5DLDdWWJ4UCqYZXXvoBTDYI8=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=muCjlfpLevMlxfx1lzbBdxLjtIXk9wZy688HJhcvvW7+MfRN7EZehMeoPVzRYUemZ
	 fOblX2MEKavuBlu8mjdyOARu+XcNdyRHRtVGEBxLqAqQ3PcxJFMJ/xeJMRlNN1s2CC
	 4ca9wNPoBZtpV94lW8UkiaDMJa0JfIgYP3WSxz2c=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 53BB4j5S118132
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 11 Apr 2025 06:04:45 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 11
 Apr 2025 06:04:45 -0500
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 11 Apr 2025 06:04:45 -0500
Received: from [10.24.72.182] (jayesh-hp-z2-tower-g5-workstation.dhcp.ti.com [10.24.72.182])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 53BB4de0063402;
	Fri, 11 Apr 2025 06:04:40 -0500
Message-ID: <eb4729f4-2f1b-49ca-ab01-4afca321e4a1@ti.com>
Date: Fri, 11 Apr 2025 16:34:38 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 10/18] drm/bridge: cdns-dsi: Fix event mode
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
        Jyri Sarha
	<jyri.sarha@iki.fi>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Vinod Koul
	<vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Andrzej Hajda
	<andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert
 Foss <rfoss@kernel.org>,
        Laurent Pinchart
	<Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej
 Skrabec <jernej.skrabec@gmail.com>
CC: <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>,
        Francesco Dolcini <francesco@dolcini.it>,
        Aradhya Bhatia <aradhya.bhatia@linux.dev>,
        Devarsh Thakkar <devarsht@ti.com>
References: <20250402-cdns-dsi-impro-v2-0-4a093eaa5e27@ideasonboard.com>
 <20250402-cdns-dsi-impro-v2-10-4a093eaa5e27@ideasonboard.com>
Content-Language: en-US
From: Jayesh Choudhary <j-choudhary@ti.com>
In-Reply-To: <20250402-cdns-dsi-impro-v2-10-4a093eaa5e27@ideasonboard.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_040542_861081_41E36F69 
X-CRM114-Status: GOOD (  17.93  )
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

Hello Tomi,

On 02/04/25 19:00, Tomi Valkeinen wrote:
> The timings calculation gets it wrong for DSI event mode, resulting in
> too large hbp value. Fix the issue by taking into account the
> pulse/event mode difference.
> 
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>

Reviewed-by: Jayesh Choudhary <j-choudhary@ti.com>

> ---
>   drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c | 33 ++++++++++++++++++--------
>   1 file changed, 23 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
> index 62811631341b..9797e6faa29d 100644
> --- a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
> +++ b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
> @@ -417,7 +417,8 @@
>   #define DSI_OUTPUT_PORT			0
>   #define DSI_INPUT_PORT(inputid)		(1 + (inputid))
>   
> -#define DSI_HBP_FRAME_OVERHEAD		12
> +#define DSI_HBP_FRAME_PULSE_OVERHEAD	12
> +#define DSI_HBP_FRAME_EVENT_OVERHEAD	16


I have also observed this 4B discrepancy for event-mode after comparing
the dsi packet sizes for each line type as per the dsi specifications.

>   #define DSI_HSA_FRAME_OVERHEAD		14
>   #define DSI_HFP_FRAME_OVERHEAD		6
>   #define DSI_HSS_VSS_VSE_FRAME_OVERHEAD	4
> @@ -503,12 +504,18 @@ static int cdns_dsi_mode2cfg(struct cdns_dsi *dsi,
>   
>   	bpp = mipi_dsi_pixel_format_to_bpp(output->dev->format);
>   
> -	dsi_cfg->hbp = dpi_to_dsi_timing(dpi_hbp + (sync_pulse ? 0 : dpi_hsa),
> -					 bpp, DSI_HBP_FRAME_OVERHEAD);
> +	if (sync_pulse) {
> +		dsi_cfg->hbp = dpi_to_dsi_timing(dpi_hbp, bpp,
> +						 DSI_HBP_FRAME_PULSE_OVERHEAD);
>   
> -	if (sync_pulse)
> -		dsi_cfg->hsa =
> -			dpi_to_dsi_timing(dpi_hsa, bpp, DSI_HSA_FRAME_OVERHEAD);
> +		dsi_cfg->hsa = dpi_to_dsi_timing(dpi_hsa, bpp,
> +						 DSI_HSA_FRAME_OVERHEAD);
> +	} else {
> +		dsi_cfg->hbp = dpi_to_dsi_timing(dpi_hbp + dpi_hsa, bpp,
> +						 DSI_HBP_FRAME_EVENT_OVERHEAD);
> +
> +		dsi_cfg->hsa = 0;
> +	}
>   
>   	dsi_cfg->hact = dpi_to_dsi_timing(dpi_hact, bpp, 0);
>   
> @@ -532,9 +539,12 @@ static int cdns_dsi_adjust_phy_config(struct cdns_dsi *dsi,
>   	unsigned int dsi_hfp_ext;
>   	unsigned int lanes = output->dev->lanes;
>   
> -	dsi_htotal = dsi_cfg->hbp + DSI_HBP_FRAME_OVERHEAD;
> -	if (output->dev->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE)
> +	if (output->dev->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE) {
> +		dsi_htotal = dsi_cfg->hbp + DSI_HBP_FRAME_PULSE_OVERHEAD;
>   		dsi_htotal += dsi_cfg->hsa + DSI_HSA_FRAME_OVERHEAD;
> +	} else {
> +		dsi_htotal = dsi_cfg->hbp + DSI_HBP_FRAME_EVENT_OVERHEAD;
> +	}
>   
>   	dsi_htotal += dsi_cfg->hact;
>   	dsi_htotal += dsi_cfg->hfp + DSI_HFP_FRAME_OVERHEAD;
> @@ -607,9 +617,12 @@ static int cdns_dsi_check_conf(struct cdns_dsi *dsi,
>   		return -EINVAL;
>   	}
>   
> -	dsi_hss_hsa_hse_hbp = dsi_cfg->hbp + DSI_HBP_FRAME_OVERHEAD;
> -	if (output->dev->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE)
> +	if (output->dev->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE) {
> +		dsi_hss_hsa_hse_hbp = dsi_cfg->hbp + DSI_HBP_FRAME_PULSE_OVERHEAD;
>   		dsi_hss_hsa_hse_hbp += dsi_cfg->hsa + DSI_HSA_FRAME_OVERHEAD;
> +	} else {
> +		dsi_hss_hsa_hse_hbp = dsi_cfg->hbp + DSI_HBP_FRAME_EVENT_OVERHEAD;
> +	}
>   
>   	/*
>   	 * Make sure DPI(HFP) > DSI(HSS+HSA+HSE+HBP) to guarantee that the FIFO
> 

Thanks,
Jayesh

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
