Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC22FD6EC0D
	for <linux-phy@archiver.kernel.org>; Fri, 29 Nov 2024 13:54:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BchJeuCr73gCKos5dRtFr7u8ocyWD7fMXaGoKBmfY5c=; b=tjl9hOHCIHHJLz
	kH5Qpu4k4yJ6fwL0kheXTiq/QBFXUN9cqc8DGBbPRA6RbF/mtb/JdN+HY43hkfcFpXw/BA/5woZZE
	I0sNR3YtMCjZ3XU5ZtqxMAo1OnzuxwssKT1lnMV5GsxMlInnFkQTA+tRYHGQQywCevgGJifJDM6+I
	GiPTG5i9r00cjF4BakAc5VhGJgogbH/LcG3p7Zh0jTZTqMcv04gcp4S7XM8uZU9BikCT+0Qk6Y1b+
	D2FE8am+Ppcm64I+8FDp9kB3zMMwpBz+/eiSDjkzViZBu6ns7AMlNcI/0QDnQXX3K8V6m9KJ07A7O
	HjiRtJMAamGdYdg0H4Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tH1Rn-00000000Fso-2TKZ;
	Fri, 29 Nov 2024 13:54:15 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tH1Rl-00000000Frf-2Yvm
	for linux-phy@lists.infradead.org;
	Fri, 29 Nov 2024 13:54:14 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-5cfcd99846fso2124682a12.1
        for <linux-phy@lists.infradead.org>; Fri, 29 Nov 2024 05:54:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732888451; x=1733493251; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jzfj59habuKMWPss+IaBeegA7WifSrplhAuuUyjLmTI=;
        b=CsaupzDyjic5cn34Xq34zVbd2ZWABKWs/3NjQ/qzAq442eWmoGGfEWsSHu4V+u0Pk7
         xjM/enIPs1wwrrFNu/draLM0tVRJ8n6MaTg46kg6w2HB93P+8lt4w8u6ORThGn8w8GqG
         WJy9HlcVsztEJmbpiPmGMwHRocgmZVBwtKio4Hc66Z4GCqXYfFRq3cuX5qmqpIZMoWhx
         ShuRHIKcZ7Al8fNY9qubpMhMU35LT+IwDoaM7CG5lEbiMsDywBQ3f9+tgWKE+exCtuyj
         IRxsL26VKC39+aU021LTWyu/2tNzfGDI1HR11K2hNYX4e2hCOF+pDqnG25CFHzLYEpn8
         XO1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732888451; x=1733493251;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jzfj59habuKMWPss+IaBeegA7WifSrplhAuuUyjLmTI=;
        b=TvElGkdQ0PWbY8Kn8t/Y5rmXKMszk4hsREcRcxvRm7VqAp0sAt79MPH9C4ESSJ2VRS
         ci26wwXpeX+PdM90GpIKITaRp6nZyrGwD2u2ZqZ3uEVC1pgkBF+Xg2fChcXhXGnfLGt2
         OzEXDBH51/ew47/uru8tC6SNtpxO1gXXl2Za9LLr1UcvCCXJt88nHwHt7erVdnb7SZJl
         FLi7YSq4gJ3zHtsA0Obc5sC2LjeJ/UV/b9q2uEJezRT7O0+BryaG66cmxPkfqP6wweF0
         GxPmo9cN6dAv0FR84kgZpGygBf8bmJ7xIuK9zoS3ldCjUH1jzSfzYPXrWds7z+XTQ/DT
         5aFw==
X-Forwarded-Encrypted: i=1; AJvYcCWZ8MKGyJR/+cWB0Zx9fD2UVewtzZBr93k56GF1q2FX0w2WnNaB6AP60WBCwi0qPWxWgQr0Yfx40J8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxl4Uel7L30sPTURhr7icZnXkMcxSMkC73wPwHFfimHRf3RWwnj
	F7AOilj4qKxAT/j39/IRt1MOsd2N2ahVnWNhOA5nYjRknjMPYDzf9Mkc4jVIVVd8UQk7RSK15GV
	nDrQxAF84dUOvMOitDpP0HEZkGPhn+1/XPT6l/w==
X-Gm-Gg: ASbGnctTgDTshQtgxQyl1KuETAuOwG+uiYRcitE+KnoYXllJVRm0a5mHw8FEWU7gety
	GGAHIHUGzHEoZDYzvPkD9ACGdatoZEVA=
X-Google-Smtp-Source: AGHT+IGaA6t4/2a/mNA1h9b1zR06PmCO6tMyJ5TuOWa0jZCc/O10Qzu+rMnQb6Tj6pv0TWbP4VGQEBjG3I0WDrceI+I=
X-Received: by 2002:aa7:d68d:0:b0:5d0:8676:3ed9 with SMTP id
 4fb4d7f45d1cf-5d08676410cmr7819763a12.8.1732888451493; Fri, 29 Nov 2024
 05:54:11 -0800 (PST)
MIME-Version: 1.0
References: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
 <20241129-add-displayport-support-for-qcs615-platform-v1-4-09a4338d93ef@quicinc.com>
In-Reply-To: <20241129-add-displayport-support-for-qcs615-platform-v1-4-09a4338d93ef@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 29 Nov 2024 15:54:04 +0200
Message-ID: <CAA8EJpqDJm6xh2oCkED4FF+1j8qt=u7B=7XADtR9JOkZZxsDkg@mail.gmail.com>
Subject: Re: [PATCH 4/8] drm/msm/dp: Add DisplayPort support for QCS615
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
X-CRM114-CacheID: sfid-20241129_055413_655774_87247087 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
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
> The Qualcomm QCS615 platform comes with a DisplayPort controller use the
> same base offset as sc7180. add support for this in DP driver.
>
> Signed-off-by: Xiangxu Yin <quic_xiangxuy@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_display.c | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
