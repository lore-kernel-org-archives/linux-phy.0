Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15753D6ACD6
	for <linux-phy@archiver.kernel.org>; Wed, 27 Nov 2024 13:52:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jsmT4InVlMWK64w79dTB0hX8XsalsIKWV8dVOxerImo=; b=W51+KvS7Msf3OM
	LtWlhlZEZj76e7GEHlEi1gCxUBi87DJMbhssgzK13QPI7K242qI4E0VFVj8JafqztUGeUMQ6abVhs
	3WDAJxprGDxFKpzBpQ5ei2LvX7woaTksLj1Xk3SJ5NNYFNAEIX6xarkLEaC9pmb6cP8dyNTYqB2Sn
	f5m9ZSkItJtXeUyY30dtoW/O3gHCvcdoOG/1jPQhIRgZmxK8DOZGiIZCUHGIKUwqLRoUWmAul1Sqn
	TtrLFPirAcRVQ+CcHFAeN/pRoCqUQsVXyD8FbIWd6G5rpg/9NrOHefP9oyadfMqI15UkUDkszOlND
	k+0cAnWv+wLhIKjTl10Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGITJ-0000000DJ8N-0elu;
	Wed, 27 Nov 2024 13:52:49 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGIK8-0000000DHRI-3Y3O
	for linux-phy@lists.infradead.org;
	Wed, 27 Nov 2024 13:43:21 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-53de880c77eso2674201e87.1
        for <linux-phy@lists.infradead.org>; Wed, 27 Nov 2024 05:43:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732714999; x=1733319799; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LIXGs4fTwSxjqXemGFw9+p2YdwTHf2NnHZwaHRGF6Nc=;
        b=eVM4Tf4tAzlw/0p5/ex+qukY5EQUyU97+TcNHwJrVKsCONf9N1eTSwBrdlJHRJwWKf
         n/QniXoAIV9KhR8SUSobjxGCNBAan0FLXJoTpiOKh9LkOLTqLA9DF6cPc6L+uZlzJRP6
         XNyV+NIejD8dnVk5GXux50qlZc3Xd6UDM8bKQ3JRrMYuUy/WLthJGtgW6h9zDn8ObYom
         0V/NoTasSjZxTSRhdXav3IZFWTKlM1hizwTe9cpR2ZpHbr0DyUp6h7oOZ6AwGRgVqZ0x
         BN6/L6sFg0uZH/lg4Tc5EjHM3FjdrLPHYj1Q3rBeshVGoZxdpNj+aFwaUc/Wycz3rfKk
         2YWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732714999; x=1733319799;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LIXGs4fTwSxjqXemGFw9+p2YdwTHf2NnHZwaHRGF6Nc=;
        b=KfmulI/3fOqd6V+EOxbkC2m4NclsCdtorhaPu8fMwYWCi26+wD/CMYggqVe7/fzWno
         omQXZlNZES0jsV1yPX3keootRy+eRXrYovP8e+ieWAM03LWL2T8dBLaOWgflASEfukSg
         Gz69SLYJcV2dSD2z2cffsffzPNRFhTozltMMERCFvCI6GSn1HbO+3edrz63hBgU9xFbw
         VXQONEEY/gCYpaThTIvBaD7102UFHd5njTttUO4+kXl2KRaOjP/O6NW2HNPJBvoUOvlf
         v9Qgfr1bJWiA67x9HTPwR545v7bvJhWkPmsmEf+I4xB7ibC2+pnK2VDfa86eukT/cUzF
         pXyw==
X-Forwarded-Encrypted: i=1; AJvYcCVvcOOgXCTrnUpiCvpugC+lkNB2KFT1GLqBWAaNlYllhLIIll0TNj5OI/FopdrCLXiSM1AZG9DCmOM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxYq5RnjTOG+gbv/N+jNNMmZ9InxT1DS6qZEwllbO0ckZxptwqU
	rS8ntnO2QhWnlQudp4TNnhOiaIno0rQjgKdNSVnZBcuLw4EcHcRGKx3fxNkQLng=
X-Gm-Gg: ASbGncuTbIKIs7We4X7zjmO72VbGAF7PbhBHehfhFOW6xaX16pP8P0BNT4IA6uQvGTb
	WfgAkBPIJD8ebsCLjRnlmX2yvdJR2qWB/2E0xYJDidJUNszz3jzg7ceRx0VEYvQI0icAW6xTQ/o
	0LkAv+1p+1Imp+cdEJakB9iYZd88iHpHjzy7u/ae0T1SlijDS+MkRuOydOpnPh4pEQ/CVuyATk3
	VpH4WDNF4QEH34FkJzOT5A/tkpxNE+jtxAb8HyH4zZTSFIMLlpRzKbTIsnB4df7qtFTta6UO8Oi
	cmcDoyJtsgGGZGWPKIb2G7foyAr+dA==
X-Google-Smtp-Source: AGHT+IHl4xTqfFayy6N/PMSQFKk1zMBlFF166s3qCjZQxpVTE21zLDuT/xgWMcxx1dKM+yaLNkjIHg==
X-Received: by 2002:a05:6512:313a:b0:53d:f177:51d0 with SMTP id 2adb3069b0e04-53df177526amr1071412e87.9.1732714998834;
        Wed, 27 Nov 2024 05:43:18 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53ddbfc2b7dsm1721318e87.129.2024.11.27.05.43.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 05:43:18 -0800 (PST)
Date: Wed, 27 Nov 2024 15:43:16 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Yongxing Mou <quic_yongmou@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, Ritesh Kumar <quic_riteshk@quicinc.com>
Subject: Re: [PATCH 4/4] drm/msm/dp: Add DisplayPort controller for QCS8300
Message-ID: <2ld2iwmvhz6myn6ume3lspi63wjefa3hpctoj2rdreaqhwdxmx@seic3sq2yo4h>
References: <20241127-qcs8300_dp-v1-0-0d30065c8c58@quicinc.com>
 <20241127-qcs8300_dp-v1-4-0d30065c8c58@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241127-qcs8300_dp-v1-4-0d30065c8c58@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241127_054320_881563_07EE0B34 
X-CRM114-Status: GOOD (  17.54  )
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

On Wed, Nov 27, 2024 at 04:15:51PM +0800, Yongxing Mou wrote:
> The Qualcomm QCS8300 platform comes with a DisplayPort controller
> with same base offset with SA8775P, add support for this in the
> DisplayPort driver.

Can we reuse SA8775P config then? And SA8775p compatible as a fallback,
not requiring any driver modifications.

> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_display.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
> index aba925aab7ad7c6652e81004043864c1cb3ac370..f870faa89f26a8cb5bd7f4caf11f42e919c9efac 100644
> --- a/drivers/gpu/drm/msm/dp/dp_display.c
> +++ b/drivers/gpu/drm/msm/dp/dp_display.c
> @@ -118,6 +118,11 @@ struct msm_dp_desc {
>  	bool wide_bus_supported;
>  };
>  
> +static const struct msm_dp_desc msm_dp_desc_qcs8300[] = {
> +	{ .io_start = 0x0af54000, .id = MSM_DP_CONTROLLER_0, .wide_bus_supported = true },
> +	{}
> +};
> +
>  static const struct msm_dp_desc msm_dp_desc_sa8775p[] = {
>  	{ .io_start = 0x0af54000, .id = MSM_DP_CONTROLLER_0, .wide_bus_supported = true },
>  	{ .io_start = 0x0af5c000, .id = MSM_DP_CONTROLLER_1, .wide_bus_supported = true },
> @@ -170,6 +175,7 @@ static const struct msm_dp_desc msm_dp_desc_x1e80100[] = {
>  };
>  
>  static const struct of_device_id msm_dp_dt_match[] = {
> +	{ .compatible = "qcom,qcs8300-dp", .data = &msm_dp_desc_qcs8300 },
>  	{ .compatible = "qcom,sa8775p-dp", .data = &msm_dp_desc_sa8775p },
>  	{ .compatible = "qcom,sc7180-dp", .data = &msm_dp_desc_sc7180 },
>  	{ .compatible = "qcom,sc7280-dp", .data = &msm_dp_desc_sc7280 },
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
