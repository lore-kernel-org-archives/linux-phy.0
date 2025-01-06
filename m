Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C636E77188
	for <linux-phy@archiver.kernel.org>; Mon,  6 Jan 2025 14:48:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tXJOQf8tCDcFYktiXjG+kXojFfWwVzz7Tz7aZ13uey4=; b=LE+eTNIwjI2zfk
	ul0vk6Mf3uVKQOOQugU9C9lKEt0FJuoACZvWDnQ9fdgHoi2CaoDAgYDUbkIke3vlbZGabDcAlQ8TV
	wjZflAosWvFMebHksMjRGajjf4XDMGcxC2BRHijWcXO7eWaSwLeqv6Cz2xJwgFJKjbC2JsxHPHz2V
	Gl5S/HJWVyeZRgEVsDF8C1UNkn9aV8I+iuJlXTIs8hEfDPuD/jNRHSNVfYGaB96rP5Dnjd97tCXFs
	U6iuey3q6dpXM+qtXqWzDaYLwPQQl+q9mpZLhRGpvnD4tFycsyaFuImMF0G8AbA1cB4z3NqIawHML
	LIZvuQWv1JEg3BUPJr5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUoPX-00000001dro-3uHk;
	Mon, 06 Jan 2025 14:48:55 +0000
Received: from mail-yb1-xb30.google.com ([2607:f8b0:4864:20::b30])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUo9o-00000001aMr-3gRn
	for linux-phy@lists.infradead.org;
	Mon, 06 Jan 2025 14:32:43 +0000
Received: by mail-yb1-xb30.google.com with SMTP id 3f1490d57ef6-e4930eca0d4so18595453276.3
        for <linux-phy@lists.infradead.org>; Mon, 06 Jan 2025 06:32:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736173959; x=1736778759; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fJSZIXJSkHeJBkdcb6ya9oMRq6rzriaUtPDL7vlAVQw=;
        b=kJw8LumpMKyLYmrquxvbJ/YkBXfubB/aeYQLjiDVXzDJEr6aYWrhBHixq2aiI07mYc
         m9UEi6QDv21Gn76Kb0NIvRyA/xzSYodOQwji5H5vHaWbtqosatImZrs2xMaklT9E9KVW
         g4g2VSDgcFkEyyuRYyStWGpecf5LiqV4wYcj94M3hV/lrXfhMjdF3zfNq/SVUV9cA0Io
         HF4imWzBGJw3vAx8GPMO71WCgJHU7N2K9SXwSaBYynO+q22JPZ5vbDPXeZfQf6a9hxR0
         9flXmYVBnznCPX0Z5+05aXE0OJ+zmo/8dJVE3nRc8gVf7bHdEV+H1PqmZGyigyNqHA8O
         wNFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736173959; x=1736778759;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fJSZIXJSkHeJBkdcb6ya9oMRq6rzriaUtPDL7vlAVQw=;
        b=pA4PTpGbDy40IpuU6M6c12HC+a7FPc8M45sOshuqCWT59GdGgXqkpk7FjWuIxLhRnX
         GTZW8MkkBMbV0vyrVCPAl8/2dXPpDE7ERrL+82axs8gLXt3M+3G8F1o34PlqV24XX3r6
         HsCWQmDPUvR/hqQrJKQ3D0izGSWleJa1w97xIqzMloO6giboZbnjnk/hf7q0CviljjK0
         31iG/YReIUeciPP3ZErtMgDH1NsSWRDJpe0rxFVw8+PqlvvmyAoHbGuditGJ68eXgTtv
         XwdFNaklL/6zNtfZo6C4BYmtRq4xOuoiMPeyaFwT1sBh2KLvyBl12X6Jy9D4ZzBoGSjS
         gIXw==
X-Forwarded-Encrypted: i=1; AJvYcCU1hqkGRA2B0FUvyQ9QoWxVKzXjezHZgQqlAkofsJuDjFF6ez/dc2muca9/Ie7JDmkV/3L/HpNl2dY=@lists.infradead.org
X-Gm-Message-State: AOJu0YxWfD84FbFi1wV1eYpHBI5+FHpzRD/bZlOwy+XwAvLSfMrzcEOa
	znzeE7B4udr4tripTa2VkDitf7aRSnxlLMMJ0C9DiQvFk8TsgjX6INCaBhu3uCSlrEA5EPeqU3s
	YIBhLONStAhTL23rs4ZHxxfMDvVAwJC1Roe1ffg==
X-Gm-Gg: ASbGncsBc7PoQQ1gwS+G/4t5wM5kaAzWyDPqcgVwPqjCPs1hrQcopOX18vyobjtOSzO
	ldAilzTzA2ZLqm2/n1ccmuwJ7oSxtQpMFiunK1bzULOqcGG44kGrx9M9H4I7h32Dus3kZBQ==
X-Google-Smtp-Source: AGHT+IHmvXuwvGSdBr59QFJmGXR85prnYmkeJd5ryoQXMvTWEemEChNFf5E52WxYsQ1l+y7kBas5ggRo21B4VIcMRB4=
X-Received: by 2002:a05:690c:7106:b0:6ef:7640:e18a with SMTP id
 00721157ae682-6f3f820f277mr479003527b3.31.1736173959645; Mon, 06 Jan 2025
 06:32:39 -0800 (PST)
MIME-Version: 1.0
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-14-damon.ding@rock-chips.com> <e52pbjnusvuoqiyoorjr5msrfmgeqs2jt5sk6zcesvzy7cszzk@fzrtpsjoklgu>
 <e2a18f8c-dc38-4b12-968e-dd369cb34cb4@rock-chips.com>
In-Reply-To: <e2a18f8c-dc38-4b12-968e-dd369cb34cb4@rock-chips.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 6 Jan 2025 14:09:34 +0200
Message-ID: <CAA8EJpo5aE4itm8MTeCpqns5eLuWj0TaZW5qwrw02_Zc73NNiw@mail.gmail.com>
Subject: Re: [PATCH v4 13/17] drm/bridge: analogix_dp: Convert
 &analogix_dp_device.aux into a pointer
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
X-CRM114-CacheID: sfid-20250106_063240_961590_4E73D076 
X-CRM114-Status: GOOD (  28.36  )
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

On Mon, 6 Jan 2025 at 13:04, Damon Ding <damon.ding@rock-chips.com> wrote:
>
> Hi Dmitry,
>
> On 2024/12/30 21:35, Dmitry Baryshkov wrote:
> > On Thu, Dec 26, 2024 at 02:33:09PM +0800, Damon Ding wrote:
> >> With the previous patch related to the support of getting panel from
> >> the DP AUX bus, the &analogix_dp_device.aux can be obtained from the
> >> &analogix_dp_plat_data.aux.
> >>
> >> Furthermore, the assignment of &analogix_dp_plat_data.connector is
> >> intended to obtain the pointer of struct analogix_dp_device within the
> >> analogix_dpaux_transfer() function.
> >>
> >> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> >> ---
> >>   .../drm/bridge/analogix/analogix_dp_core.c    | 92 ++++++++++---------
> >>   .../drm/bridge/analogix/analogix_dp_core.h    |  2 +-
> >>   .../gpu/drm/bridge/analogix/analogix_dp_reg.c |  2 +-
> >>   3 files changed, 50 insertions(+), 46 deletions(-)
> >>
> >
> > [...]
> >
> >> @@ -1127,6 +1128,7 @@ static int analogix_dp_bridge_attach(struct drm_bridge *bridge,
> >>
> >>      if (!dp->plat_data->skip_connector) {
> >>              connector = &dp->connector;
> >> +            dp->plat_data->connector = &dp->connector;
> >>              connector->polled = DRM_CONNECTOR_POLL_HPD;
> >>
> >>              ret = drm_connector_init(dp->drm_dev, connector,
> >> @@ -1535,7 +1537,9 @@ static int analogix_dp_dt_parse_pdata(struct analogix_dp_device *dp)
> >>   static ssize_t analogix_dpaux_transfer(struct drm_dp_aux *aux,
> >>                                     struct drm_dp_aux_msg *msg)
> >>   {
> >> -    struct analogix_dp_device *dp = to_dp(aux);
> >> +    struct analogix_dp_plat_data *plat_data = to_pdata(aux);
> >> +    struct drm_connector *connector = plat_data->connector;
> >> +    struct analogix_dp_device *dp = to_dp(connector);
> >
> > I see that Analogix DP driver doesn't support
> > DRM_BRIDGE_ATTACH_NO_CONNECTOR, but at the same time I don't think this
> > is the step in the right direction. Instead please keep the AUX bus on
> > the Analogix side and add an API to go from struct drm_dp_aux to struct
> > analogix_dp_plat_data. Then your done_probing() callback can use that
> > function.
> >
>
> It is truly a more concise way.
>
> In the next version, I will add the following functions on the Analogix
> side in order to get the pointers of struct analogix_dp_plat_data and
> struct drm_dp_aux on the Rockchip side. And the way has already been
> verified.

LGTM, thank you.

>
> struct analogix_dp_plat_data *analogix_dp_aux_to_plat_data(struct
> drm_dp_aux *aux)
> {
>         struct analogix_dp_device *dp = to_dp(aux);
>
>         return dp->plat_data;
> }
> EXPORT_SYMBOL_GPL(analogix_dp_aux_to_plat_data);
>
> struct drm_dp_aux *analogix_dp_get_aux(struct analogix_dp_device *dp)
> {
>         return &dp->aux;
> }
> EXPORT_SYMBOL_GPL(analogix_dp_get_aux);
>
> >>      int ret;
> >>
> >>      pm_runtime_get_sync(dp->dev);
> >>
> >
>
> Best regards
> Damon
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
