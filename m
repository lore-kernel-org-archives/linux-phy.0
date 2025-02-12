Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59F54C02198
	for <linux-phy@archiver.kernel.org>; Wed, 12 Feb 2025 10:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o3RFdjyrJt5+M6RpYCP9NnsuXGt3tmQiSgHyNLa1GpY=; b=3emjJyp1AwJeW6
	Z+lkMFDgzEJ7DwapK4JVEJtZ+ZNTioJOAVm+kYAvnRPNEgEg/DVRz5gcCLayn8lZIkxAEEen77B1e
	Oa0h6mKZZOGS8xmRKdxVNGTUXvUJ7BqUCy0ciyvJdF25jz4yH0161OSIrE7dLwsUeDwFiLQK9Hl45
	/0LaQSlcILX4KZ4KoQO0nKB/JTv3fV9cOd8a6kRHyrYb0jkrx47dXTtVGmMz0WRuMHYTrFoQvj56m
	oYB0hRJeweN39L0h//66w9HCycjHi7W+u4EZLzab/z5vsQw//Wq1cbJsfiPRFEANzr1FEdR/IAQc2
	bO4VyWnSul03MaDUFCbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ti9x0-00000006yki-2pjE;
	Wed, 12 Feb 2025 10:26:38 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ti9cy-00000006vJg-25ct
	for linux-phy@lists.infradead.org;
	Wed, 12 Feb 2025 10:05:59 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-54505c79649so3588001e87.3
        for <linux-phy@lists.infradead.org>; Wed, 12 Feb 2025 02:05:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739354754; x=1739959554; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rVn+uPBQWQ6NpvoZYnq/I1sJTX4u55kbRPPlDvjT25g=;
        b=tF+9ZN1cNskua4/a4Z5nxtHCRZ74yOrCNhLDc2ZoF+syarvinDomVfYoKNgEL3zaJY
         sfdTcHFWMAINYQdtvRXbG/CTMtP8v8NnaY6WcnB6Cp7sJMmHK9W6lBTWe6Ue6dd1Ur+q
         KhPghg0bLHHjeRFdi15JkgzGV0WSU3Tfbe5BvsBm706bSjuT4Y/06vkXbJKJraq54xeB
         H1IJx0uBPSq/tLjmj3LRTQH8M/qXwHJ7gczzbPpWdYrfi7M2f0rirQDkzE5yTUhyZpq0
         TxabK07dUFYnSdh2sJAdwEwJGrfaAjSe6VBY8g6pdPQcAi1yVkd7j5ZlWpZx+t3xzqFb
         9acw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739354754; x=1739959554;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rVn+uPBQWQ6NpvoZYnq/I1sJTX4u55kbRPPlDvjT25g=;
        b=FC8zXQbjR/Fq1/RkVkJkn9FPSaut2XFkyv9iFg8dqGTDaXn35scBaFNbi7IUjVH19o
         Ibjt+968KcFfbBe/gI8q53A7Q4UKYxQwYgHlN0VZyA2kjjBCu3dPvz37BkaalaQ+VJea
         OXAEc8/Dfu36sNlwx72n1BzeFx/1dPSxqFfC7u5blr90v61sxwTfAtOEd2G1thpBoYt8
         WHXvAtTDraidqOPFvFj1Ys97ZqzEajMqCAXXaWARh3Iy2Rqi3w1n7BkLaYZ4QbRAX+GN
         HNgsVl21ZCnOKZ3uJVHSHWG1HP4bGP9xrdLVCZwZsCng7tLyKKHo3JxURepyUC1iA/15
         wPRQ==
X-Forwarded-Encrypted: i=1; AJvYcCUWW4CmUjHzvC5Ogyh8G9NBJTIrU+5kB/CSCtIXtH62UyocWY6A6IIVhbruGLsToGbUnotZ9Qs0k3k=@lists.infradead.org
X-Gm-Message-State: AOJu0YxRYmBsO2tTkfb8FXoOLJ4XUeyRb6YRpeJBZZWTFO4+GY3SoQBq
	iwn6TqjpLO0HvIn50Lhj4yWdaTHMx2m1HlZIH0xSkvXEK8dlSgqN0cs900h+j9o=
X-Gm-Gg: ASbGncurticsLBwd4ytvbi3n05kr1QxE8TQZv1x9X17V2+tpsJCOwLOT0Ksk2+Ahrng
	kn4DAZ/tB2KPdpjwJa+d5+BUpxLFgGu35BMXNydzli+Fe2Odv0MZ9WiPbcbCySXIpHazWXMC8dY
	faaOMB7SFJwh7ZFY0iuy8usTIFwga081tyMAEJHeO1XwodH7jkqS1waNwRzfBN6dSMl4z+fEXdu
	BUvHK+cFfkSTSh4Y5r0bTTjuL0nCtepajDQxJMWEpAXun3JzD72/ZuRUlyh4/+Him+VzarRHbRf
	KzmFx5JQFmDSat6bcc5w8XP+ApzSsrzFsNnusZWAzcokLFG3zRSQnNfifA4DjagyKDWifks=
X-Google-Smtp-Source: AGHT+IFcCCjr2F4j57iyCku2KMNTSNmgSM7kl23BAa4v+symeaOyRKmfomba9eHHUlGd0C+dHbaR+A==
X-Received: by 2002:a05:6512:3c9c:b0:545:bda:f0d with SMTP id 2adb3069b0e04-5451815a1ccmr746030e87.37.1739354754502;
        Wed, 12 Feb 2025 02:05:54 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54410555a3csm1825349e87.78.2025.02.12.02.05.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 02:05:53 -0800 (PST)
Date: Wed, 12 Feb 2025 12:05:50 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Yongxing Mou <quic_yongmou@quicinc.com>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 3/4] dt-bindings: display/msm: Document MDSS on QCS8300
Message-ID: <emfd4gqstixawba64mywtsitbek5srrekoute3hjudi6xhfjhl@7ndrv3ua7uei>
References: <20250120-mdssdt_qcs8300-v4-0-1687e7842125@quicinc.com>
 <20250120-mdssdt_qcs8300-v4-3-1687e7842125@quicinc.com>
 <e620e80d-afeb-4ce1-9798-2f5cdd92b3b1@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e620e80d-afeb-4ce1-9798-2f5cdd92b3b1@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_020556_539582_9129D776 
X-CRM114-Status: GOOD (  13.02  )
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

On Wed, Feb 12, 2025 at 09:38:07AM +0100, Krzysztof Kozlowski wrote:
> On 20/01/2025 04:49, Yongxing Mou wrote:
> > Document the MDSS hardware found on the Qualcomm QCS8300 platform.
> > QCS8300 use the same DPU hardware version as SA8775P, so we reuse it's
> > driver. But QCS8300 only have one DP controller, and offset is same with
> > sm8650, so dp controller reuse the sm8650's driver.
> > 
> > Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> > ---
> >  .../bindings/display/msm/qcom,qcs8300-mdss.yaml    | 244 +++++++++++++++++++++
> >  1 file changed, 244 insertions(+)
> 
> Also wrong compatibles used.

Which compatibles are wrong here?

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
