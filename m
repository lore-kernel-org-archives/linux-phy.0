Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6260C001DF
	for <linux-phy@archiver.kernel.org>; Wed,  2 Aug 2023 11:00:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kqZrgBAZQ/1rn8V7PDEKa/Z/sUZLG1DnN8ym342UaVQ=; b=AVbAo/aiN8loom
	Pb3ES7eafmeUXUE2tb9LfNRjrCtT4GDhlJinjd02Sf7/cn3Kx3YkgxCr5hbUdbTWMYHgkMLzfzsJa
	IhKafxKWg0qx/drM+MQtG9w53TGc3+/GL7MMT4d43HCOr5sCmy76eMGyRRyuAAaWXJ8opGS8NTMc0
	sWGZnCj6hu2IY8o8OUde2VcKM4Vb3wkRUTRGMa5McheULgiGWavTWrvKS2625J3fSndGeR8O7YH0o
	JSBw4aUSRr+mloN5oMLzvfT6zDXGol4j5wayA1PiAI7F0ctheK+7N5XaiGyjbnAPFZIpLxaE5ggTv
	7gl2pr1JS7jMqbZFQUdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qR9aq-004iWx-1i;
	Wed, 02 Aug 2023 11:00:40 +0000
Received: from mgamail.intel.com ([134.134.136.20])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qR9ao-004iNC-0Y
	for linux-phy@lists.infradead.org;
	Wed, 02 Aug 2023 11:00:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1690974038; x=1722510038;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=uL/lMcoIpmA8jyiK1UfZfDEuaaCRn/1fGgpNmc5qjng=;
  b=KWYP46173H7xBbsl7vsfa2gZiJpDEGDZc8A/DLE04pNehqYOTz88Lcu6
   rluBihzuc2clBC0T4zHii9M3XmxRPA2Z/uHgrV+YKhSG4SayHFKQMCPJ0
   X+K4hgRYSrvBVGUyhQRMXf8M4PVeFT8SaMfXP+VdwfsyXOubTN7k9IsNR
   cRndOc134u6izhm4QzkPXLt2rU3VccJK6qnF1mVjyWuADldGSOXfIOj2V
   5PsdSaNeaTrVrIBKwUgDcWc91L8XJ5/FOps3A1NeC9JBFGD1IJAZnmIm8
   zyFMtu1rbknkgL5PGdgYFN6XdpUdIzQgvTr+G3e5pzcgYHYZX3ZiYsaDC
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="359589898"
X-IronPort-AV: E=Sophos;i="6.01,249,1684825200"; 
   d="scan'208";a="359589898"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Aug 2023 04:00:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; 
   d="scan'208";a="872438426"
Received: from kuha.fi.intel.com ([10.237.72.185])
  by fmsmga001.fm.intel.com with SMTP; 02 Aug 2023 04:00:19 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation); Wed, 02 Aug 2023 14:00:16 +0300
Date: Wed, 2 Aug 2023 14:00:16 +0300
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
	freedreno@lists.freedesktop.org
Subject: Re: [PATCH v3 3/3] usb: typec: nb7vpq904m: switch to
 DRM_SIMPLE_BRIDGE
Message-ID: <ZMo3QDym4Nteu8Tj@kuha.fi.intel.com>
References: <20230802011845.4176631-1-dmitry.baryshkov@linaro.org>
 <20230802011845.4176631-4-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230802011845.4176631-4-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230802_040038_258190_37AAFD25 
X-CRM114-Status: GOOD (  23.90  )
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

On Wed, Aug 02, 2023 at 04:18:45AM +0300, Dmitry Baryshkov wrote:
> Switch to using the new DRM_SIMPLE_BRIDGE helper to create the
> transparent DRM bridge device instead of handcoding corresponding
> functionality.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>

> ---
>  drivers/usb/typec/mux/Kconfig      |  2 +-
>  drivers/usb/typec/mux/nb7vpq904m.c | 44 ++----------------------------
>  2 files changed, 3 insertions(+), 43 deletions(-)
> 
> diff --git a/drivers/usb/typec/mux/Kconfig b/drivers/usb/typec/mux/Kconfig
> index 784b9d8107e9..350a7ffce67e 100644
> --- a/drivers/usb/typec/mux/Kconfig
> +++ b/drivers/usb/typec/mux/Kconfig
> @@ -39,7 +39,7 @@ config TYPEC_MUX_NB7VPQ904M
>  	tristate "On Semiconductor NB7VPQ904M Type-C redriver driver"
>  	depends on I2C
>  	depends on DRM || DRM=n
> -	select DRM_PANEL_BRIDGE if DRM
> +	select DRM_SIMPLE_BRIDGE if DRM
>  	select REGMAP_I2C
>  	help
>  	  Say Y or M if your system has a On Semiconductor NB7VPQ904M Type-C
> diff --git a/drivers/usb/typec/mux/nb7vpq904m.c b/drivers/usb/typec/mux/nb7vpq904m.c
> index 9360b65e8b06..c89a956412ea 100644
> --- a/drivers/usb/typec/mux/nb7vpq904m.c
> +++ b/drivers/usb/typec/mux/nb7vpq904m.c
> @@ -11,7 +11,7 @@
>  #include <linux/regmap.h>
>  #include <linux/bitfield.h>
>  #include <linux/of_graph.h>
> -#include <drm/drm_bridge.h>
> +#include <drm/display/drm_simple_bridge.h>
>  #include <linux/usb/typec_dp.h>
>  #include <linux/usb/typec_mux.h>
>  #include <linux/usb/typec_retimer.h>
> @@ -70,8 +70,6 @@ struct nb7vpq904m {
>  	bool swap_data_lanes;
>  	struct typec_switch *typec_switch;
>  
> -	struct drm_bridge bridge;
> -
>  	struct mutex lock; /* protect non-concurrent retimer & switch */
>  
>  	enum typec_orientation orientation;
> @@ -297,44 +295,6 @@ static int nb7vpq904m_retimer_set(struct typec_retimer *retimer, struct typec_re
>  	return ret;
>  }
>  
> -#if IS_ENABLED(CONFIG_OF) && IS_ENABLED(CONFIG_DRM_PANEL_BRIDGE)
> -static int nb7vpq904m_bridge_attach(struct drm_bridge *bridge,
> -				    enum drm_bridge_attach_flags flags)
> -{
> -	struct nb7vpq904m *nb7 = container_of(bridge, struct nb7vpq904m, bridge);
> -	struct drm_bridge *next_bridge;
> -
> -	if (!(flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR))
> -		return -EINVAL;
> -
> -	next_bridge = devm_drm_of_get_bridge(&nb7->client->dev, nb7->client->dev.of_node, 0, 0);
> -	if (IS_ERR(next_bridge)) {
> -		dev_err(&nb7->client->dev, "failed to acquire drm_bridge: %pe\n", next_bridge);
> -		return PTR_ERR(next_bridge);
> -	}
> -
> -	return drm_bridge_attach(bridge->encoder, next_bridge, bridge,
> -				 DRM_BRIDGE_ATTACH_NO_CONNECTOR);
> -}
> -
> -static const struct drm_bridge_funcs nb7vpq904m_bridge_funcs = {
> -	.attach	= nb7vpq904m_bridge_attach,
> -};
> -
> -static int nb7vpq904m_register_bridge(struct nb7vpq904m *nb7)
> -{
> -	nb7->bridge.funcs = &nb7vpq904m_bridge_funcs;
> -	nb7->bridge.of_node = nb7->client->dev.of_node;
> -
> -	return devm_drm_bridge_add(&nb7->client->dev, &nb7->bridge);
> -}
> -#else
> -static int nb7vpq904m_register_bridge(struct nb7vpq904m *nb7)
> -{
> -	return 0;
> -}
> -#endif
> -
>  static const struct regmap_config nb7_regmap = {
>  	.max_register = 0x1f,
>  	.reg_bits = 8,
> @@ -461,7 +421,7 @@ static int nb7vpq904m_probe(struct i2c_client *client)
>  
>  	gpiod_set_value(nb7->enable_gpio, 1);
>  
> -	ret = nb7vpq904m_register_bridge(nb7);
> +	ret = drm_simple_bridge_register(dev);
>  	if (ret)
>  		return ret;
>  
> -- 
> 2.39.2

-- 
heikki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
