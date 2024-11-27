Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A285AD6ACD2
	for <linux-phy@archiver.kernel.org>; Wed, 27 Nov 2024 13:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i5VIKiigJZLb1u0py8aYGLTBByDdOcGBUyD2bvpiVco=; b=FmX3m1M9kGCnq3
	d0+2oiYyBwIvSVUBkTOSCN7DJv1doN4zEFc+d7WS6Ntv7gioiD+W9YoMjI6gL/Jd6JWAPiJPjPhFC
	HRWWgCcffiNK4oXNq9wpEfHLvJPwuvD7kKkdwSrW/XEqUZTlxqLBz8+PAG8h7i1iwkyMIvKGQHP/x
	cl0wtGbTC3/iGYsH9fiffaaq3wcknLdJRoKH5Zbx5DmIe6O4j5B8frtEIrBp6CT4PdwM3Azv2QCNS
	3exsT72Hur+KUPL7rBrrQ/2XwnoKaIyN9uWxFjVs6LoPJ9PsBn8h6YVQGguvdOFiu3AQ+9EPKkj+5
	92aoOcCOXHFytzhx19Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGIIH-0000000DGmy-1dvx;
	Wed, 27 Nov 2024 13:41:25 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGIIE-0000000DGkK-2cK6
	for linux-phy@lists.infradead.org;
	Wed, 27 Nov 2024 13:41:23 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-53de6b7da14so3266591e87.0
        for <linux-phy@lists.infradead.org>; Wed, 27 Nov 2024 05:41:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732714880; x=1733319680; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+V0B8FgWwCZYmESnMjYEXbPLdTp7ON4XeU+NCnDG0sM=;
        b=nxIDX4DEkGpI5/0Oo5XBWliwlofo6I+8AGPEZV3WX9X6a0RmHINPBv9xok/YA3fmN0
         ADZZmWA5wZqehBX/BDYwoY1tNfIgIhCyk91sdr/z1sRy83z830noxfSWGoM/zkNBZPM6
         XuKE+9Udg+Nz/hLV6s7j/Xgziu5pWgajFos2vWXEltYOtZ441adNBE0xN5PAoPvyVmI4
         pRC+jYGjKo6p6s1p8yY1NsGFy1cL39mCcKZhLFs0EbjtRxIkWVYs9tTVQ+YV/FbpzvCP
         oCXiggkdhd5v+tkUbRyuXe/apGvg+T0Ir9WcQc2pvA+9eRpBftWJsdkZQPQK+W9/BabX
         N6xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732714880; x=1733319680;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+V0B8FgWwCZYmESnMjYEXbPLdTp7ON4XeU+NCnDG0sM=;
        b=wCEuzwc/t9po82Fo3zz48AhlzVN5l9z3TuI5aKyu1WiOkY8kgnnFORityCMi2tbhb0
         jrgsPe1BT0qucu+7uf7DJlrmjSzF5KByTt0XbgfnWG3h+QHRBqmzGHndxeQ/9mnWWO7b
         7Q7tHtj4DuNzjkgrn4kLmoV/OHkqdCPg5z2VI+i4VqWXQb1/cu63eR1zhbNdVHaGkGEI
         GAH1QzUDNNuP9fDgD9hqtDpdAnvDm+jNsFFOEsmATl3NLBKz02I5zjGOlYkZm10gBLit
         AnxmS8KikmM7dm0AmdrxhT74ho/Bv2GUO8F/lN3i0r5BxrWeAELYlFJS+fu89qTmf7dA
         0BMg==
X-Forwarded-Encrypted: i=1; AJvYcCUrtEeHlHZLLml4aW0pbE+apmlJYE4m0UctrarJ2rl+9uPR2LpzgFWi6lPfGS2H6QdCLVHhgIEBSwc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzf2yYKDYFFxwqTzIlsnHn3sjzs5efMmsS2OJ9BsS4k0pnC+eEK
	lTTP1wZmEI14I0XJm9ybJWc/fuuxPHtB3UBnZXlBoOut+qPLvZH8k18rWj6NN6k=
X-Gm-Gg: ASbGncsBIyRnp7iLZQGttJfWc3WlIbymar5qSBinwWek2/lpyuaawEj7NRuHVVIRiFD
	yYBZfBl4Wo+O5U+4UCooXVrZeB1S5SLdya98zSeJ6m48S+WTSID2LokM2Svl7Y/BbdtKBZ1S23n
	+bTYj/4K5+PTYdPkWWJ54w6MHrhXnD/IvWnXNRhMRt+GDH8pMUsR5k5BqdDJ/1H3llDenzSv9Rb
	nJuBKT73AlEfe9ijVdz8iz3kRufQ5+VtY8vBJX9SZY8aTyARKkRRPUhH4Y/gZq8THljPSN0RgiD
	NyecWv1WMSgo6eNy4UMpvJB8Gj0YZw==
X-Google-Smtp-Source: AGHT+IG9BNVyGMPhRMDkSB666seeuc69CW+Jv5lBWbNwNRZPtIr56nhPI2eE0zoLaGS7x7+3k7cyFg==
X-Received: by 2002:a05:6512:3a8f:b0:53d:a4f3:29ed with SMTP id 2adb3069b0e04-53df00dd707mr910972e87.27.1732714879617;
        Wed, 27 Nov 2024 05:41:19 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd336a530sm2263130e87.142.2024.11.27.05.41.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 05:41:19 -0800 (PST)
Date: Wed, 27 Nov 2024 15:41:16 +0200
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
Subject: Re: [PATCH 2/4] phy: qcom: edp: Add support for eDP PHY on QCS8300
Message-ID: <new6hjxnwyuohetdprxwee3epf23uemwft2p7faym5f5zqv3og@fksrew4blk7p>
References: <20241127-qcs8300_dp-v1-0-0d30065c8c58@quicinc.com>
 <20241127-qcs8300_dp-v1-2-0d30065c8c58@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241127-qcs8300_dp-v1-2-0d30065c8c58@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241127_054122_671865_71275761 
X-CRM114-Status: GOOD (  17.93  )
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

On Wed, Nov 27, 2024 at 04:15:49PM +0800, Yongxing Mou wrote:
> Add support for eDP PHY v5 found on the Qualcomm QCS8300 platform.
> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index f1b51018683d51df064f60440864c6031638670c..90e0a399c25299ad1b2fb5df8512ba3888661046 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> @@ -532,6 +532,13 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v4 = {
>  	.com_configure_ssc	= qcom_edp_com_configure_ssc_v4,
>  };
>  
> +static const struct qcom_edp_phy_cfg qcs8300_dp_phy_cfg = {
> +	.is_edp = false,
> +	.aux_cfg = edp_phy_aux_cfg_v5,
> +	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg_v5,
> +	.ver_ops = &qcom_edp_phy_ops_v4,
> +};
> +
>  static const struct qcom_edp_phy_cfg sa8775p_dp_phy_cfg = {
>  	.is_edp = false,
>  	.aux_cfg = edp_phy_aux_cfg_v5,
> @@ -1133,6 +1140,7 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
>  }
>  
>  static const struct of_device_id qcom_edp_phy_match_table[] = {
> +	{ .compatible = "qcom,qcs8300-edp-phy", .data = &qcs8300_dp_phy_cfg, },

If the setup is the same as SA8775p and you don't expect any
QCS8300-specific tunings, please reuse sa8775p as a fallback compat.

>  	{ .compatible = "qcom,sa8775p-edp-phy", .data = &sa8775p_dp_phy_cfg, },
>  	{ .compatible = "qcom,sc7280-edp-phy", .data = &sc7280_dp_phy_cfg, },
>  	{ .compatible = "qcom,sc8180x-edp-phy", .data = &sc7280_dp_phy_cfg, },
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
