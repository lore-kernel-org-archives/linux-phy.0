Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83EEAC5478C
	for <linux-phy@archiver.kernel.org>; Thu, 22 Feb 2024 21:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WFcAVRKtBhB1wLxzvWIuXgpcdrzHq2XLqNIkjA17xSI=; b=cPD1hJR2+8UQ56
	8ifqVWAXLR416dPRaxORxnUK/Jlq2ajOHmnMGqxsP5QT8aksZS4OI2/qu8q7lTAemCjG8P5sjYj94
	q6JxkG6n+l04jW6TXKfWz70Er4i9a9V2EJjAYLxrNRn6AH5dtBHU/oVxjA1Ni2hlPAlwT29Y+YWfs
	lGLAvHkIhLY5CMGy2jt1a8ZaznNANdXy2USwVOymFTCA/mfIiqim+pQV1QoISfHtt8cL1Ps8ie6XM
	jQt1tV0H8DviAH9zVj5Ps7IXmf+BhnCrXLdU+/1Tillpy2H2FuG1/T5alBCIY7fmE0dmslIol/+Nd
	XsifKA1NDV8auk3mxh7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdGKw-00000006bad-0sUI;
	Thu, 22 Feb 2024 21:10:34 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdGKt-00000006bXW-2P6i
	for linux-phy@lists.infradead.org;
	Thu, 22 Feb 2024 21:10:32 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id 3f1490d57ef6-dc742543119so165937276.0
        for <linux-phy@lists.infradead.org>; Thu, 22 Feb 2024 13:10:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708636222; x=1709241022; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KISjjhinzIu3kIcQRpPQsw9fHAQrHUvQiIbfDFbxHeA=;
        b=SGdmcy04SqmDgZdIVPJhxj38zbcXmJpPyMmLZImbcrKF4JpiXzr5uPR9YoKyvJ1bgM
         Cc2wmBO2Hts/EJOVd3pE4pCtXS5iV2ytdeAKzhd7mukIqmKEQsbaQ8lsWOm7g6EKiM5g
         XqO5DZ9DPNqWtIhVj7k2QZqrFrNEpRPYkhDy7Qb88J28NjGptRIvjM2lfLKJ2FPk1BGW
         zZwpxrutN6YqBuArI/2VN6aX/YtNC1uztFAxscNgJW/UaZUxsdJAOwKmuXAZo31m3HtE
         mVDyv3/YFilN4uXgyGk+Cq5nK6aX4WfgeFPz4ZKSuBvOT4W3AVQS7lANAywr2ETrgaZC
         SlRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708636222; x=1709241022;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KISjjhinzIu3kIcQRpPQsw9fHAQrHUvQiIbfDFbxHeA=;
        b=bm6uKIs6b5uk5KCnAUa6v/mJK8vyCP+qvukMbhcLDTDU3aSCktFMGnW1n5GdoMI6cS
         78vsZib3Uq9qDVdW1eUwNE8zG+21LxdY6u9h6elIuYP0P8LBDQC0tUXyk5Wzt+Txclu9
         HWruYrKlKMa/6DpNd01RUnh8OPLiypo+UwrVi/VTF94FN4i0Zb+E5BAqmNg0R1WuxzNb
         yEj4jW95dhQJyCGIUM0cufrGt/ycIROmX6OspRuPPX7MN0CD65r7WCmnpEip+VcwOqjd
         p7jrDP50FdceooQiUeryWzHcUvPdI8Dua0rPJfCkKX/P75GmJn364hcdFrrA2MLUpd+O
         zPoA==
X-Forwarded-Encrypted: i=1; AJvYcCX5XK7L0wJbIWocWNCwOoTJnnGwSVqUxAGloEOMlRTN91s5ZOC6sef2Y5nv7tqrg2oCgqsfYZbXa9UjjZDUrgQbn/LXRFipdI4mcn2MGw==
X-Gm-Message-State: AOJu0YwQAjxcI7JnmFUIKVH1/1iKlicOJ8U9Bl/aQCWwbPIKu2ORlqnC
	uW/UTlGa8H4iRmaT5NrEdJSlCI8u+nMzi0bVLwJVRt3L+8+v0H+k37ArOMtNgzJY1ToI9LCNNaI
	Ll+HKq3d9jw5Jml9AIPcxr2VTiLCeyqDB/y1BHQ==
X-Google-Smtp-Source: AGHT+IEBy/FkALInxvThzqnKOPLYZgoL5uV+k6buUGcPqG2FwQZGtnq6q8rWdEVgVmBapKjqMXBdOJ9HXitiHUCL6FU=
X-Received: by 2002:a25:888f:0:b0:dcc:aa1f:af3c with SMTP id
 d15-20020a25888f000000b00dccaa1faf3cmr366027ybl.40.1708636222326; Thu, 22 Feb
 2024 13:10:22 -0800 (PST)
MIME-Version: 1.0
References: <20240217150228.5788-1-johan+linaro@kernel.org> <20240217150228.5788-4-johan+linaro@kernel.org>
In-Reply-To: <20240217150228.5788-4-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 22 Feb 2024 23:10:11 +0200
Message-ID: <CAA8EJpoPaknqPUEg8p37Nh1MV62Cr8fH+MxE-1b+T-8h3BmO9Q@mail.gmail.com>
Subject: Re: [PATCH 3/6] soc: qcom: pmic_glink_altmode: fix drm bridge use-after-free
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
	linux-phy@lists.infradead.org, stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_131031_623120_83479443 
X-CRM114-Status: GOOD (  21.56  )
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
>         dp -> aux -> dp-hpd (freed)
>
> which may, for example, result in the freed bridge failing to attach:
>
>         [drm:drm_bridge_attach [drm]] *ERROR* failed to attach bridge /soc@0/phy@88eb000 to encoder TMDS-31: -16
>
> or a NULL-pointer dereference:
>
>         Unable to handle kernel NULL pointer dereference at virtual address 0000000000000000
>         ...
>         Call trace:
>           drm_bridge_attach+0x70/0x1a8 [drm]
>           drm_aux_bridge_attach+0x24/0x38 [aux_bridge]
>           drm_bridge_attach+0x80/0x1a8 [drm]
>           dp_bridge_init+0xa8/0x15c [msm]
>           msm_dp_modeset_init+0x28/0xc4 [msm]
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
> ---
>  drivers/soc/qcom/pmic_glink_altmode.c | 16 +++++++++++++---
>  1 file changed, 13 insertions(+), 3 deletions(-)
>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
