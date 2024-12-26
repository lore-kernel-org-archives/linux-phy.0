Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81787E77188
	for <linux-phy@archiver.kernel.org>; Thu, 26 Dec 2024 20:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u69S/9Jt12hJMziwRw2/RY5KovINLRS51N37hxERxr8=; b=4TJPSxg7o1YheF
	EpflLrT1eM+T2X2XcbgVLa0pIWgvl7cBSbOM2JtAooH30EuK5licpK9Pa+oGB7GccEMqMY1Coy9UZ
	HClAS8jgzfK4FPMlBTdPusm++c3+DKQxRuDYBvMlbG14jxqYr9kMod9n7DBQuAG1pKkcs0IHBFiIj
	wQ8H4qc0b8wYlkjQ7yD2MgEDuMC6m9puo8wJKUp/D7/TnFLK4baEVl/OQ75dXWJ2v73yYk1UgMC13
	68+o7nYv3FzCeJQyt6jpoDfyUnYCXx+7IQJ13qKqGaPN+LYj6wKqXJIl3R24A8gZxaEEVzDBGXz5H
	iIuV1F8wkJHhNxu0UEGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQuKf-0000000GMFp-18Wa;
	Thu, 26 Dec 2024 20:19:45 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQuKc-0000000GMDn-2W5W
	for linux-phy@lists.infradead.org;
	Thu, 26 Dec 2024 20:19:43 +0000
Received: by mail-yb1-xb32.google.com with SMTP id 3f1490d57ef6-e455bf1f4d3so5976258276.2
        for <linux-phy@lists.infradead.org>; Thu, 26 Dec 2024 12:19:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735244381; x=1735849181; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Sb98FCKmeyAT2DVLwKOv3zAbNwq73exSEOZGxjhvBeY=;
        b=eEzEpwDRgpBeGWB2nEjIjQPOowrx1JMGlVAEuIQ/lawNqP3eObxmS+sc9ZS4B2YGOT
         GQzgyEBJaevzzc0MYKtHHNGrIbBF/XeXbZrj5aLM6vKaNViv/WamCmauX7plx7Q5X7UX
         GlpR8890qtJl/Nqqlm6w1mn2G3aqFhxIinthUFayHA/IzSzp91pmydWQj0wa4YEaYShz
         or8mXlpm+P+hyzmd21TYqzILXweLQCTPspPYIIl9GULdDcIXX5A+m6RAaiajgkzuw4Qx
         gmTzIKoT0hXI5BAqBjBEgWArnak1wEqi643kTuHzQ5Qw8Y6oOfLIvesw3WRE910c2ntH
         YX6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735244381; x=1735849181;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Sb98FCKmeyAT2DVLwKOv3zAbNwq73exSEOZGxjhvBeY=;
        b=CuVUvrfU5rg6zCeYtxMFteH5MaqhfJ+bpl6RI+HrYdLBGu2SY6tlkmpwdUO8Ruk5Z4
         b2M9CcPKrFZam+HZlSZMwdNWb7DuLT1Q7zPUJq3tP+wVy3+WNyvdbNc1o7+FsUSyWh0L
         W4L55aGvW6uY66L5OPwvY35S8eGPSQd+H5c+BdH9WadY/W6NjeBYL7CA1wm7lxvchOq9
         vsfKGXz9Eg/qvVn7L3qB6zbz6du+o/5ITPs66JDESEakVF9bPtHOl1rk7B5l9cRSLvDB
         0cn1UmxUNoWMGTb9o9OmdkXCMioOqOmdQJ4c3Uw2Sh9s6ZgKFcbd3urVLXXhahOAX0LO
         yZhA==
X-Forwarded-Encrypted: i=1; AJvYcCVsb409tGrU8x2Osxyz3dDthstgCpzQuHwzMgGOO9B0edPFto4q1afN66h/ugkkkxqphNrQHOnQMxU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxPdIjOqhuF8ZSu/xc9kDPyO5bWObbOeuehW/jH1v/HQSG7pynM
	cW456ODE0jggBMYgkzszRdPraARUfo9bSWYlwy0/11cNLJ0VuDTSoGvMi8RrEYn7YHJF0w1hWyG
	fbxLIgaeR6tNzw21CV2Z0UE4Q9uSPL7wiGVZp5Q==
X-Gm-Gg: ASbGncumnUDKqjbauXPZQjlC3Nd2mPCjxegQGpU7fSrFkxNKZC6VVwoYbQ/9Z1pwuM9
	TAYa0mCVASQPTuKpQJjfJqzFlaiAqgBFk+s1ZZRYzl6BcCOCJnKteVJjxzjNQt9c3TxQcUA==
X-Google-Smtp-Source: AGHT+IGoBxXuv5ahv6Ndnqrf1Xf1S/+gYnZ7NrPaaZ39WftDOcJ5Lr0nHUjNy/jMupZW6W2JyistA+0q73RmPyQIxNE=
X-Received: by 2002:a05:690c:62c6:b0:6ef:59ef:f194 with SMTP id
 00721157ae682-6f3f80de678mr165847907b3.4.1735244380669; Thu, 26 Dec 2024
 12:19:40 -0800 (PST)
MIME-Version: 1.0
References: <20241223064147.3961652-1-victor.liu@nxp.com> <20241223064147.3961652-13-victor.liu@nxp.com>
 <wpxxedxabgo2kxf5wuosu76i5ud3ce2tywm2imhvad4nyy5u2d@qgfhev2hndba> <77540387-b1ac-46c1-a3c0-afbd34337d61@nxp.com>
In-Reply-To: <77540387-b1ac-46c1-a3c0-afbd34337d61@nxp.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 26 Dec 2024 22:19:29 +0200
Message-ID: <CAA8EJpqwRfkjGCYfeRPj7u5hb_8fkMFDtcK1+YDG4nsez1WNXw@mail.gmail.com>
Subject: Re: [PATCH v7 12/19] drm/imx: Add i.MX8qxp Display Controller KMS
To: Liu Ying <victor.liu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	p.zabel@pengutronix.de, airlied@gmail.com, simona@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, 
	tglx@linutronix.de, vkoul@kernel.org, kishon@kernel.org, aisheng.dong@nxp.com, 
	agx@sigxcpu.org, u.kleine-koenig@baylibre.com, francesco@dolcini.it, 
	frank.li@nxp.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241226_121942_665943_5A99B4E7 
X-CRM114-Status: GOOD (  28.99  )
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

On Wed, 25 Dec 2024 at 09:18, Liu Ying <victor.liu@nxp.com> wrote:
>
> On 12/23/2024, Dmitry Baryshkov wrote:
> > On Mon, Dec 23, 2024 at 02:41:40PM +0800, Liu Ying wrote:
> >> i.MX8qxp Display Controller(DC) is comprised of three main components that
> >> include a blit engine for 2D graphics accelerations, display controller for
> >> display output processing, as well as a command sequencer.  Add kernel
> >> mode setting support for the display controller part with two CRTCs and
> >> two primary planes(backed by FetchLayer and FetchWarp respectively).  The
> >> registers of the display controller are accessed without command sequencer
> >> involved, instead just by using CPU.  The command sequencer is supposed to
> >> be used by the blit engine.
> >>
> >> Reviewed-by: Maxime Ripard <mripard@kernel.org>
> >> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> >> ---
> >> v7:
> >> * Drop using typeof in macros and explicitly define variable types. (Dmitry)
> >> * Add a comment for disable_irq_nosync() to explain why _nosync. (Dmitry)
> >> * Inline dc_crtc_check_clock(). (Dmitry)
> >> * Use global drm_dc->pe. (Dmitry)
> >> * Drop dc_crtc_disable_at_unbind(). (Dmitry)
> >> * Add kernel doc for struct dc_{crtc,drm_device,plane}. (Dmitry)
> >> * Define common IRQ handlers separately for each IRQs. (Dmitry)
> >> * Rebase this patch upon next-20241220, so drop date entry from drm_driver
> >>   and correctly include drm/clients/drm_client_setup.h.
> >> * Collect Maxime's R-b tag.
> >>
> >> v6:
> >> * No change.
> >>
> >> v5:
> >> * Replace .remove_new with .remove in dc-drv.c. (Uwe)
> >>
> >> v4:
> >> * Move dc_fg_displaymode(), dc_fg_panic_displaymode() and dc_lb_blendcontrol()
> >>   function calls from KMS routine to initialization stage. (Dmitry)
> >> * Drop dc-crtc.h and dc-plane.h header files and move relevant defines to
> >>   appropriate .h header files or .c source files. (Dmitry)
> >> * Drop futile "else" clause from dc_crtc_common_irq_handler(). (Dmitry)
> >> * Drop dc_drm->pe_rpm_count. (Dmitry)
> >> * Drop DC_{CRTCS,ENCODERS,PRIMARYS} macros and only use DC_DISPLAYS. (Dmitry)
> >> * Drop drmm_kcalloc() function call to allocate an array for storing IRQs.
> >>   Instead, put it in struct dc_crtc.  (Dmitry)
> >> * Call devm_request_irq() to request IRQs, instead of using drmm action.
> >>   (Dmitry)
> >> * Call devm_drm_of_get_bridge() to find the next bridge. (Dmitry)
> >> * Select DRM_CLIENT_SELECTION due to rebase.
> >> * Select the missing DRM_DISPLAY_HELPER and DRM_BRIDGE_CONNECTOR.
> >> * Use DRM_FBDEV_DMA_DRIVER_OPS due to rebase.
> >> * Replace drm_fbdev_dma_setup() with drm_client_setup_with_fourcc() due to
> >>   rebase.
> >> * Replace drmm_add_action_or_reset() with devm_add_action_or_reset() to
> >>   register dc_drm_component_unbind_all() action.
> >> * Request interrupts in dc_crtc_post_init() after encoder initialization to
> >>   make sure next bridge is found first.
> >>
> >> v3:
> >> * No change.
> >>
> >> v2:
> >> * Find next bridge from TCon's port.
> >> * Drop drm/drm_module.h include from dc-drv.c.
> >>
> >>  drivers/gpu/drm/imx/dc/Kconfig    |   5 +
> >>  drivers/gpu/drm/imx/dc/Makefile   |   5 +-
> >>  drivers/gpu/drm/imx/dc/dc-crtc.c  | 556 ++++++++++++++++++++++++++++++
> >>  drivers/gpu/drm/imx/dc/dc-de.h    |   3 +
> >>  drivers/gpu/drm/imx/dc/dc-drv.c   | 238 +++++++++++++
> >>  drivers/gpu/drm/imx/dc/dc-drv.h   |  22 ++
> >>  drivers/gpu/drm/imx/dc/dc-kms.c   | 143 ++++++++
> >>  drivers/gpu/drm/imx/dc/dc-kms.h   | 131 +++++++
> >>  drivers/gpu/drm/imx/dc/dc-plane.c | 241 +++++++++++++
> >>  9 files changed, 1342 insertions(+), 2 deletions(-)
> >>  create mode 100644 drivers/gpu/drm/imx/dc/dc-crtc.c
> >>  create mode 100644 drivers/gpu/drm/imx/dc/dc-kms.c
> >>  create mode 100644 drivers/gpu/drm/imx/dc/dc-kms.h
> >>  create mode 100644 drivers/gpu/drm/imx/dc/dc-plane.c
> >>
> >
> >
> >> +
> >> +static int dc_plane_check_no_off_screen(struct drm_plane_state *state,
> >> +                                    struct drm_crtc_state *crtc_state)
> >> +{
> >> +    if (state->dst.x1 < 0 || state->dst.y1 < 0 ||
> >> +        state->dst.x2 > crtc_state->adjusted_mode.hdisplay ||
> >> +        state->dst.y2 > crtc_state->adjusted_mode.vdisplay) {
> >> +            dc_plane_dbg(state->plane, "no off screen\n");
> >> +            return -EINVAL;
> >> +    }
> >
> > Nit: doesn't drm_atomic_helper_check_plane_state() ensure in this already?
>
> The can_position argument is set to true, though it is a bit unusual
> for primary plane.  If can_position is false, I think this should be
> ensured already by drm_atomic_helper_check_plane_state().

The function still calls drm_rect_clip_scaled() to clip the
plane_state->dst, does it not?

> > With that in mind
> >
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>
> Thanks.



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
