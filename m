Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED014C83F1B
	for <linux-phy@archiver.kernel.org>; Thu, 17 Jul 2025 09:41:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SMOjcNr73DZXL/4ejHCsSiEhPQ9mpLqG+bdQnctNIJI=; b=gnKhgudCkT5hqs
	GMNaXO1vUkEP+Wj3u/ffBYCzWaBOFlBnWLQ9E5Txmj6KCjAD0dNmwsN/rkADCUhT8vCtSkyUV/JQX
	ozBLxPRet6nYeQkzS3jbA1GdHfi4zhTxL9ud8k9hpfgGh3g9HgRPr6o9PgHewVBySP3OJaZgi6D5A
	s5bt0VX6+w8r7IWMidoowZmqSz+t1XANUDPWaGpVNdQGbVDvRrD9CPbj+pvYmEKRdOSAYP0z74qJw
	zQujxU1bGto6rHD65PawuUtdSjN/h24RpAr3c3r5luTjyleD/8p7D6PTnG7zp885jmFIe9PejAtDd
	Ny1ZWQoBhSksRb7G0VfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucL7N-00000009lS6-33OS;
	Thu, 17 Jul 2025 09:41:33 +0000
Received: from lelvem-ot01.ext.ti.com ([198.47.23.234])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucL3e-00000009kBm-1vft
	for linux-phy@lists.infradead.org;
	Thu, 17 Jul 2025 09:37:43 +0000
Received: from lelvem-sh02.itg.ti.com ([10.180.78.226])
	by lelvem-ot01.ext.ti.com (8.15.2/8.15.2) with ESMTP id 56H9b60e2705714;
	Thu, 17 Jul 2025 04:37:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1752745026;
	bh=grVloWar2O621fo+lHDBYQS6zJaquwGGstUgJpQKtxI=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=bqWLdI83FpU0lpfxPEaArnuH/G6gIqCUioxaySxEYehblTjj1rEGffjtNwJhNDC7x
	 GIGPl4rGSOjYyF4bWbpIai6ox4QPEhcWgWDjeceje+nkyXfR7ddQB6M6jipgM7OcoW
	 IaK4tvBOmfm1d4DyTRiUjKIlH6ujF0GWx2n1Hg/A=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
	by lelvem-sh02.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 56H9b5Io2698835
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Thu, 17 Jul 2025 04:37:05 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Thu, 17
 Jul 2025 04:37:05 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Thu, 17 Jul 2025 04:37:05 -0500
Received: from [172.24.227.193] (devarsh-precision-tower-3620.dhcp.ti.com [172.24.227.193])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 56H9awA31949552;
	Thu, 17 Jul 2025 04:36:59 -0500
Message-ID: <8728de80-f154-46fa-a8a6-da40cb5fdc65@ti.com>
Date: Thu, 17 Jul 2025 15:06:58 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 17/17] drm/bridge: cdns-dsi: Don't fail on
 MIPI_DSI_MODE_VIDEO_BURST
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
        Jayesh Choudhary <j-choudhary@ti.com>,
        Dmitry Baryshkov <lumag@kernel.org>
CC: <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>,
        Francesco Dolcini <francesco@dolcini.it>,
        Aradhya Bhatia <aradhya.bhatia@linux.dev>,
        Parth Pancholi
	<parth.pancholi@toradex.com>
References: <20250618-cdns-dsi-impro-v4-0-862c841dbe02@ideasonboard.com>
 <20250618-cdns-dsi-impro-v4-17-862c841dbe02@ideasonboard.com>
Content-Language: en-US
From: Devarsh Thakkar <devarsht@ti.com>
In-Reply-To: <20250618-cdns-dsi-impro-v4-17-862c841dbe02@ideasonboard.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250717_023742_591085_448229D5 
X-CRM114-Status: GOOD (  22.50  )
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

Hi Tomi

Thanks for the patch.

On 18/06/25 15:29, Tomi Valkeinen wrote:
> While the cdns-dsi does not support DSI burst mode, the burst mode is
> essentially DSI event mode with more versatile clocking and timings.
I don't fully agree with this statement, DSI burst mode and DSI event 
mode are two different things having separate requirements. DSI burst 
mode maps to MIPI_DSI_MODE_VIDEO_BURST. I don't see a separate flag for 
event mode but I guess,

> Thus cdns-dsi doesn't need to fail if the DSI peripheral driver requests
> MIPI_DSI_MODE_VIDEO_BURST.

MIPI_DSI_MODE_VIDEO_BURST is currently not supported by the cadence DSI 
host driver, so only if DSI peripheral driver is saying that burst mode 
is the only one it supports in that case only we should fail.

> 
> In my particular use case, this allows the use of ti-sn65dsi83 driver.
> 
> Tested-by: Parth Pancholi <parth.pancholi@toradex.com>
> Tested-by: Jayesh Choudhary <j-choudhary@ti.com>
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
> ---
>   drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c | 4 ----
>   1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
> index 114d883c65dc..09b289f0fcbf 100644
> --- a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
> +++ b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
> @@ -1052,10 +1052,6 @@ static int cdns_dsi_attach(struct mipi_dsi_host *host,
>   	if (output->dev)
>   		return -EBUSY;
>   
> -	/* We do not support burst mode yet. */
> -	if (dev->mode_flags & MIPI_DSI_MODE_VIDEO_BURST)
> -		return -ENOTSUPP;
> -

Removing this check also gives a false impression that burst mode is 
supported by the driver and can also lead to failures too in case device 
is only supporting burst mode.

I think it makes sense to fail only if burst mode is the only one being 
supported by the device, something like below should work I believe,

if (dev->mode_flags & MIPI_DSI_MODE_VIDEO_BURST == 
MIPI_DSI_MODE_VIDEO_BURST)
		return -ENOTSUPP;

Regards
Devarsh

>   	/*
>   	 * The host <-> device link might be described using an OF-graph
>   	 * representation, in this case we extract the device of_node from
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
