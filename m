Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01630C7EE32
	for <linux-phy@archiver.kernel.org>; Tue, 24 Jun 2025 09:04:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5S+Z4MkEN0vfzSTjhfVt5fFk91dMB0F8GTeZSlKGgBI=; b=hlPOy1fcr41vmB
	CWUvgEt7ku+1Fo/sHnhLcSHHW7OVwyF04fqhM6J3JOeGxQ2dXtKV1pSKDSe4DK2aiGEVLXNFFgXux
	8XtZ6xfprNuPj8mDYp7ndiTIDh0Qq4EC9sUmJgU+ZhpB6GPQ7Gkrl/a5WnRgdGv5Nrx5DPcRnjh9E
	waVcY+3P9dVVWP89uz6a1epZubgA8Dkt5PGxk+Ac+5fPIdl/VyBzZFl93l/sry9h69AbTxuEwiRIE
	0yd0VE+oX01TaDlqT0kvxkoFy6xaHpYUTkeNSJnH0uOozuxEz0CpHiLEePidw63gB3rPhOnPu3DBz
	rBdDYpPTtK6rPv9CnaBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTzaL-000000057R3-2alZ;
	Tue, 24 Jun 2025 09:04:57 +0000
Received: from lelvem-ot01.ext.ti.com ([198.47.23.234])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTzTo-000000056Pi-34Qs
	for linux-phy@lists.infradead.org;
	Tue, 24 Jun 2025 08:58:14 +0000
Received: from fllvem-sh04.itg.ti.com ([10.64.41.54])
	by lelvem-ot01.ext.ti.com (8.15.2/8.15.2) with ESMTP id 55O8vWP61121744;
	Tue, 24 Jun 2025 03:57:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1750755452;
	bh=2l2agDUcGCSyKxDLs6NR6MqFKMe3CHcKqyBvkrUhjTc=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=AJ25IAOluXbK+27BW9HM9nakczDJRw6UlmWurqCvM3LDSmfHmb68/bV2utH+tNtVq
	 GnapRyNIfttA2BzfuJDETkFE34uAfZj/6p2NtjOCor/NqK09HyPMot4ioXYWWTxA8l
	 whVsdRDFsf+d4uUAl2jOLqK0I3kGqW+u3yN8FMAU=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
	by fllvem-sh04.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 55O8vWww123172
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Tue, 24 Jun 2025 03:57:32 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Tue, 24
 Jun 2025 03:57:31 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Tue, 24 Jun 2025 03:57:31 -0500
Received: from [172.24.227.214] (jayesh-hp-z2-tower-g5-workstation.dhcp.ti.com [172.24.227.214])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 55O8vO1U1488786;
	Tue, 24 Jun 2025 03:57:25 -0500
Message-ID: <11d85064-1a86-4084-af7d-0e9ee03b549a@ti.com>
Date: Tue, 24 Jun 2025 14:27:23 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 15/17] drm/bridge: cdns-dsi: Fix event mode
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
 Skrabec <jernej.skrabec@gmail.com>,
        Dmitry Baryshkov <lumag@kernel.org>
CC: <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>,
        Francesco Dolcini <francesco@dolcini.it>,
        Aradhya Bhatia <aradhya.bhatia@linux.dev>,
        Devarsh Thakkar <devarsht@ti.com>,
        Parth Pancholi <parth.pancholi@toradex.com>
References: <20250618-cdns-dsi-impro-v4-0-862c841dbe02@ideasonboard.com>
 <20250618-cdns-dsi-impro-v4-15-862c841dbe02@ideasonboard.com>
Content-Language: en-US
From: Jayesh Choudhary <j-choudhary@ti.com>
In-Reply-To: <20250618-cdns-dsi-impro-v4-15-862c841dbe02@ideasonboard.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250624_015812_863756_E9B9C8A6 
X-CRM114-Status: GOOD (  15.85  )
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

On 18/06/25 15:29, Tomi Valkeinen wrote:
> The timings calculation gets it wrong for DSI event mode, resulting in
> too large hbp value. Fix the issue by taking into account the
> pulse/event mode difference.
> 
> Tested-by: Parth Pancholi <parth.pancholi@toradex.com>
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>

Reviewed-by: Jayesh Choudhary <j-choudhary@ti.com>

> ---
>   drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c | 31 +++++++++++++++++---------
>   1 file changed, 20 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
> index 07f8d5f5c2aa..3bc4d011b4c6 100644
> --- a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
> +++ b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
> @@ -418,7 +418,8 @@
>   #define DSI_OUTPUT_PORT			0
>   #define DSI_INPUT_PORT(inputid)		(1 + (inputid))
>   
> -#define DSI_HBP_FRAME_OVERHEAD		12
> +#define DSI_HBP_FRAME_PULSE_OVERHEAD	12
> +#define DSI_HBP_FRAME_EVENT_OVERHEAD	16
>   #define DSI_HSA_FRAME_OVERHEAD		14
>   #define DSI_HFP_FRAME_OVERHEAD		6
>   #define DSI_HSS_VSS_VSE_FRAME_OVERHEAD	4
> @@ -487,23 +488,31 @@ static int cdns_dsi_mode2cfg(struct cdns_dsi *dsi,
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
>   	dsi_cfg->hfp = dpi_to_dsi_timing(dpi_hfp, bpp, DSI_HFP_FRAME_OVERHEAD);
>   
> -	dsi_cfg->htotal = dsi_cfg->hbp + DSI_HBP_FRAME_OVERHEAD;
> -	if (output->dev->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE)
> -		dsi_cfg->htotal += dsi_cfg->hsa + DSI_HSA_FRAME_OVERHEAD;
> +	dsi_cfg->htotal = dsi_cfg->hact + dsi_cfg->hfp + DSI_HFP_FRAME_OVERHEAD;
>   
> -	dsi_cfg->htotal += dsi_cfg->hact;
> -	dsi_cfg->htotal += dsi_cfg->hfp + DSI_HFP_FRAME_OVERHEAD;
> +	if (sync_pulse) {
> +		dsi_cfg->htotal += dsi_cfg->hbp + DSI_HBP_FRAME_PULSE_OVERHEAD;
> +		dsi_cfg->htotal += dsi_cfg->hsa + DSI_HSA_FRAME_OVERHEAD;
> +	} else {
> +		dsi_cfg->htotal += dsi_cfg->hbp + DSI_HBP_FRAME_EVENT_OVERHEAD;
> +	}
>   
>   	return 0;
>   }
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
