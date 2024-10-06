Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DE0ECFB440
	for <linux-phy@archiver.kernel.org>; Sun,  6 Oct 2024 19:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RspZV3dBOpyBX9aiLRqfcVH3+nRpBnApX3+KJ2bwlbo=; b=EfW7tq92Oi3Oq+
	RC/pCRqrxQVwwf6YVp2fpoF8+bpKuSUavPxOTtMA2MwXJTTQZTH5UGvDjELhv1nhOQoNjfFzkKL9v
	h0OSk6bgZszz5A9N38ogBAcQJflEivMJk7NlYNZu0N0SZJufFtHUPHMd4Fz4s+Hmmnz311VldriM6
	VMwRzY/QD0AGPjf9/knRctKLl+7YTtj3C0+hEJNMIJvRocvmjWBhMkErSH1NdJMZrq1caPK0zfxgh
	1+MHaOftgcn92KEhXrPND0lrpbP7u2oOCfb2cBwDmHQKmqpnCsktK4jNYRY3NXZ8WJ3n50LIcr+0o
	en03LBEaauKekQX7F4eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxXIH-00000000XFM-181o;
	Sun, 06 Oct 2024 19:51:53 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxXIE-00000000XDw-3K5C
	for linux-phy@lists.infradead.org;
	Sun, 06 Oct 2024 19:51:52 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2fac275471dso36975181fa.0
        for <linux-phy@lists.infradead.org>; Sun, 06 Oct 2024 12:51:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728244309; x=1728849109; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HLQ0qGbobuBRSeV4tlw8iWIHrFfzRjusLkYkkaznzmM=;
        b=GwIpeDGJ6z+Emq45wmQ1wEyXYdRuhm4kjGdaI+W+tGMjeA1XgvpKJUG/hh3VeVsfkt
         bia5tAsyjCYNFHiU6YMSKZ1pZ/bMzb9UM4WaMZO+hmilSSh1/sUnKb1XgNYYdl4YPId3
         JHc1nb64mNDS0K65qbhr45cVm5SKUyhUhPVlnO5Q7Xf+IUOse/C7FVswkxzW4UqD/Akp
         eJwsTxhu8eR88gZtaNvOaENepopxGJMt2jglRYTSY+E3RrOrBmSJk7RgHkFVGaFcxMNt
         ohQZ76KLLrx3a7bZ0vM3gSGAG5D1R1YZJ5ihQY5zfHGZ9pgbxAa1GA1ZiRt5CfqJ7v2g
         vTyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728244309; x=1728849109;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HLQ0qGbobuBRSeV4tlw8iWIHrFfzRjusLkYkkaznzmM=;
        b=R2DYQjQ8K3u5g5S9aCsHvT8nYd7x0LQsVGi6kem65lSxiyEyDl+Z8B3Z3TkLvB8ZeB
         Vq6FLu4pADK8Qseg0Z0ledC4fwUQZs+w3A0KGJPErxvmb9RAcdI2mmtWb1peSd1Xgxb+
         r1y9L0if/4RshC5SFIhQ5oWe90kfNn1cTMJj4UqjfVViR/xw1cyoXtzvxpm5PvTGKKzu
         8PSDRpZ8a0btyFFbBjEXofuKOLiPVgZ4eYKg1pEVWX7AI2xcknsC0/GGHul7MKOqvbA0
         jFSc3UPJHwnTWBE3as/MwRo5k9Fr6SB4gf7hqivc482wC1ghWEC41p2p59uwX06bvz8G
         hESg==
X-Forwarded-Encrypted: i=1; AJvYcCXhKlZ+e7HZOmvLSrAAHc5ELS2gDTq/lWaonl/UVStXrzM80I3thKPoRzSsYZXNn1ulcQqu0qGz4DE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyf6JaWj32DUcjbahGgvQeeLkEFRyP3l3FFXp/RhNLg7BMvixH6
	CHhq4OeluoDFw/Y2f8Yfks4oYoswovSvixvNZbkSOZGlEMXjyEf8JPsjM6TDHwM=
X-Google-Smtp-Source: AGHT+IGRatu8NXdtFSTYD4sGTrAK8KQ3y0hxb5hgGzJcApZ29zymfe86p3XYxT0wL94dtWg73UlkWQ==
X-Received: by 2002:a05:651c:b2c:b0:2ef:2c40:dd67 with SMTP id 38308e7fff4ca-2faf3914675mr32011581fa.3.1728244308751;
        Sun, 06 Oct 2024 12:51:48 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00-89ea-67f6-92cd-b49.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:89ea:67f6:92cd:b49])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2faf9b329dbsm5920091fa.105.2024.10.06.12.51.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2024 12:51:47 -0700 (PDT)
Date: Sun, 6 Oct 2024 22:51:44 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, konradybcio@kernel.org, 
	andersson@kernel.org, simona@ffwll.ch, abel.vesa@linaro.org, robdclark@gmail.com, 
	quic_abhinavk@quicinc.com, sean@poorly.run, marijn.suijten@somainline.org, 
	airlied@gmail.com, daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, quic_khsieh@quicinc.com, konrad.dybcio@linaro.org, 
	quic_parellan@quicinc.com, quic_bjorande@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, quic_riteshk@quicinc.com, 
	quic_vproddut@quicinc.com
Subject: Re: [PATCH v4 5/5] drm/msm/dp: Add DisplayPort controller for SA8775P
Message-ID: <wdslr77zwyyyesf47qmem3wmextrjfh5do4ckrk6vvzeqwi5gu@x3sxgiusspqp>
References: <20241004103046.22209-1-quic_mukhopad@quicinc.com>
 <20241004103046.22209-6-quic_mukhopad@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241004103046.22209-6-quic_mukhopad@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_125150_864445_4EF482AA 
X-CRM114-Status: GOOD (  18.65  )
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

On Fri, Oct 04, 2024 at 04:00:46PM GMT, Soutrik Mukhopadhyay wrote:
> The Qualcomm SA8775P platform comes with 2 DisplayPort controllers
> for each mdss, having different base offsets than the previous
> SoCs. The support for all 4 DPTX have been added here, and
> validation of only MDSS0 DPTX0 and DPTX1 have been conducted.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
> ---
> v2: No change
> 
> v3: Fixed review comments from Konrad and Bjorn
> 	-Added all the necessary DPTX controllers for this platform.
> 
> v4: Updated commit message
> 
> ---
>  drivers/gpu/drm/msm/dp/dp_display.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
> index e1228fb093ee..2195779584dc 100644
> --- a/drivers/gpu/drm/msm/dp/dp_display.c
> +++ b/drivers/gpu/drm/msm/dp/dp_display.c
> @@ -118,6 +118,14 @@ struct msm_dp_desc {
>  	bool wide_bus_supported;
>  };
>  
> +static const struct msm_dp_desc sa8775p_dp_descs[] = {
> +	{ .io_start = 0xaf54000, .id = MSM_DP_CONTROLLER_0, .wide_bus_supported = true },
> +	{ .io_start = 0xaf5c000, .id = MSM_DP_CONTROLLER_1, .wide_bus_supported = true },
> +	{ .io_start = 0x22154000, .id = MSM_DP_CONTROLLER_2, .wide_bus_supported = true },
> +	{ .io_start = 0x2215c000, .id = MSM_DP_CONTROLLER_3, .wide_bus_supported = true },

Please take a look at other device descriptions in the file, note the
difference and fix your DP description accordingly.

> +	{}
> +};
> +
>  static const struct msm_dp_desc sc7180_dp_descs[] = {
>  	{ .io_start = 0x0ae90000, .id = MSM_DP_CONTROLLER_0, .wide_bus_supported = true },
>  	{}
> @@ -162,6 +170,7 @@ static const struct msm_dp_desc x1e80100_dp_descs[] = {
>  };
>  
>  static const struct of_device_id dp_dt_match[] = {
> +	{ .compatible = "qcom,sa8775p-dp", .data = &sa8775p_dp_descs },
>  	{ .compatible = "qcom,sc7180-dp", .data = &sc7180_dp_descs },
>  	{ .compatible = "qcom,sc7280-dp", .data = &sc7280_dp_descs },
>  	{ .compatible = "qcom,sc7280-edp", .data = &sc7280_dp_descs },
> -- 
> 2.17.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
