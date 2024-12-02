Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2706D78306
	for <linux-phy@archiver.kernel.org>; Mon,  2 Dec 2024 10:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bvhV470w3a7i+huzvofGcpvmgo0WexEY+pA/jBQzSAY=; b=Z3BPwQhL5Y+eY3
	fC2CYooa8uqwaeSbA+TfaxwA8FO4lydV5VwRAW+wEC5pro1RBNx3J01QRyC4MYVSrXc4sNGqtIoGm
	J/Bo8dKcrTgzuzKftd+2HU/osEpxl4qnjMy8nFLnbSUHHBltcdJ0/m+cUWBi/O8j4h5Gl7YCRAhPO
	0NAXKpBSJjngb+9uvjU+6fF2axK06yK/DqpZfimgDz9Wyj1KyuYD6j5rLoc7IFNqxy6rcjU5KGGVC
	qJEucePFJUZJc1s4S8SKrsvnRjQQeUXqEnJ1rNrGzed71OrTnWPIRBr/Iyl6uwFv7/YGe7dUkkXtI
	Mkhn6ahwXI1Tnq09RZPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI3wa-00000005lpj-2P9T;
	Mon, 02 Dec 2024 10:46:20 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI3wX-00000005loZ-16jb
	for linux-phy@lists.infradead.org;
	Mon, 02 Dec 2024 10:46:18 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-53df1d1b6e8so4291834e87.1
        for <linux-phy@lists.infradead.org>; Mon, 02 Dec 2024 02:46:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733136375; x=1733741175; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=sW5g5zNCxuwuA9CkgMzqa+U4e2iYbFVfy38zh54cXVg=;
        b=U0hltT81EEzy6jiWpQrxGjV1/WoqlABVVrjfbuZkEQ9LuWu4xpdwL8+95w4jfO1hE4
         Ua3GCSgBraTqNO/7hkwwE1ptJijcjICNYfzU4umbM2L1qOKxHJSkBSKrTZGEh2vAFFAX
         8GjFGKlbOdzDauC072BUfCStZ0GHpfeXQ1vc3kK8aYo2lCdiu68b6HCLY2jqRAppq0ZJ
         AvYSSWqfMujdRWrokVrSvy84BXP1+3HLeZmltNbzEwDbX4B0U+Wk/G5OyLZ1Sgzwcp2x
         4tKNsf3lQMSic0uGkA2AFKjYbFZNW+BGjQJcrI9T3m3PuvoNmoUJiE8H35Nrrb601DI4
         zmlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733136375; x=1733741175;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sW5g5zNCxuwuA9CkgMzqa+U4e2iYbFVfy38zh54cXVg=;
        b=ZbRXe9jmuueQZuVA9P8yx3Nfh/7RHDtd/Qrfs6YipHbwAIZVqq3POZ8aaG0PNVQCGW
         VQa5e3kekJMp3f5v1gcBQJo7jIhTyghxRfZLlq071eeTJxCu+oWYxOGNyrpudV1/bG9x
         nSdfafIcyAVlqdp0RmO/AF+J4QmY1VdkWAOAPjo61h3DWMyKHQOdl0p9ka3PKgH2M4z1
         v63w/IwC2Se5tEBcfkcGVf3kcaNmWOxiAU5OK+EazAXdM89ExQcHMdBd/Dh8dHkBIdYE
         H1V8nWhQ5UuwHpW+Ze0UYJANyCBGpmPEJdhpclwLghURqrbiUBdSbhlITtaTjFbuLNss
         OBhw==
X-Forwarded-Encrypted: i=1; AJvYcCWVtQtTjsvdY3IUZdbCUmJ04Rg5nsjh7QrBriXiqZ/V3MIPlWt2MTMxwlDzuISroX9tqZjuLDl4oms=@lists.infradead.org
X-Gm-Message-State: AOJu0YwT3D/nd+WsBI0RwuxTZdegpJlcdZ2UNfVw967mbGUdJxcncXdV
	2TlZOuL+AvMYvywFkXE3QlFpegbKVNFblR19W46JJy11AKVl5kR3zBC8znQJWPw=
X-Gm-Gg: ASbGncvS2SvrzVbsxfht+BOuE8ZS/glPWNlbua6F6sCFLZeTyIG3fcSIx12kXPHiUC6
	Lv6OEoO8YRUjHHWu84210jTCcbS94pNvvXTxAwjqfyWB1Gt/bQcOIGRUTryPsAHxgS8WjL8xjtA
	QHy8Hwkkl/Xdmj6P5QUh9QaRztwB0nazk0eCM9vfEAWAbBjeVYvQA8Lh5fXqJ2A8yF2RpQHN+dY
	J+o1KW/QFJjXuvJdGvSMSS0kBgH7mM6xEEyAZd5wMlhUEGJ297dnh9hgxqIeeL2FsU5MkvkbBQc
	p4Pwd2AlvtwZdwE/cei6pSKVxgUGCA==
X-Google-Smtp-Source: AGHT+IHSCZMOjWupesy5/0HxHZeda2UBmkbWGoOoF1ozJXCQtPgXFWsr4uPvfC7x0xE42+mBQm6WWA==
X-Received: by 2002:a05:6512:124e:b0:53d:d3bc:cc11 with SMTP id 2adb3069b0e04-53df0112095mr7509493e87.48.1733136374959;
        Mon, 02 Dec 2024 02:46:14 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df644341bsm1424070e87.99.2024.12.02.02.46.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Dec 2024 02:46:14 -0800 (PST)
Date: Mon, 2 Dec 2024 12:46:12 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Xiangxu Yin <quic_xiangxuy@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, quic_lliu6@quicinc.com, quic_fangez@quicinc.com, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-gpio@vger.kernel.org
Subject: Re: [PATCH 5/8] drm/msm/dp: Add support for lane mapping
 configuration
Message-ID: <zvapsvfftai4fp6vwrn33edqsyuuprq2pxz6spij6j7t4y6xmn@zzgp7gbsivbk>
References: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
 <20241129-add-displayport-support-for-qcs615-platform-v1-5-09a4338d93ef@quicinc.com>
 <CAA8EJpoY8hySQd00yODGeHjSpVZpEBLjF3aBiKGJPUhpr-2mgw@mail.gmail.com>
 <d2a3cd6f-1077-4edb-9f0c-0c940a639050@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d2a3cd6f-1077-4edb-9f0c-0c940a639050@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_024617_311778_F5B0A1C0 
X-CRM114-Status: GOOD (  32.30  )
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

On Mon, Dec 02, 2024 at 04:40:05PM +0800, Xiangxu Yin wrote:
> 
> 
> On 11/29/2024 9:50 PM, Dmitry Baryshkov wrote:
> > On Fri, 29 Nov 2024 at 09:59, Xiangxu Yin <quic_xiangxuy@quicinc.com> wrote:
> >>
> >> Add the ability to configure lane mapping for the DP controller. This is
> >> required when the platform's lane mapping does not follow the default
> >> order (0, 1, 2, 3). The mapping rules are now configurable via the
> >> `data-lane` property in the devicetree. This property defines the
> >> logical-to-physical lane mapping sequence, ensuring correct lane
> >> assignment for non-default configurations.
> >>
> >> Signed-off-by: Xiangxu Yin <quic_xiangxuy@quicinc.com>
> >> ---
> >>  drivers/gpu/drm/msm/dp/dp_catalog.c | 11 +++++------
> >>  drivers/gpu/drm/msm/dp/dp_catalog.h |  2 +-
> >>  drivers/gpu/drm/msm/dp/dp_ctrl.c    |  2 +-
> >>  drivers/gpu/drm/msm/dp/dp_panel.c   | 13 ++++++++++---
> >>  drivers/gpu/drm/msm/dp/dp_panel.h   |  3 +++
> >>  5 files changed, 20 insertions(+), 11 deletions(-)
> >>

> >> @@ -461,6 +460,7 @@ static int msm_dp_panel_parse_dt(struct msm_dp_panel *msm_dp_panel)
> >>         struct msm_dp_panel_private *panel;
> >>         struct device_node *of_node;
> >>         int cnt;
> >> +       u32 lane_map[DP_MAX_NUM_DP_LANES] = {0, 1, 2, 3};
> >>
> >>         panel = container_of(msm_dp_panel, struct msm_dp_panel_private, msm_dp_panel);
> >>         of_node = panel->dev->of_node;
> >> @@ -474,10 +474,17 @@ static int msm_dp_panel_parse_dt(struct msm_dp_panel *msm_dp_panel)
> >>                 cnt = drm_of_get_data_lanes_count(of_node, 1, DP_MAX_NUM_DP_LANES);
> >>         }
> >>
> >> -       if (cnt > 0)
> >> +       if (cnt > 0) {
> >> +               struct device_node *endpoint;
> >> +
> >>                 msm_dp_panel->max_dp_lanes = cnt;
> >> -       else
> >> +               endpoint = of_graph_get_endpoint_by_regs(of_node, 1, -1);
> >> +               of_property_read_u32_array(endpoint, "data-lanes", lane_map, cnt);
> >> +       } else {
> >>                 msm_dp_panel->max_dp_lanes = DP_MAX_NUM_DP_LANES; /* 4 lanes */
> >> +       }
> > 
> > Why? This sounds more like dp_catalog or (after the refactoring at
> > [1]) dp_ctrl. But not the dp_panel.
> > 
> > [1] https://patchwork.freedesktop.org/project/freedreno/series/?ordering=-last_updated
> > 
> We are used the same prop 'data-lanes = <3 2 0 1>' in mdss_dp_out to keep similar behaviour with dsi_host_parse_lane_data.
> From the modules used, catalog seems more appropriate, but since the max_dp_lanes is parsed at dp_panel, it has been placed here.
> Should lane_map parsing in msm_dp_catalog_get, and keep max_dp_lanes parsing at the dp_panel?

msm_dp_catalog_get() is going to be removed. Since the functions that
are going to use it are in dp_ctrl module, I thought that dp_ctrl.c is
the best place. A better option might be to move max_dp_lanes and
max_dp_link_rate to dp_link.c as those are link params. Then
lane_mapping also logically becomes a part of dp_link module.

But now I have a more important question (triggered by Krishna's email
about SAR2130P's USB): if the lanes are swapped, does USB 3 work on that
platform? Or is it being demoted to USB 2 with nobody noticing that?

If lanes 0/1 and 2/3 are swapped, shouldn't it be handled in the QMP
PHY, where we handle lanes and orientation switching?

> >> +
> >> +       memcpy(msm_dp_panel->lane_map, lane_map, msm_dp_panel->max_dp_lanes * sizeof(u32));
> >>
> >>         msm_dp_panel->max_dp_link_rate = msm_dp_panel_link_frequencies(of_node);
> >>         if (!msm_dp_panel->max_dp_link_rate)
> >> diff --git a/drivers/gpu/drm/msm/dp/dp_panel.h b/drivers/gpu/drm/msm/dp/dp_panel.h
> >> index 0e944db3adf2f187f313664fe80cf540ec7a19f2..7603b92c32902bd3d4485539bd6308537ff75a2c 100644
> >> --- a/drivers/gpu/drm/msm/dp/dp_panel.h
> >> +++ b/drivers/gpu/drm/msm/dp/dp_panel.h
> >> @@ -11,6 +11,8 @@
> >>  #include "dp_aux.h"
> >>  #include "dp_link.h"
> >>
> >> +#define DP_MAX_NUM_DP_LANES    4
> >> +
> >>  struct edid;
> >>
> >>  struct msm_dp_display_mode {
> >> @@ -46,6 +48,7 @@ struct msm_dp_panel {
> >>         bool video_test;
> >>         bool vsc_sdp_supported;
> >>
> >> +       u32 lane_map[DP_MAX_NUM_DP_LANES];
> >>         u32 max_dp_lanes;
> >>         u32 max_dp_link_rate;
> >>
> >>
> >> --
> >> 2.25.1
> >>
> > 
> > 
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
