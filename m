Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8328EE7718B
	for <linux-phy@archiver.kernel.org>; Fri, 20 Dec 2024 05:38:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WffxgUeY9H3L7WF+CLVM98MB496MqtrLDhf+fnvXfpI=; b=payDowwrKymv05
	h9ohitaox3zq+Z0lXN5cZ+f9RJg2NCO0x7AvhAPwW8B7DRvnkiMkK2fXfDTQED7+kie8F1Qd2NQAc
	5mV20GwPgf7SCtO/5BXj96sKQ+KMqqpvg+zyX9mjO+9QbyG9DdJ8P+NQgJLbWLBD2QNMJkVoj2qOt
	AQ+T0ODrhebLmv5SPdJ5dQpC4IcxMXBbehiCQ8VRF6zbdEIM3d3r1mxEJWwjwdbH6RWlyH8eFKM0E
	70DkzutWJ4mlf4/RsUU63Xt5gqPRbAQskK/ABe9P8ROBenNwHV0CstC+l4IHm37InOMGw0/l/GDQ7
	5UEn/0/3zsdNav8l+JPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOVin-00000003zRz-2WTW;
	Fri, 20 Dec 2024 05:38:45 +0000
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOVhT-00000003z9q-3MbR
	for linux-phy@lists.infradead.org;
	Fri, 20 Dec 2024 05:37:26 +0000
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-6f00da6232bso12581117b3.2
        for <linux-phy@lists.infradead.org>; Thu, 19 Dec 2024 21:37:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734673042; x=1735277842; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eLpODaYRyFEauMGVSyk9T1QhhMdmd8z0vW52xuJIe/8=;
        b=nMRIw+3BPnsDyIpE0WiZRE5GnNX/z7weFeefNZksvEG2JMh90P68MiPP+VafPEL3Xp
         D+8WGCkx/sN757njB0Y5Pnv6cZIIj1+BGX/2Fg4PClyZJqdZ4herPZ55mbs21rGSt/me
         8ypb9V6Ken2J+9VBnRegA4hAMHIG4DXlRQcHfU5Qzw52yVKKOxKvGhDnLaBAWR413AyU
         JST2pHJHtAcw8DNaeCkbxNPt9/MlYLlUUlaDIlr1N+UUFXVYMRO0PZP09iga1IrY6atZ
         EMXkOUpYC9FgSHxVtV8+uHLOEanl4n8qvm7NmBNAndVUmmJTnTWUfJCIj7CKHB2m0EcX
         2skw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734673042; x=1735277842;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eLpODaYRyFEauMGVSyk9T1QhhMdmd8z0vW52xuJIe/8=;
        b=sYfZtNuGoHUnUkQNCOfgX95xGMYCWmGnmvtpVBCRdDmYi7OxZXGXjFPnbbndPO8nU6
         ULn5o3vQfyFU+WmZuMjMHw/m2d1SboWvOEwSVRtjQdddJdbjbvVuY4YerSYsLqIqfcxR
         DuZtHeb37u2gKWYuLMcQ5S7BbcYTtoUk31d3PgGgyyao/z0JFhHojpoBAT2zFWjFDOpW
         66XitbaPvhdyN17Zi8GfAdd4lakHCdj/jYbj6t/3ujxxByhzWVIplq73dRF+pSh+J6e5
         hnswk3JFYHPvWeEkDdOpN5Eb9AB7dgyM8lTv6Bc3+iAEqYpvjYWRZO1fJLxgU9z4dkay
         sILw==
X-Forwarded-Encrypted: i=1; AJvYcCVoUXG/obxzfcZVrt/jpaEn+/RBty2ik4KY710npoooLIHbVocAo5AaXvP8RB5zOQ3j8yBfzcV5rNA=@lists.infradead.org
X-Gm-Message-State: AOJu0YznbV9Rd/WEAtBbAzEKtdg1Vb/V9//GswvWlZqwy91kIWmT1tvg
	XnTcvOecfsPN9aMRZpIDwmyXkt7UhTFsKn4vnrzv4OO9OXOXR7bPUezVCWxY6daVLVAGukC/nyt
	CCGNfleBT5gYD9WK66omxC1tx30rLIhLg5y0+3g==
X-Gm-Gg: ASbGnctDkZZJ1BB+2YXjka9Vl7U0VmvPSX8BhJWkl2UtV+emkfhyMa5ovN5PIcDDWrh
	7f8w5XvZnWClTP5qjnwmucc0/zt7laUKCdiiw9+2J0LE1Yp2KpSyl
X-Google-Smtp-Source: AGHT+IFGtCjCZ+VojYNyMK2Y/K7VXCStGJjA+69HR5EsAR1bloqgbrLQAQ6WEmjrZhxmttZwb8bmMWY+OJBKwRQPbj4=
X-Received: by 2002:a05:690c:f84:b0:6ef:9017:3cc8 with SMTP id
 00721157ae682-6f3f8219d5bmr11574697b3.31.1734673042550; Thu, 19 Dec 2024
 21:37:22 -0800 (PST)
MIME-Version: 1.0
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
 <20241219080604.1423600-8-damon.ding@rock-chips.com> <a6vvydjbx3hbckoy74iiyzguyyacwvdh6iirqydjfvhwgocw3a@knecggjcbcid>
 <654c30ec-7d7e-4956-9a48-15bfcea34acc@rock-chips.com>
In-Reply-To: <654c30ec-7d7e-4956-9a48-15bfcea34acc@rock-chips.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 20 Dec 2024 07:37:11 +0200
Message-ID: <CAA8EJpqk-iim668ZTzQaROJmkTr2COBwA5G9Eg73uLE28XHYpg@mail.gmail.com>
Subject: Re: [PATCH v3 07/15] drm/bridge: analogix_dp: Add support for phy configuration.
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	rfoss@kernel.org, vkoul@kernel.org, sebastian.reichel@collabora.com, 
	cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241219_213723_862992_9DCF6480 
X-CRM114-Status: GOOD (  27.11  )
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

On Fri, 20 Dec 2024 at 05:37, Damon Ding <damon.ding@rock-chips.com> wrote:
>
> Hi Dmitry,
>
> On 2024/12/20 8:13, Dmitry Baryshkov wrote:
> > On Thu, Dec 19, 2024 at 04:05:56PM +0800, Damon Ding wrote:
> >> Add support to configurate link rate, lane count, voltage swing and
> >> pre-emphasis with phy_configure(). It is helpful in application scenarios
> >> where analogix controller is mixed with the phy of other vendors.
> >>
> >> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> >>
> >> ---
> >>
> >> Changes in v2:
> >> - remove needless assignments for phy_configure()
> >> - remove unnecessary changes for phy_power_on()/phy_power_off()
> >> ---
> >>   .../drm/bridge/analogix/analogix_dp_core.c    |  1 +
> >>   .../gpu/drm/bridge/analogix/analogix_dp_reg.c | 56 +++++++++++++++++++
> >>   2 files changed, 57 insertions(+)
> >>
> >> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> >> index 6f10d88a34c5..9429c50cc1bc 100644
> >> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> >> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> >> @@ -1696,6 +1696,7 @@ int analogix_dp_resume(struct analogix_dp_device *dp)
> >>      if (dp->plat_data->power_on)
> >>              dp->plat_data->power_on(dp->plat_data);
> >>
> >> +    phy_set_mode(dp->phy, PHY_MODE_DP);
> >>      phy_power_on(dp->phy);
> >>
> >>      analogix_dp_init_dp(dp);
> >> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
> >> index 3afc73c858c4..613ce504bea6 100644
> >> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
> >> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
> >> @@ -11,6 +11,7 @@
> >>   #include <linux/gpio/consumer.h>
> >>   #include <linux/io.h>
> >>   #include <linux/iopoll.h>
> >> +#include <linux/phy/phy.h>
> >>
> >>   #include <drm/bridge/analogix_dp.h>
> >>
> >> @@ -513,10 +514,25 @@ void analogix_dp_enable_sw_function(struct analogix_dp_device *dp)
> >>   void analogix_dp_set_link_bandwidth(struct analogix_dp_device *dp, u32 bwtype)
> >>   {
> >>      u32 reg;
> >> +    int ret;
> >>
> >>      reg = bwtype;
> >>      if ((bwtype == DP_LINK_BW_2_7) || (bwtype == DP_LINK_BW_1_62))
> >>              writel(reg, dp->reg_base + ANALOGIX_DP_LINK_BW_SET);
> >> +
> >> +    if (dp->phy) {
> >> +            union phy_configure_opts phy_cfg = {0};
> >> +
> >> +            phy_cfg.dp.lanes = dp->link_train.lane_count;
> >
> > Should not be necessary, you are only setting the .set_rate.
>
> Indeed, this can be dropped.
>
> >
> >> +            phy_cfg.dp.link_rate =
> >> +                    drm_dp_bw_code_to_link_rate(dp->link_train.link_rate) / 100;
> >> +            phy_cfg.dp.set_rate = true;
> >> +            ret = phy_configure(dp->phy, &phy_cfg);
> >> +            if (ret && ret != -EOPNOTSUPP) {
> >> +                    dev_err(dp->dev, "%s: phy_configure() failed: %d\n", __func__, ret);
> >> +                    return;
> >> +            }
> >> +    }
> >>   }
> >>
> >>   void analogix_dp_get_link_bandwidth(struct analogix_dp_device *dp, u32 *bwtype)
> >> @@ -530,9 +546,22 @@ void analogix_dp_get_link_bandwidth(struct analogix_dp_device *dp, u32 *bwtype)
> >>   void analogix_dp_set_lane_count(struct analogix_dp_device *dp, u32 count)
> >>   {
> >>      u32 reg;
> >> +    int ret;
> >>
> >>      reg = count;
> >>      writel(reg, dp->reg_base + ANALOGIX_DP_LANE_COUNT_SET);
> >> +
> >> +    if (dp->phy) {
> >> +            union phy_configure_opts phy_cfg = {0};
> >> +
> >> +            phy_cfg.dp.lanes = dp->link_train.lane_count;
> >> +            phy_cfg.dp.set_lanes = true;
> >> +            ret = phy_configure(dp->phy, &phy_cfg);
> >> +            if (ret && ret != -EOPNOTSUPP) {
> >> +                    dev_err(dp->dev, "%s: phy_configure() failed: %d\n", __func__, ret);
> >> +                    return;
> >> +            }
> >> +    }
> >>   }
> >>
> >>   void analogix_dp_get_lane_count(struct analogix_dp_device *dp, u32 *count)
> >> @@ -546,10 +575,37 @@ void analogix_dp_get_lane_count(struct analogix_dp_device *dp, u32 *count)
> >>   void analogix_dp_set_lane_link_training(struct analogix_dp_device *dp)
> >>   {
> >>      u8 lane;
> >> +    int ret;
> >>
> >>      for (lane = 0; lane < dp->link_train.lane_count; lane++)
> >>              writel(dp->link_train.training_lane[lane],
> >>                     dp->reg_base + ANALOGIX_DP_LN0_LINK_TRAINING_CTL + 4 * lane);
> >> +
> >> +    if (dp->phy) {
> >> +            union phy_configure_opts phy_cfg = {0};
> >> +
> >> +            for (lane = 0; lane < dp->link_train.lane_count; lane++) {
> >> +                    u8 training_lane = dp->link_train.training_lane[lane];
> >> +                    u8 vs, pe;
> >> +
> >> +                    vs = (training_lane & DP_TRAIN_VOLTAGE_SWING_MASK) >>
> >> +                         DP_TRAIN_VOLTAGE_SWING_SHIFT;
> >> +                    pe = (training_lane & DP_TRAIN_PRE_EMPHASIS_MASK) >>
> >> +                         DP_TRAIN_PRE_EMPHASIS_SHIFT;
> >> +                    phy_cfg.dp.voltage[lane] = vs;
> >> +                    phy_cfg.dp.pre[lane] = pe;
> >> +            }
> >> +
> >> +            phy_cfg.dp.lanes = dp->link_train.lane_count;
> >> +            phy_cfg.dp.link_rate =
> >> +                    drm_dp_bw_code_to_link_rate(dp->link_train.link_rate) / 100;
> >
> > This two should not be necessary, please drop them.
>
> These two are necessary for rk_hdptx_phy_set_voltage(), so they cannot
> be dropped.

Please review the documentation for struct phy_configure_opts_dp and
fix your PHY driver to skip the values for which the .set_foo isn't
set. Then you might have to change this part.
You are setting just .set_voltages. It means that the rate and .lanes
shouldn't be changed and can be used as they were set by the previous
calls to phy_configure().

>
> >
> >> +            phy_cfg.dp.set_voltages = true;
> >> +            ret = phy_configure(dp->phy, &phy_cfg);
> >> +            if (ret && ret != -EOPNOTSUPP) {
> >> +                    dev_err(dp->dev, "%s: phy_configure() failed: %d\n", __func__, ret);
> >> +                    return;
> >> +            }
> >> +    }
> >>   }
> >>
> >>   u32 analogix_dp_get_lane_link_training(struct analogix_dp_device *dp, u8 lane)
> >> --
> >> 2.34.1
> >>
> >
>
> Best regards,
> Damon
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
