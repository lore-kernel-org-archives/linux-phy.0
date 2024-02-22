Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E970FC54791
	for <linux-phy@archiver.kernel.org>; Thu, 22 Feb 2024 21:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KZBdmK/gE/YJXfQvvhQARxamUHjnEjuayX5Ez0nRIDg=; b=zsfddboM3YI6u7
	HbiOwZXpKEJPCXsB3JLkchAISW9sHHpJEqGuD6YMehQ5eKEVC7nI1C3zeHYlLNjnaTds40CxHa1Dw
	rBVH4UI1nVi9kzACH5MDKZvkeCCj+IT0yT4X/JjOVqQJEkODBOlOM7l+YWx2i0K3XsgMYeRR5GqGf
	4WgL9bHbA9w8HPzcP3hMXHqrGGZ97arXQ26RwrqO7sOdZCX4gFe3cQT9pdVmCiK8UT+A7DydLBd0a
	tSDbLpZfEVkgZYGTVNuR6N8ONv2rTzvGM9DPiIH7aSZCKOTzq/RqBp8XhTkUFtHodw+3C06RjmYff
	zBdjlxqmrgOon4a6Sx5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdGLe-00000006blm-2WMj;
	Thu, 22 Feb 2024 21:11:18 +0000
Received: from mail-yb1-xb34.google.com ([2607:f8b0:4864:20::b34])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdGLa-00000006biJ-1viq
	for linux-phy@lists.infradead.org;
	Thu, 22 Feb 2024 21:11:16 +0000
Received: by mail-yb1-xb34.google.com with SMTP id 3f1490d57ef6-dcc7cdb3a98so154326276.2
        for <linux-phy@lists.infradead.org>; Thu, 22 Feb 2024 13:11:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708636259; x=1709241059; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=pkCYglSSRXX0GiB1gOdgF7fLOHHbF1/C5DnjQjUjWpM=;
        b=QV7qskBg4Cg0zI9nysUGg5ql0U5MnQff2lQs0zSPbv6OTERCweU2jfOlA+mQRqGmSV
         +l+4KkjhhfgHcAGVcVmfLsUbvMiD9oqxCaeXuQfEeGvayQczJ44NrOL4gMv25r05JCjV
         VBArJZ0g7cqvJwdfcCk16C4cwwVS+nbT3FeJ8wnKZTTxZVZqYUfrg+eRnnMRQMJ7z/Du
         4AF4xQxNVNe6wKb1QPohWxTz0X49E9i899/Q3cVR6a1gQrfEHsj5iQ4kDeChaAA8LDSt
         tXXGfoQPZLE+WfUnZXDKgZiZfzYboAnzFWuvI3zZ1Omn4lKvMTR1B68oxWqbUjjeIPE/
         asWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708636259; x=1709241059;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pkCYglSSRXX0GiB1gOdgF7fLOHHbF1/C5DnjQjUjWpM=;
        b=gw2mH2vfSy9ss5CYW4TtEFQIMyytq3Z84xxtxmLDADhelB+pzBE0FdQQb2ZEPSlR9G
         GfHe0wpEdytBYh1XfkLZjcfYTnB8UmvrHUpUUKR57nTsGdntrt2S7UljXk1P00J0d7i3
         gosmIPF20IOEAMw90lNy8dHn1LLaRQ5jV276MmGa0wq1XNh8tCP6b9Z1DurF9n6knnfl
         SB311fL6NL86XUz+em3T4pq1rWGlEe73+BvQA2VGT9ASPudFk+tU5+o4VfInjOyJDR9T
         KLa78MQ0KKWV6f/fLB2d93FZ3CJ3282QtmHkN1eikcvfC8XJhFsdQ2hExFmsgVEMyexM
         Nt+Q==
X-Forwarded-Encrypted: i=1; AJvYcCWNTPnGrk0KopGSApswBd47ociiw+ppdQ/vas5cXVSEgRq4ANEa349Y9oUcmjEnDnfUdmAsm4zialZrkQt27YjKUA/Mdl6FlYO+xCBw/w==
X-Gm-Message-State: AOJu0YyO23qutydW743NurgoHMmeOrV4d7vzLwcQHTedNnfYIN66Z3ze
	RrK1QWbaZUZX6og1t3oBnLFJ/uC7UX/7eoXa8E8dWI+CrKTv2TSt8mcR76PL2SqyhChkdf86wk6
	+OLvnjQhWiKOIaQ3PH/hH08wYsfT+0976F4xRBA==
X-Google-Smtp-Source: AGHT+IHwJkpERffkN3VWKbN/6atXOQ33nEsq/sgXRDlWA2N8ix01nl3hWBFMaZvbIXKA9vuRKkf9w2wT34E6I2Z7bFE=
X-Received: by 2002:a5b:2ce:0:b0:dc6:c367:f0e4 with SMTP id
 h14-20020a5b02ce000000b00dc6c367f0e4mr343701ybp.52.1708636259455; Thu, 22 Feb
 2024 13:10:59 -0800 (PST)
MIME-Version: 1.0
References: <20240217150228.5788-1-johan+linaro@kernel.org> <20240217150228.5788-5-johan+linaro@kernel.org>
In-Reply-To: <20240217150228.5788-5-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 22 Feb 2024 23:10:48 +0200
Message-ID: <CAA8EJppsaMD91AOnFx8J8fHzZj_dCrOeM-HQfNukwCsrw7UYXA@mail.gmail.com>
Subject: Re: [PATCH 4/6] soc: qcom: pmic_glink: Fix boot when QRTR=m
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
	linux-phy@lists.infradead.org, Rob Clark <robdclark@chromium.org>, 
	stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_131114_508073_412B64EB 
X-CRM114-Status: GOOD (  11.21  )
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
> From: Rob Clark <robdclark@chromium.org>
>
> We need to bail out before adding/removing devices if we are going to
> -EPROBE_DEFER. Otherwise boot can get stuck in a probe deferral loop due
> to a long-standing issue in driver core (see fbc35b45f9f6 ("Add
> documentation on meaning of -EPROBE_DEFER")).
>
> Deregistering the altmode child device can potentially also trigger bugs
> in the DRM bridge implementation, which does not expect bridges to go
> away.
>
> Suggested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Rob Clark <robdclark@chromium.org>
> Link: https://lore.kernel.org/r/20231213210644.8702-1-robdclark@gmail.com
> [ johan: rebase on 6.8-rc4, amend commit message and mention DRM ]
> Fixes: 58ef4ece1e41 ("soc: qcom: pmic_glink: Introduce base PMIC GLINK driver")
> Cc: stable@vger.kernel.org      # 6.3
> Cc: Bjorn Andersson <andersson@kernel.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  drivers/soc/qcom/pmic_glink.c | 21 +++++++++++----------
>  1 file changed, 11 insertions(+), 10 deletions(-)
>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
