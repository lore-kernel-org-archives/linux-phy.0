Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EE0BC48BF6
	for <linux-phy@archiver.kernel.org>; Thu, 22 Feb 2024 02:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V/nfzsHF1nd1o00DN0LjfaPQNen13zcmrWvAZJuyGXI=; b=hyr/FdA4Ut+ZOe
	Y9J233CtY8ruYuccyi1g6odGXcw1mKA+ShamLJsEoj/nEDe8y31AbSRfz0w4ivEDhNDbhZTLs1hfk
	3dp/ddaSFj9PPXpC0exedjAGMct0il/l9uFim81+pS1V6u3PYcIdLc37TYIOEc2PHvMwSqee5Fmbv
	+KQnr2HDPqtDKgdY+0k8bfzMVlmazAm/eytU2mWm4sJK/oyKccTT4ahigU25JIY8QiNKJCStiwN9i
	tSatVXQASRSDLbvBs92+q/jIL1oMk4amTxLcuwxjQKs/UDkHIUS1jcLDDN+1xEDEareaNc6dcLhq4
	0u/fuZkmRtnwS/vdmNTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcyZ4-00000003Djz-0SgL;
	Thu, 22 Feb 2024 02:11:58 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcyZ1-00000003DiJ-2RCP
	for linux-phy@lists.infradead.org;
	Thu, 22 Feb 2024 02:11:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id AF8DECE20F1;
	Thu, 22 Feb 2024 02:11:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2220AC433C7;
	Thu, 22 Feb 2024 02:11:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708567912;
	bh=M/LNj2djdadRBLnihuPfV+nXCo2lDk/by1hjZhfOOrE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ceMt1Rzd7rPR2fLcW0o6/G3AO0GuPW5KiJezWHudADeCnPdFtLXVnCb9mMc7A0+U8
	 LYhGkJToiZ26la2+nbSBXbbost77718rd4igDO0r8tptdBhPZ9fxI8Pb9wDQy+LNNM
	 jTDvvToQCZx46T0YjsNveqqMbGLkNW4deTOEmlZaoFwPXGta4EuPcaXxU8/gRpkQ15
	 Dtaz7toKwvoJCuPxZjqjyRiR1FGMuGq6+oRNP1kyOnnkjkCSMhYbI80u9b8NW1DtmQ
	 v/CT4QiXs8ub4oNyZka5FYYmP3I96LXkSChg+kLRhSEGwPyUChDVu4epzdN1CajMkB
	 g2YhTUd/+LB6Q==
Date: Wed, 21 Feb 2024 20:11:49 -0600
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
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, stable@vger.kernel.org
Subject: Re: [PATCH 3/6] soc: qcom: pmic_glink_altmode: fix drm bridge
 use-after-free
Message-ID: <qtin352q26twl3fjhqkpz3mczgb4i4fxaacpecl4fk55mwgmaz@varmvcitzx3a>
References: <20240217150228.5788-1-johan+linaro@kernel.org>
 <20240217150228.5788-4-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240217150228.5788-4-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_181156_000294_1FB6C1B8 
X-CRM114-Status: GOOD (  30.28  )
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

On Sat, Feb 17, 2024 at 04:02:25PM +0100, Johan Hovold wrote:
> A recent DRM series purporting to simplify support for "transparent
> bridges" and handling of probe deferrals ironically exposed a
> use-after-free issue on pmic_glink_altmode probe deferral.
> 
> This has manifested itself as the display subsystem occasionally failing
> to initialise and NULL-pointer dereferences during boot of machines like
> the Lenovo ThinkPad X13s.
> 
> Specifically, the dp-hpd bridge is currently registered before all
> resources have been acquired which means that it can also be
> deregistered on probe deferrals.
> 
> In the meantime there is a race window where the new aux bridge driver
> (or PHY driver previously) may have looked up the dp-hpd bridge and
> stored a (non-reference-counted) pointer to the bridge which is about to
> be deallocated.
> 
> When the display controller is later initialised, this triggers a
> use-after-free when attaching the bridges:
> 
> 	dp -> aux -> dp-hpd (freed)
> 
> which may, for example, result in the freed bridge failing to attach:
> 
> 	[drm:drm_bridge_attach [drm]] *ERROR* failed to attach bridge /soc@0/phy@88eb000 to encoder TMDS-31: -16
> 
> or a NULL-pointer dereference:
> 
> 	Unable to handle kernel NULL pointer dereference at virtual address 0000000000000000
> 	...
> 	Call trace:
> 	  drm_bridge_attach+0x70/0x1a8 [drm]
> 	  drm_aux_bridge_attach+0x24/0x38 [aux_bridge]
> 	  drm_bridge_attach+0x80/0x1a8 [drm]
> 	  dp_bridge_init+0xa8/0x15c [msm]
> 	  msm_dp_modeset_init+0x28/0xc4 [msm]
> 
> The DRM bridge implementation is clearly fragile and implicitly built on
> the assumption that bridges may never go away. In this case, the fix is
> to move the bridge registration in the pmic_glink_altmode driver to
> after all resources have been looked up.
> 
> Incidentally, with the new dp-hpd bridge implementation, which registers
> child devices, this is also a requirement due to a long-standing issue
> in driver core that can otherwise lead to a probe deferral loop (see
> fbc35b45f9f6 ("Add documentation on meaning of -EPROBE_DEFER")).
> 
> Fixes: 080b4e24852b ("soc: qcom: pmic_glink: Introduce altmode support")
> Fixes: 2bcca96abfbf ("soc: qcom: pmic-glink: switch to DRM_AUX_HPD_BRIDGE")
> Cc: stable@vger.kernel.org      # 6.3
> Cc: Bjorn Andersson <andersson@kernel.org>
> Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Bjorn Andersson <andersson@kernel.org>

Regards,
Bjorn

> ---
>  drivers/soc/qcom/pmic_glink_altmode.c | 16 +++++++++++++---
>  1 file changed, 13 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/soc/qcom/pmic_glink_altmode.c b/drivers/soc/qcom/pmic_glink_altmode.c
> index 5fcd0fdd2faa..b3808fc24c69 100644
> --- a/drivers/soc/qcom/pmic_glink_altmode.c
> +++ b/drivers/soc/qcom/pmic_glink_altmode.c
> @@ -76,7 +76,7 @@ struct pmic_glink_altmode_port {
>  
>  	struct work_struct work;
>  
> -	struct device *bridge;
> +	struct auxiliary_device *bridge;
>  
>  	enum typec_orientation orientation;
>  	u16 svid;
> @@ -230,7 +230,7 @@ static void pmic_glink_altmode_worker(struct work_struct *work)
>  	else
>  		pmic_glink_altmode_enable_usb(altmode, alt_port);
>  
> -	drm_aux_hpd_bridge_notify(alt_port->bridge,
> +	drm_aux_hpd_bridge_notify(&alt_port->bridge->dev,
>  				  alt_port->hpd_state ?
>  				  connector_status_connected :
>  				  connector_status_disconnected);
> @@ -454,7 +454,7 @@ static int pmic_glink_altmode_probe(struct auxiliary_device *adev,
>  		alt_port->index = port;
>  		INIT_WORK(&alt_port->work, pmic_glink_altmode_worker);
>  
> -		alt_port->bridge = drm_dp_hpd_bridge_register(dev, to_of_node(fwnode));
> +		alt_port->bridge = devm_drm_dp_hpd_bridge_alloc(dev, to_of_node(fwnode));
>  		if (IS_ERR(alt_port->bridge)) {
>  			fwnode_handle_put(fwnode);
>  			return PTR_ERR(alt_port->bridge);
> @@ -510,6 +510,16 @@ static int pmic_glink_altmode_probe(struct auxiliary_device *adev,
>  		}
>  	}
>  
> +	for (port = 0; port < ARRAY_SIZE(altmode->ports); port++) {
> +		alt_port = &altmode->ports[port];
> +		if (!alt_port->bridge)
> +			continue;
> +
> +		ret = devm_drm_dp_hpd_bridge_add(dev, alt_port->bridge);
> +		if (ret)
> +			return ret;
> +	}
> +
>  	altmode->client = devm_pmic_glink_register_client(dev,
>  							  altmode->owner_id,
>  							  pmic_glink_altmode_callback,
> -- 
> 2.43.0
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
