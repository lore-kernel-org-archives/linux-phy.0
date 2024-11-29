Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDB73D6EC0B
	for <linux-phy@archiver.kernel.org>; Fri, 29 Nov 2024 13:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PFbTU1HfBzX4dMUnLMZDTBI4s5E/UaJHjHLHcNKuZQo=; b=wHvUbrFQfUjE+a
	75FXkmw8bvE91ejDrAnlVSLKsw0JQX0f+tUX503WZQnqXFbdQhzghDLJYnOMbchamQFA3Ezbz0sKk
	cMXGOOhSdKDXKJtz5PaZgzj4MC8/1PdRuiu3f8iOAf2a2mIyKUVTnKqwl5A8rjgnlbaM1klz+6ZHI
	k/nVLtGQwJekEHfwBT4agKue2DeQRjNXYkwEQEu0IxSJbNrbdFsqBJAkm8QNcuO8y44m/Zw+h4tY5
	yYTjNEHTzTOToU+crJWdfOQT8CLuZ1dYL+lVE0J+WM1MVwI5WNR53vbsAk6AUMggIaB2smJ2T70vW
	jb8HwYAYhRZr5v90B96w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tH1OT-00000000FQd-34o4;
	Fri, 29 Nov 2024 13:50:49 +0000
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tH1OR-00000000FQA-05Vo
	for linux-phy@lists.infradead.org;
	Fri, 29 Nov 2024 13:50:48 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id 3f1490d57ef6-e3970ac2dddso1519338276.2
        for <linux-phy@lists.infradead.org>; Fri, 29 Nov 2024 05:50:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732888245; x=1733493045; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7WQXtZAjWFqN8mKK3853FsLiUq722zhwbqGIVz24roM=;
        b=Hh5rKaEfRw55hgRZ/+Oglx0WEf+UCUDXGO0Vdl/1O+bpgKz14uj+YryYnT7fQBclWn
         Tp9elJq+We/Rw32X5NmWMtwqB1y2OhYToL0bKz4RJOWHh6I6mbtHq/vayaGgYRl9rbT6
         FYiy4aoerU/uE1dfPilSlRoTzYgIA2t58snGAKGRjfgwTxG86ZHBxq65fWAAjZPTjLVc
         iP0kvbmoNSKsGVgy1zdELqlYZWrjkI+PUvsf7ObuiDMTN53fynvlQtjp4LW2Ano79ZGA
         PLz2NKkxanWkbYna5665XPuwnkVF8+fPTXXM5WMrv6+FIbJqd2hiimqDkoxKlJEqC+tt
         Y2oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732888245; x=1733493045;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7WQXtZAjWFqN8mKK3853FsLiUq722zhwbqGIVz24roM=;
        b=ZZ7fg7yJHx5zswSljuzAtLmtE1vJssgDEXqrSxgUoWt08tjIHD2gKb4N330yYq32Jr
         mL+wS2IGqjmXzKsnyazkuhC8dSqdxH1Hoqis4YCngDHLQoswjAU3kg5p/JmxQNT0+Ijf
         Uhec/McNIdT356JLxm8Nd1RD5No8wOPcZlCX3iYOb4013aACqqI/RbV2usYdulGnZWxh
         SkD3XukggsG5JrwJAdeuYEJjm78gx0hy1d4FaUydS7bCg1upa2dJ0ASgic2ggM0M35yY
         2g4SFr/3/Mh3nleYtvYvOVolxeokBNGPH5n3LA9ZJfrY/GQ2R3fEnGlOBh7uiXhFpMEY
         OX9g==
X-Forwarded-Encrypted: i=1; AJvYcCXhK0AuV3h8CGTG4NGFVQcQOhxZOPXexv58k1hLNHsnTVgijAYz6zaj2/4AvYf4wuomLSn3ZLsP7/w=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy4GOQll/a87L0JFfaRlwS/I3DySzcv3twRwt2JXarlDY7qfbFF
	HD/ySFtvK0s+Uw0wi+74gM5FYP5Tg4j9jqef+9wykzgVPCJ4zahy62bS83JZqlbe99xFDQYD3li
	CjdHd+f96Jur185MNkyR/noExeDLxWQ3FZfo/iw==
X-Gm-Gg: ASbGncum39Drd5d0ZBBuv76T2LgDhLyl+OWuQHFkdctfc54pmG61nbaNVbKY019THKF
	jQiMuIHW9KUeoPKmxeB0VRGUEOjjHoYI=
X-Google-Smtp-Source: AGHT+IE0BIIdCa1JDpOjyTRYlwlbjuOqEl95UYxl+xvUnPElLVGBvG1eFLCUkRkyHmX0HZXqS4NsAg2SmNUQAHEPcuE=
X-Received: by 2002:a05:6902:2b0e:b0:e38:f30e:9b52 with SMTP id
 3f1490d57ef6-e395b8698e0mr9367911276.4.1732888245294; Fri, 29 Nov 2024
 05:50:45 -0800 (PST)
MIME-Version: 1.0
References: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
 <20241129-add-displayport-support-for-qcs615-platform-v1-5-09a4338d93ef@quicinc.com>
In-Reply-To: <20241129-add-displayport-support-for-qcs615-platform-v1-5-09a4338d93ef@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 29 Nov 2024 15:50:40 +0200
Message-ID: <CAA8EJpoY8hySQd00yODGeHjSpVZpEBLjF3aBiKGJPUhpr-2mgw@mail.gmail.com>
Subject: Re: [PATCH 5/8] drm/msm/dp: Add support for lane mapping configuration
To: Xiangxu Yin <quic_xiangxuy@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, quic_lliu6@quicinc.com, quic_fangez@quicinc.com, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-gpio@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_055047_063434_2B707F8A 
X-CRM114-Status: GOOD (  21.90  )
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

On Fri, 29 Nov 2024 at 09:59, Xiangxu Yin <quic_xiangxuy@quicinc.com> wrote:
>
> Add the ability to configure lane mapping for the DP controller. This is
> required when the platform's lane mapping does not follow the default
> order (0, 1, 2, 3). The mapping rules are now configurable via the
> `data-lane` property in the devicetree. This property defines the
> logical-to-physical lane mapping sequence, ensuring correct lane
> assignment for non-default configurations.
>
> Signed-off-by: Xiangxu Yin <quic_xiangxuy@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_catalog.c | 11 +++++------
>  drivers/gpu/drm/msm/dp/dp_catalog.h |  2 +-
>  drivers/gpu/drm/msm/dp/dp_ctrl.c    |  2 +-
>  drivers/gpu/drm/msm/dp/dp_panel.c   | 13 ++++++++++---
>  drivers/gpu/drm/msm/dp/dp_panel.h   |  3 +++
>  5 files changed, 20 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/msm/dp/dp_catalog.c b/drivers/gpu/drm/msm/dp/dp_catalog.c
> index b4c8856fb25d01dd1b30c5ec33ce821aafa9551d..34439d0709d2e1437e5669fd0b995936420ee16f 100644
> --- a/drivers/gpu/drm/msm/dp/dp_catalog.c
> +++ b/drivers/gpu/drm/msm/dp/dp_catalog.c
> @@ -361,17 +361,16 @@ void msm_dp_catalog_ctrl_config_ctrl(struct msm_dp_catalog *msm_dp_catalog, u32
>         msm_dp_write_link(catalog, REG_DP_CONFIGURATION_CTRL, cfg);
>  }
>
> -void msm_dp_catalog_ctrl_lane_mapping(struct msm_dp_catalog *msm_dp_catalog)
> +void msm_dp_catalog_ctrl_lane_mapping(struct msm_dp_catalog *msm_dp_catalog, u32 *l_map)

lane_map, not l_map.

>  {
>         struct msm_dp_catalog_private *catalog = container_of(msm_dp_catalog,
>                                 struct msm_dp_catalog_private, msm_dp_catalog);
> -       u32 ln_0 = 0, ln_1 = 1, ln_2 = 2, ln_3 = 3; /* One-to-One mapping */
>         u32 ln_mapping;
>
> -       ln_mapping = ln_0 << LANE0_MAPPING_SHIFT;
> -       ln_mapping |= ln_1 << LANE1_MAPPING_SHIFT;
> -       ln_mapping |= ln_2 << LANE2_MAPPING_SHIFT;
> -       ln_mapping |= ln_3 << LANE3_MAPPING_SHIFT;
> +       ln_mapping = l_map[0] << LANE0_MAPPING_SHIFT;
> +       ln_mapping |= l_map[1] << LANE1_MAPPING_SHIFT;
> +       ln_mapping |= l_map[2] << LANE2_MAPPING_SHIFT;
> +       ln_mapping |= l_map[3] << LANE3_MAPPING_SHIFT;
>
>         msm_dp_write_link(catalog, REG_DP_LOGICAL2PHYSICAL_LANE_MAPPING,
>                         ln_mapping);
> diff --git a/drivers/gpu/drm/msm/dp/dp_catalog.h b/drivers/gpu/drm/msm/dp/dp_catalog.h
> index e932b17eecbf514070cd8cd0b98ca0fefbe81ab7..8b8de2a7d3ad561c1901e1bdaad92d4fab12e808 100644
> --- a/drivers/gpu/drm/msm/dp/dp_catalog.h
> +++ b/drivers/gpu/drm/msm/dp/dp_catalog.h
> @@ -69,7 +69,7 @@ u32 msm_dp_catalog_aux_get_irq(struct msm_dp_catalog *msm_dp_catalog);
>  /* DP Controller APIs */
>  void msm_dp_catalog_ctrl_state_ctrl(struct msm_dp_catalog *msm_dp_catalog, u32 state);
>  void msm_dp_catalog_ctrl_config_ctrl(struct msm_dp_catalog *msm_dp_catalog, u32 config);
> -void msm_dp_catalog_ctrl_lane_mapping(struct msm_dp_catalog *msm_dp_catalog);
> +void msm_dp_catalog_ctrl_lane_mapping(struct msm_dp_catalog *msm_dp_catalog, u32 *l_map);
>  void msm_dp_catalog_ctrl_mainlink_ctrl(struct msm_dp_catalog *msm_dp_catalog, bool enable);
>  void msm_dp_catalog_ctrl_psr_mainlink_enable(struct msm_dp_catalog *msm_dp_catalog, bool enable);
>  void msm_dp_catalog_setup_peripheral_flush(struct msm_dp_catalog *msm_dp_catalog);
> diff --git a/drivers/gpu/drm/msm/dp/dp_ctrl.c b/drivers/gpu/drm/msm/dp/dp_ctrl.c
> index bc2ca8133b790fc049e18ab3b37a629558664dd4..49c8ce9b2d0e57a613e50865be3fe98e814d425a 100644
> --- a/drivers/gpu/drm/msm/dp/dp_ctrl.c
> +++ b/drivers/gpu/drm/msm/dp/dp_ctrl.c
> @@ -177,7 +177,7 @@ static void msm_dp_ctrl_configure_source_params(struct msm_dp_ctrl_private *ctrl
>  {
>         u32 cc, tb;
>
> -       msm_dp_catalog_ctrl_lane_mapping(ctrl->catalog);
> +       msm_dp_catalog_ctrl_lane_mapping(ctrl->catalog, ctrl->panel->lane_map);
>         msm_dp_catalog_ctrl_mainlink_ctrl(ctrl->catalog, true);
>         msm_dp_catalog_setup_peripheral_flush(ctrl->catalog);
>
> diff --git a/drivers/gpu/drm/msm/dp/dp_panel.c b/drivers/gpu/drm/msm/dp/dp_panel.c
> index 5d7eaa31bf3176566f40f01ff636bee64e81c64f..8654180aa259234bbd41f4f88c13c485f9791b1d 100644
> --- a/drivers/gpu/drm/msm/dp/dp_panel.c
> +++ b/drivers/gpu/drm/msm/dp/dp_panel.c
> @@ -11,7 +11,6 @@
>  #include <drm/drm_of.h>
>  #include <drm/drm_print.h>
>
> -#define DP_MAX_NUM_DP_LANES    4
>  #define DP_LINK_RATE_HBR2      540000 /* kbytes */
>
>  struct msm_dp_panel_private {
> @@ -461,6 +460,7 @@ static int msm_dp_panel_parse_dt(struct msm_dp_panel *msm_dp_panel)
>         struct msm_dp_panel_private *panel;
>         struct device_node *of_node;
>         int cnt;
> +       u32 lane_map[DP_MAX_NUM_DP_LANES] = {0, 1, 2, 3};
>
>         panel = container_of(msm_dp_panel, struct msm_dp_panel_private, msm_dp_panel);
>         of_node = panel->dev->of_node;
> @@ -474,10 +474,17 @@ static int msm_dp_panel_parse_dt(struct msm_dp_panel *msm_dp_panel)
>                 cnt = drm_of_get_data_lanes_count(of_node, 1, DP_MAX_NUM_DP_LANES);
>         }
>
> -       if (cnt > 0)
> +       if (cnt > 0) {
> +               struct device_node *endpoint;
> +
>                 msm_dp_panel->max_dp_lanes = cnt;
> -       else
> +               endpoint = of_graph_get_endpoint_by_regs(of_node, 1, -1);
> +               of_property_read_u32_array(endpoint, "data-lanes", lane_map, cnt);
> +       } else {
>                 msm_dp_panel->max_dp_lanes = DP_MAX_NUM_DP_LANES; /* 4 lanes */
> +       }

Why? This sounds more like dp_catalog or (after the refactoring at
[1]) dp_ctrl. But not the dp_panel.

[1] https://patchwork.freedesktop.org/project/freedreno/series/?ordering=-last_updated

> +
> +       memcpy(msm_dp_panel->lane_map, lane_map, msm_dp_panel->max_dp_lanes * sizeof(u32));
>
>         msm_dp_panel->max_dp_link_rate = msm_dp_panel_link_frequencies(of_node);
>         if (!msm_dp_panel->max_dp_link_rate)
> diff --git a/drivers/gpu/drm/msm/dp/dp_panel.h b/drivers/gpu/drm/msm/dp/dp_panel.h
> index 0e944db3adf2f187f313664fe80cf540ec7a19f2..7603b92c32902bd3d4485539bd6308537ff75a2c 100644
> --- a/drivers/gpu/drm/msm/dp/dp_panel.h
> +++ b/drivers/gpu/drm/msm/dp/dp_panel.h
> @@ -11,6 +11,8 @@
>  #include "dp_aux.h"
>  #include "dp_link.h"
>
> +#define DP_MAX_NUM_DP_LANES    4
> +
>  struct edid;
>
>  struct msm_dp_display_mode {
> @@ -46,6 +48,7 @@ struct msm_dp_panel {
>         bool video_test;
>         bool vsc_sdp_supported;
>
> +       u32 lane_map[DP_MAX_NUM_DP_LANES];
>         u32 max_dp_lanes;
>         u32 max_dp_link_rate;
>
>
> --
> 2.25.1
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
