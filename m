Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 988C7E64AB0
	for <linux-phy@archiver.kernel.org>; Tue,  3 Dec 2024 14:07:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EkNzKicnuwt+bdXXi9Xifgfy3a/p/HOjvXVL/XUFZuo=; b=GX7Kcw1eYDXNw6
	G/qjWfAbuYhDZ/kzoR8aj13ZGK+uXFS7qIYJdhGhIA4LELqhPys3VgEFniM1q2ZGRJVmBTw4pzu5t
	QJLFMUY/H18gTDKToFKN5XE4s2duCqx8Bi1HJAyvUNvf33RJfywCOQI2KAZlhpIK1ltmTLh6kyrLW
	R530CiISeNQwWMaxDLKQgbWN0uGhGgrQaR9BqbPoLFcoSBfqxbf1LvNU7b+GkP5Q7oGlwDAfYm6H/
	zp27nqm7w5iol0bh38mbtYBLNcztXJoty61jknH4ZFR5D3w/HYuf9XmUjHdcwmpEZQ2D8ajtqH00B
	VLFcawBQT6t84CbMyL+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tITZ0-00000009jFK-1dBL;
	Tue, 03 Dec 2024 14:07:42 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tITYx-00000009jES-2eyK
	for linux-phy@lists.infradead.org;
	Tue, 03 Dec 2024 14:07:40 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2ffced84ba8so53779451fa.2
        for <linux-phy@lists.infradead.org>; Tue, 03 Dec 2024 06:07:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733234857; x=1733839657; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=alsc9vr73lToVKNbHqTqZ3F3g1arQk5UqwKIUtPE6Ps=;
        b=AFWy4qZ1QiWp1/aYShXMzgz9QElt99PmjQDt6knPMDtsH88aRQFn/VsY/fakz+zgzo
         YUDlU0tFdq5qwmXIhAJ4HA3Jt333hmM6QV6B82Tbbb7zYjgpYrXQE4EOIUP1ZMOcNDZA
         5oLbELreXYrbzAZfwh715pJL0nsgst5cC5eCEkm8REak1h9vw3hynWWaerFHa8/K8Xpn
         UGIxUV6xtvLzWidf0WiUnfSkyWgABvcEHADZqXQDJiGnHMnU7EibJS6W+oUbFs/R5AVQ
         F93VbI3KNjbgIflFEFLWzgTcLyqBuP5yKUHriSTDv9PqPxYjGMN5/KPghxOWb4yMYrXF
         hELQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733234857; x=1733839657;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=alsc9vr73lToVKNbHqTqZ3F3g1arQk5UqwKIUtPE6Ps=;
        b=bgNuwI7RJ417YWZMdu/v/WGt3IHTv9rCrubmXd9SW3pthYPdrpEHRQmHoPNQKS6Mw4
         H0QP3tZmePK3SsBdg3zDnJDimIkhqiaj+hgzVoZRnhj1JZ9FqBpeOoRfIktJPK+SXZEV
         H+SVRIVbRjzorXv+EH/bt0xoftjurXlqzQMUDYpZCoTXXNK2aSlU+W3SERkP+55O3xxG
         KKtYYsFzm137lDvi3d0ase2wisNtXGgaXIFRI0KxFeV3V2mZNDLPzIEXBITLgKUN+T2G
         eGfYBdOsOHtoijV1IixRYFzoCZs/Ma3JKwqmLJg+mu4CK9hXAmJFv4sTv8re0R4fUPU6
         SYrQ==
X-Forwarded-Encrypted: i=1; AJvYcCX5E8ZTsImD9AjAos/wcDNJBiNDjpZNkgbonhtk4QT2txSEyGdLVqBDfpWFx9yd+n+TagKjk5oB2kw=@lists.infradead.org
X-Gm-Message-State: AOJu0YylbjeU/BW84QuWvd1kLUWSuK288iPf/YWakjZs2oVpDGZJY7XC
	MOLXLD6ZeRLnNvoIlIz4YuyNY4IwVFia14NxbovhzBtbL0J7JlDANUrNxvCQhp0=
X-Gm-Gg: ASbGncvqb2iNUzeZ0h7I5ZvFYr66GC3DZ+BScNYje4vA4iolaF/bj2OEFSqThZaxlt+
	0Uunq25o8d0O3UD45DDja+xD6uGkPJlZUeWkN3xRm9rXQnQrGexvsAdEVbgdXXLO7l6YXge0jtq
	FNRHz8ujmSgR0Hpxkye9s25HwWG7nyDbeCxxPtjKcI5T6RjmuXSLymj+gX3M8r5d4IoZYlc/CfD
	/SfwZICzec6o3RdcJeM/kXO9mPiFHIjtW4oqDM+3Ehg4Q7iPIrVG43ukWgSFCQS3Mq281uI2b1t
	1AI2Ni696g0V/8LtxUX2SqMgyjWveA==
X-Google-Smtp-Source: AGHT+IGzMeET4siJUKFgW4BnmqUwqvzwcdd9B9sOmlcJgCBnOeScvQxwQ4zyH6t4AC935j3xTebwFQ==
X-Received: by 2002:a2e:bd82:0:b0:2fb:5ebe:ed40 with SMTP id 38308e7fff4ca-30009c3443dmr15745541fa.15.1733234855610;
        Tue, 03 Dec 2024 06:07:35 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ffdfc74a1csm16403761fa.69.2024.12.03.06.07.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 06:07:33 -0800 (PST)
Date: Tue, 3 Dec 2024 16:07:31 +0200
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
Subject: Re: [PATCH 7/8] drm/msm/dp: Retry Link Training 2 with lower pattern
Message-ID: <xlmgdysjah3ueypdrdu5b6botvidb2wn4rfm4qpeysclscmuwy@vpfv2ymprblj>
References: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
 <20241129-add-displayport-support-for-qcs615-platform-v1-7-09a4338d93ef@quicinc.com>
 <CAA8EJpoN1qBHyZrQJT_=e_26+tcaKRnSrhtxrK6zBP4BwpL=Hg@mail.gmail.com>
 <b4345b9e-62c6-470d-b1b0-4758cef7f175@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b4345b9e-62c6-470d-b1b0-4758cef7f175@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_060739_676040_A67A3813 
X-CRM114-Status: GOOD (  24.59  )
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

On Tue, Dec 03, 2024 at 04:13:22PM +0800, Xiangxu Yin wrote:
> 
> 
> On 11/29/2024 9:53 PM, Dmitry Baryshkov wrote:
> > On Fri, 29 Nov 2024 at 09:59, Xiangxu Yin <quic_xiangxuy@quicinc.com> wrote:
> >>
> >> Add a mechanism to retry Link Training 2 by lowering the pattern level
> >> when the link training #2 first attempt fails. This approach enhances
> >> compatibility, particularly addressing issues caused by certain hub
> >> configurations.
> > 
> > Please reference corresponding part of the standard, describing this lowering.
> > 
> Per DisplayPort 1.4a specification Section 3.5.1.2 and Table 3-10, while the standard doesn't explicitly define a TPS downgrade mechanism, it does specify:

Anything in DP 2.1?

> - All devices shall support TPS1 and TPS2
> - HDR2-capable devices shall support TPS3
> - HDR3-capable devices shall support TPS4
> While these capabilities are explicitly defined DPCD for sink devices, source device capabilities are less strictly defined, with the minimum requirement being support for TPS1 and TPS2.
> In QCS615 DP phy is only supporting to HBR2, we observed a critical interoperability scenario with a DP->HDMI bridge. When link training at TPS4 consistently failed, downgrading to the next lower training pattern successfully established the link and display output successfully.

Any other driver doing such TPS lowering? Or maybe we should be
selecting TPS3 for HBR2-only devices?

> 
> This experience suggests that implementing a flexible link training pattern downgrade mechanism can significantly improve compatibility with third-party, non-standard hubs and displays,
> especially in scenarios where strict adherence to the highest training pattern might prevent successful connection.
> >>
> >> Signed-off-by: Xiangxu Yin <quic_xiangxuy@quicinc.com>
> >> ---
> >>  drivers/gpu/drm/msm/dp/dp_ctrl.c | 34 ++++++++++++++++++++++++++++++----
> >>  1 file changed, 30 insertions(+), 4 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/msm/dp/dp_ctrl.c b/drivers/gpu/drm/msm/dp/dp_ctrl.c
> >> index 49c8ce9b2d0e57a613e50865be3fe98e814d425a..b1862294cb98c9f756b0108b7670cb42de37bae4 100644
> >> --- a/drivers/gpu/drm/msm/dp/dp_ctrl.c
> >> +++ b/drivers/gpu/drm/msm/dp/dp_ctrl.c
> >> @@ -1220,7 +1220,7 @@ static void msm_dp_ctrl_clear_training_pattern(struct msm_dp_ctrl_private *ctrl)
> >>  }
> >>
> >>  static int msm_dp_ctrl_link_train_2(struct msm_dp_ctrl_private *ctrl,
> >> -                       int *training_step)
> >> +                       int *training_step, bool downgrade)
> >>  {
> >>         int tries = 0, ret = 0;
> >>         u8 pattern;
> >> @@ -1243,6 +1243,28 @@ static int msm_dp_ctrl_link_train_2(struct msm_dp_ctrl_private *ctrl,
> >>                 state_ctrl_bit = 2;
> >>         }
> >>
> >> +       /*
> >> +        * DP link training uses the highest allowed pattern by default.
> >> +        * If it fails, the pattern is downgraded to improve cable and monitor compatibility.
> >> +        */
> >> +       if (downgrade) {
> >> +               switch (pattern) {
> >> +               case DP_TRAINING_PATTERN_4:
> >> +                       pattern = DP_TRAINING_PATTERN_3;
> >> +                       state_ctrl_bit = 3;
> >> +                       break;
> >> +               case DP_TRAINING_PATTERN_3:
> >> +                       pattern = DP_TRAINING_PATTERN_2;
> >> +                       state_ctrl_bit = 2;
> >> +                       break;
> >> +               default:
> >> +                       break;
> >> +               }
> >> +       }
> >> +
> >> +       drm_dbg_dp(ctrl->drm_dev, "pattern(%d) state_ctrl_bit(%d) downgrade(%d)\n",
> >> +               pattern, state_ctrl_bit, downgrade);
> >> +
> >>         ret = msm_dp_catalog_ctrl_set_pattern_state_bit(ctrl->catalog, state_ctrl_bit);
> >>         if (ret)
> >>                 return ret;
> >> @@ -1311,10 +1333,14 @@ static int msm_dp_ctrl_link_train(struct msm_dp_ctrl_private *ctrl,
> >>         /* print success info as this is a result of user initiated action */
> >>         drm_dbg_dp(ctrl->drm_dev, "link training #1 successful\n");
> >>
> >> -       ret = msm_dp_ctrl_link_train_2(ctrl, training_step);
> >> +       ret = msm_dp_ctrl_link_train_2(ctrl, training_step, false);
> >>         if (ret) {
> >> -               DRM_ERROR("link training #2 failed. ret=%d\n", ret);
> >> -               goto end;
> >> +               drm_dbg_dp(ctrl->drm_dev, "link training #2 failed, retry downgrade.\n");
> >> +               ret = msm_dp_ctrl_link_train_2(ctrl, training_step, true);
> >> +               if (ret) {
> >> +                       DRM_ERROR("link training #2 failed. ret=%d\n", ret);
> >> +                       goto end;
> >> +               }
> >>         }
> >>
> >>         /* print success info as this is a result of user initiated action */
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
