Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E22CC48BF6
	for <linux-phy@archiver.kernel.org>; Thu, 22 Feb 2024 01:22:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y/xmOA3O3pkAtlAyYviNWQU9CIBtr+5NeRBglRv8kvU=; b=f1vcE2+zUI3B6M
	rQNz6F6fsFfgLCEV7AIbABcpHFK3XP818WcQF7l90hkAGg2QBWDcd0+RdwLoDW+e+tN3c4pJq4vVK
	SSbCLW/gn94eKqHsd16a3R9QYMCejSEzQpuLj408wrfqv8IFvXRro/FoyevFMJ7AeQG6/HW8/xBeV
	N+kRF3CGcoHQteiKGBBtEX95eAS9fjen7/wFjYsqCI5RGAqDekYM4gw5fD9DUE7VuZznXr+RTV5WH
	6NPC9ql0jssdg3mIGfGRwGUerqe1u9gpIUDDgdn8qn+jDkSsfR88SuOEPOHh5Ia9vJZJxFa3udRr+
	yhQOAgLe0SGeZWdxJrUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcxnG-000000038rd-1Tfr;
	Thu, 22 Feb 2024 01:22:34 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcxnE-000000038rD-1HyY
	for linux-phy@lists.infradead.org;
	Thu, 22 Feb 2024 01:22:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6532861636;
	Thu, 22 Feb 2024 01:22:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48717C433F1;
	Thu, 22 Feb 2024 01:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708564951;
	bh=8Gg4bD6vnGa/ihYXZ1047KooWejaE+1erFa2VYXuF9E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZYHtQU7Mv/GCNI0yL8RMHsMF/ZegGIuZqV+ymww3V9s7XwbHQuKONVFzVA7hoonpI
	 Jt/gLGnHD0CvJdG+Mqw5AEFnU3GgV+xkqlrOT1l0JhTkj7p18G0ZQABJIZgph8HBDR
	 Icuv+0JngsPayepXdzwql7ysTCIyE76+qJ4WOsxO2zmeIbt/oeTFqsp0rYZALvzCp6
	 P9PsjhAD3oAD/mHFbJWY/ff0T++CL8XzhNPiqQXo1Z2O5CCm/IWQAAVS+0hoDZf9Cb
	 wOOW7BfGDgkfbVPYL+8oRxyzeW8H/tSTwnRSD62aMFLrF8KrRaWpdAqCpl1woHNF9X
	 gLuN5sqBp2c7Q==
Date: Wed, 21 Feb 2024 19:22:27 -0600
From: Bjorn Andersson <andersson@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Vinod Koul <vkoul@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 1/6] drm/bridge: aux-hpd: fix OF node leaks
Message-ID: <j3t72nmsbhe6jdbnvmdsqmosokth65cpbtzoyr7rcddb5xzioa@nu5le67dpyod>
References: <20240217150228.5788-1-johan+linaro@kernel.org>
 <20240217150228.5788-2-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240217150228.5788-2-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_172232_409824_26BE830F 
X-CRM114-Status: GOOD (  15.03  )
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

On Sat, Feb 17, 2024 at 04:02:23PM +0100, Johan Hovold wrote:
> The two device node references taken during allocation need to be
> dropped when the auxiliary device is freed.
> 
> Fixes: 6914968a0b52 ("drm/bridge: properly refcount DT nodes in aux bridge drivers")
> Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Bjorn Andersson <andersson@kernel.org>

Regards,
Bjorn

> ---
>  drivers/gpu/drm/bridge/aux-hpd-bridge.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/bridge/aux-hpd-bridge.c b/drivers/gpu/drm/bridge/aux-hpd-bridge.c
> index bb55f697a181..9e71daf95bde 100644
> --- a/drivers/gpu/drm/bridge/aux-hpd-bridge.c
> +++ b/drivers/gpu/drm/bridge/aux-hpd-bridge.c
> @@ -25,6 +25,7 @@ static void drm_aux_hpd_bridge_release(struct device *dev)
>  	ida_free(&drm_aux_hpd_bridge_ida, adev->id);
>  
>  	of_node_put(adev->dev.platform_data);
> +	of_node_put(adev->dev.of_node);
>  
>  	kfree(adev);
>  }
> @@ -74,6 +75,8 @@ struct device *drm_dp_hpd_bridge_register(struct device *parent,
>  
>  	ret = auxiliary_device_init(adev);
>  	if (ret) {
> +		of_node_put(adev->dev.platform_data);
> +		of_node_put(adev->dev.of_node);
>  		ida_free(&drm_aux_hpd_bridge_ida, adev->id);
>  		kfree(adev);
>  		return ERR_PTR(ret);
> -- 
> 2.43.0
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
