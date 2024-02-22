Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C942C54791
	for <linux-phy@archiver.kernel.org>; Thu, 22 Feb 2024 20:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=llH7u4+qpn70E//UD3B+XJ12gDjk/kauC6U8vnUzIkA=; b=1k3V8qUcPuoVIi
	eAHy8VX1m/2GXc/HfL8+PXstl0CQxpf5/EfjsFuM2ew4zXnBNVdD9Y8O6w1TUL2FpJJtZdI2uEhA3
	heFUu03Uh+bK7nhfl8msc/u/GWRRWmo2fC7umR7ScP3FAOM3m/qKLJqyHHcyW6cjtNPMNvspdFUfq
	vV8HyjTt/uAuUIVtf82GyawmcXd52gQ8G1CKSu+PnxSRCyQe/9m5s9I6shsdWDgCdSsFbgQyUfNye
	JdWqqJaAXKsEkdMWXKH/XcOGwr1cNZPDcLRxqJ4Vj1ogrQv829IdUvC69IhvCfuMB63FAjcufaOXb
	U44e0pFlhSCntMYjojww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdG8A-00000006ZJA-44sU;
	Thu, 22 Feb 2024 20:57:22 +0000
Received: from mail-yw1-x1135.google.com ([2607:f8b0:4864:20::1135])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdG88-00000006ZHQ-0N3m
	for linux-phy@lists.infradead.org;
	Thu, 22 Feb 2024 20:57:21 +0000
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-6080a3eecd4so1761527b3.2
        for <linux-phy@lists.infradead.org>; Thu, 22 Feb 2024 12:57:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708635438; x=1709240238; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OlJfxZ2HGOqHH+yFuLajdP34OkZJP17T5eZUptvz6hk=;
        b=C//c0sS3xVKTswrayT82PoGJI8/+digEdPlvGuf/7aPrFRTihPwG7fRdWdmxz8fIRb
         PfhRuCoQFG3CqZhVZfHQaYpS3Uvqil3ZIALS1J/Xx7DHS3NcLQXUUC5pwpGWD+fBER3d
         Tg4J1MsNC4hzu9uNzoviAjbo2GN3eRabxZvKeNDPWMftu+sT8L+H5vnQtAcu8BK9FciW
         OdOdYHZjg30QNFAL0iPdGbnri3ypxDUsqArHHRQyOc14eGkEOCoSz/Pz1ZxkORQTwSSc
         VDqTK5SR6tbtyhTxrkGcYQ2IAEtmXUjghoq88cdAsORXPtQVm2dDf5IRL7qHriQU/dN6
         b++w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708635438; x=1709240238;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OlJfxZ2HGOqHH+yFuLajdP34OkZJP17T5eZUptvz6hk=;
        b=kFOWcGwT/5V3A0s50NPbkyzv/QDUTRKAUwUMuH1F3soGPnTPJUhzy3VBQfz9x1Iq6G
         ZEVMeUihRyHvfft4pSUi2LHJNIU6fLIylk+bEJOWOJz1EmOuW5kcwIo++r0hXVcvQJBj
         D3th0erTu2q5geM3Svd/X6vENfG6jcs5bdF3qiCyYVugc7LZBTO7BRto5vxsP1MRuJ5J
         13aWYUv/y/uRiU1tgt9ei9AIaw/jpDX2DEZFg/0Kt92yCIhfmYVzDag9irziSu1KGVq4
         p4AMnfC8QfijdqvJKh3qdDJJ9tNJORdiUdFG52TeZhAi0mqSA6tIb850FXkOr+dTVfQB
         4+bA==
X-Forwarded-Encrypted: i=1; AJvYcCWH0i3P8RBFeKTgB6hqaH/J6KOh4ZHfvRjs48lm5o7iigrf1vhdmcYi1xDlPuyNSldf1BdgWxenALE6fCV1HTjWGCEwTNjOOemZ7++Ukg==
X-Gm-Message-State: AOJu0YycZvbR98Q/rNate04hHna0eX2mDaJps4u1X57XQP4B5jvfRlMN
	NS2pbG+OIHXt+3qLoe5T68Jj+d2MeuCtq70Y6IPubF32c8IE8QsBlcF9Uj6sSnR+5tzdZvkmRGP
	0Sp5Ze+e6miNH6Js7bFfCb+cj1DfFfUJBy42bYA==
X-Google-Smtp-Source: AGHT+IF9m9jtm1VhqusuJFTiM5ycZ++n/P7+1F1EuJXuTvXHhKSiWFPXHEQ5HDRo4FRo3P5x6Rtq6q/o2h0aRnvCjLo=
X-Received: by 2002:a25:1589:0:b0:dcd:b624:3e55 with SMTP id
 131-20020a251589000000b00dcdb6243e55mr261141ybv.54.1708635438473; Thu, 22 Feb
 2024 12:57:18 -0800 (PST)
MIME-Version: 1.0
References: <20240217150228.5788-1-johan+linaro@kernel.org> <20240217150228.5788-3-johan+linaro@kernel.org>
In-Reply-To: <20240217150228.5788-3-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 22 Feb 2024 22:57:07 +0200
Message-ID: <CAA8EJpoxe8BmyFqMC5yrqdx-Sx2VR_2gT3x6WT9MyhdLuw+xmA@mail.gmail.com>
Subject: Re: [PATCH 2/6] drm/bridge: aux-hpd: separate allocation and registration
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Vinod Koul <vkoul@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_125720_187932_5188B711 
X-CRM114-Status: GOOD (  28.89  )
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

On Sat, 17 Feb 2024 at 17:03, Johan Hovold <johan+linaro@kernel.org> wrote:
>
> Combining allocation and registration is an anti-pattern that should be
> avoided. Add two new functions for allocating and registering an dp-hpd
> bridge with a proper 'devm' prefix so that it is clear that these are
> device managed interfaces.
>
>         devm_drm_dp_hpd_bridge_alloc()
>         devm_drm_dp_hpd_bridge_add()
>
> The new interface will be used to fix a use-after-free bug in the
> Qualcomm PMIC GLINK driver and may prevent similar issues from being
> introduced elsewhere.
>
> The existing drm_dp_hpd_bridge_register() is reimplemented using the
> above and left in place for now.
>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Minor nit below.

> ---
>  drivers/gpu/drm/bridge/aux-hpd-bridge.c | 67 +++++++++++++++++++------
>  include/drm/bridge/aux-bridge.h         | 15 ++++++
>  2 files changed, 67 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/aux-hpd-bridge.c b/drivers/gpu/drm/bridge/aux-hpd-bridge.c
> index 9e71daf95bde..6886db2d9e00 100644
> --- a/drivers/gpu/drm/bridge/aux-hpd-bridge.c
> +++ b/drivers/gpu/drm/bridge/aux-hpd-bridge.c
> @@ -30,16 +30,13 @@ static void drm_aux_hpd_bridge_release(struct device *dev)
>         kfree(adev);
>  }
>
> -static void drm_aux_hpd_bridge_unregister_adev(void *_adev)
> +static void drm_aux_hpd_bridge_free_adev(void *_adev)
>  {
> -       struct auxiliary_device *adev = _adev;
> -
> -       auxiliary_device_delete(adev);
> -       auxiliary_device_uninit(adev);
> +       auxiliary_device_uninit(_adev);
>  }
>
>  /**
> - * drm_dp_hpd_bridge_register - Create a simple HPD DisplayPort bridge
> + * devm_drm_dp_hpd_bridge_alloc - allocate a HPD DisplayPort bridge
>   * @parent: device instance providing this bridge
>   * @np: device node pointer corresponding to this bridge instance
>   *
> @@ -47,11 +44,9 @@ static void drm_aux_hpd_bridge_unregister_adev(void *_adev)
>   * DRM_MODE_CONNECTOR_DisplayPort, which terminates the bridge chain and is
>   * able to send the HPD events.
>   *
> - * Return: device instance that will handle created bridge or an error code
> - * encoded into the pointer.
> + * Return: bridge auxiliary device pointer or an error pointer
>   */
> -struct device *drm_dp_hpd_bridge_register(struct device *parent,
> -                                         struct device_node *np)
> +struct auxiliary_device *devm_drm_dp_hpd_bridge_alloc(struct device *parent, struct device_node *np)
>  {
>         struct auxiliary_device *adev;
>         int ret;
> @@ -82,13 +77,55 @@ struct device *drm_dp_hpd_bridge_register(struct device *parent,
>                 return ERR_PTR(ret);
>         }
>
> -       ret = auxiliary_device_add(adev);
> -       if (ret) {
> -               auxiliary_device_uninit(adev);
> +       ret = devm_add_action_or_reset(parent, drm_aux_hpd_bridge_free_adev, adev);
> +       if (ret)
>                 return ERR_PTR(ret);
> -       }
>
> -       ret = devm_add_action_or_reset(parent, drm_aux_hpd_bridge_unregister_adev, adev);
> +       return adev;
> +}
> +EXPORT_SYMBOL_GPL(devm_drm_dp_hpd_bridge_alloc);
> +
> +static void drm_aux_hpd_bridge_del_adev(void *_adev)
> +{
> +       auxiliary_device_delete(_adev);
> +}
> +
> +/**
> + * devm_drm_dp_hpd_bridge_add - register a HDP DisplayPort bridge
> + * @dev: struct device to tie registration lifetime to
> + * @adev: bridge auxiliary device to be registered
> + *
> + * Returns: zero on success or a negative errno
> + */
> +int devm_drm_dp_hpd_bridge_add(struct device *dev, struct auxiliary_device *adev)
> +{
> +       int ret;
> +
> +       ret = auxiliary_device_add(adev);
> +       if (ret)
> +               return ret;
> +
> +       return devm_add_action_or_reset(dev, drm_aux_hpd_bridge_del_adev, adev);
> +}
> +EXPORT_SYMBOL_GPL(devm_drm_dp_hpd_bridge_add);
> +
> +/**
> + * drm_dp_hpd_bridge_register - allocate and register a HDP DisplayPort bridge
> + * @parent: device instance providing this bridge
> + * @np: device node pointer corresponding to this bridge instance
> + *
> + * Return: device instance that will handle created bridge or an error pointer
> + */
> +struct device *drm_dp_hpd_bridge_register(struct device *parent, struct device_node *np)
> +{
> +       struct auxiliary_device *adev;
> +       int ret;
> +
> +       adev = devm_drm_dp_hpd_bridge_alloc(parent, np);
> +       if (IS_ERR(adev))
> +               return ERR_CAST(adev);
> +
> +       ret = devm_drm_dp_hpd_bridge_add(parent, adev);
>         if (ret)
>                 return ERR_PTR(ret);
>
> diff --git a/include/drm/bridge/aux-bridge.h b/include/drm/bridge/aux-bridge.h
> index c4c423e97f06..4453906105ca 100644
> --- a/include/drm/bridge/aux-bridge.h
> +++ b/include/drm/bridge/aux-bridge.h
> @@ -9,6 +9,8 @@
>
>  #include <drm/drm_connector.h>
>
> +struct auxiliary_device;
> +
>  #if IS_ENABLED(CONFIG_DRM_AUX_BRIDGE)
>  int drm_aux_bridge_register(struct device *parent);
>  #else
> @@ -19,10 +21,23 @@ static inline int drm_aux_bridge_register(struct device *parent)
>  #endif
>
>  #if IS_ENABLED(CONFIG_DRM_AUX_HPD_BRIDGE)
> +struct auxiliary_device *devm_drm_dp_hpd_bridge_alloc(struct device *parent, struct device_node *np);
> +int devm_drm_dp_hpd_bridge_add(struct device *dev, struct auxiliary_device *adev);

I had a pretty close idea during prototyping, but I ended up doing it
as a single function for the following reasons:

First, this exports the implementation detail that internally the code
uses an aux device.
Also, by exporting the aux device the code becomes less type-safe. By
mistake one can call devm_drm_dp_hpd_bridge_add() on any aux device,
which is not necessarily the HPD bridge.
I'd prefer to see an opaque device-specific structure instead. WDYT?

>  struct device *drm_dp_hpd_bridge_register(struct device *parent,
>                                           struct device_node *np);
>  void drm_aux_hpd_bridge_notify(struct device *dev, enum drm_connector_status status);
>  #else
> +static inline struct auxiliary_device *devm_drm_dp_hpd_bridge_alloc(struct device *parent,
> +                                                                   struct device_node *np)
> +{
> +       return NULL;
> +}
> +
> +static inline int devm_drm_dp_hpd_bridge_add(struct auxiliary_device *adev)
> +{
> +       return 0;
> +}
> +
>  static inline struct device *drm_dp_hpd_bridge_register(struct device *parent,
>                                                         struct device_node *np)
>  {
> --
> 2.43.0
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
