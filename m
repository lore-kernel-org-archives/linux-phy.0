Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 006C8D2FFE6
	for <linux-phy@archiver.kernel.org>; Fri, 18 Oct 2024 10:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8btqRgTZejkmSQHSxlpMiGHR8THNqsGK6voOtY/R22k=; b=VXm4GwKfQ+yO7X
	DB6gJOpqugUVaKPHBT8aV4u0S9cyR00ivWxsqpfLuHGvaouJd1gMe1fsPAPll74Rv/h13lswGcImr
	B9uXGw6VAURahsCvOQdtARZi1Yv0s8ehrKPnhjqoTA1sEk5+iHRxV6hgLVNANWeAoVISkP8enC6Zm
	SBFpNZFH/AzUzOyrguCFrqZaMQFXXrmBl6A5OBA+WZIvBqN8F5khxnz8PitHZ3TkXci9KrcrjzK8k
	7UOfOjRsAViMG8OL+FsDf8F6p7POSEbtLnpUKlAQygZm44epj3gMDpVSpWL6GxQeekQg06378gPxt
	k1RoKwxQfsEvwygFT/hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1k4P-00000000Kzf-2nVb;
	Fri, 18 Oct 2024 10:18:57 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1ju1-00000000IrN-2CEs
	for linux-phy@lists.infradead.org;
	Fri, 18 Oct 2024 10:08:14 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2fb470a8b27so26383881fa.1
        for <linux-phy@lists.infradead.org>; Fri, 18 Oct 2024 03:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729246091; x=1729850891; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EWO5SIPIA+/rWAYr4Euwe43sU4NAtmP9U+0QgyOHFx8=;
        b=x7uW8ePUQRBWiFU7A29/L/hLZo/B8H6qeGwwx9epqBaJjr6suFuogesK/voK/joAQq
         /Ql+2AJeGidt1LUT3Qj2Bm3HY/Q8HRMr0o8qcRFcSWl513WSuPYbhAi0/kmcKHP/61iU
         f1Z5FCMIFg+O0WfS6I49ft+yU3k/5rJSmP/PpsjtaviMbxT4ZEO4MyPe1z++u9C78b/h
         nJxQdJGyab1MiYPK2VY7BDIj7y/MKB6rceu2HdXP1EQJD98qRLQLWcpp6qZYIYP1SI/K
         ngvx0v5SuoDGNZ95tOiLU4zkPS28ZrJIBIzvNUeZcV1Lv+6cEoeZ5XPN3oY8FgDkZmMX
         ACZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729246091; x=1729850891;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EWO5SIPIA+/rWAYr4Euwe43sU4NAtmP9U+0QgyOHFx8=;
        b=IbmiydEK2ULZHA4ahKaJWbrofvPY25k5DtNSrcRIbPrUSUzfNqvenzNMBsRSVOnspY
         VtF87lRRGPrLIE6bnWjU9iC1uo8OE3DwyN4iVRjDrsiUDv7IV7AfXQ4z9MMusQgIW44U
         vXzwPIzj3c+kn8H0LnJR2ov3M4UnjQCu/5nqzlVAplO77JQueO5tOd9zSH9jaItq3rrI
         vVCFpuicgBJiqpH3a4mbFTfWj+FWxAW3YLAiehvcV7GwlY2IAg8zghvLwIY+f0BMT+yU
         xDdl0t2lsfTUXzetgemEq+E5pIRoawOS2vV6qCRYotsADpAKo1acPvVh1V/jKPOkyaNt
         DnhA==
X-Forwarded-Encrypted: i=1; AJvYcCVmbF7fgedj93VxMj2VU7uk6FoEsA6FmvqhUgU44wvYxxV1AdMtz349zTeK7oApVmgj/TZIKwNLV4A=@lists.infradead.org
X-Gm-Message-State: AOJu0YwfPWw47rwCbBpCyl9eCsqUiQvzgVjNSwMkPdVtlLP8JTtmVeHv
	2FK8f1Rf/mbJjdnsqVuvFzaR9q1tGbKTWt8k1YtJkApcHUzEERdeWVuvfVTBnP4=
X-Google-Smtp-Source: AGHT+IG2fzF1NEqkVxyx3ltslEHQ5ZS8VwVmoBLD0KSZElJbLsKJHZFOX9qwuUQyNzdp9PiQBHBbNw==
X-Received: by 2002:a05:6512:e9b:b0:539:ebc7:97a2 with SMTP id 2adb3069b0e04-53a0c73434dmr2093811e87.19.1729246091341;
        Fri, 18 Oct 2024 03:08:11 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a151f0db9sm175433e87.151.2024.10.18.03.08.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 03:08:10 -0700 (PDT)
Date: Fri, 18 Oct 2024 13:08:08 +0300
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
Subject: Re: [PATCH v5 0/5] Add support for DisplayPort on SA8775P platform
Message-ID: <vtfz5vteaedwrqw5cpggmd3esi2rky3f2axubxukh74wdux4uy@zdac7miws5lu>
References: <20241018070706.28980-1-quic_mukhopad@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241018070706.28980-1-quic_mukhopad@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_030813_596091_DFFAE1F2 
X-CRM114-Status: GOOD (  19.36  )
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

On Fri, Oct 18, 2024 at 12:37:01PM +0530, Soutrik Mukhopadhyay wrote:
> This series adds support for the DisplayPort controller
> and eDP PHY v5 found on the Qualcomm SA8775P platform.
> 
> ---
> v2: Fixed review comments from Dmitry and Bjorn
> 	- Made aux_cfg array as const.
> 	- Reused edp_swing_hbr_rbr and edp_swing_hbr2_hbr3 for v5.
> 
> v3: Fixed review comments from Dmitry, Konrad and Bjorn
> 	- Used a for loop to write the dp_phy_aux_cfg registers.
> 	- Pre-defined the aux_cfg size to prevent any magic numbers.
> 	- Added all the necessary DPTX controllers for this platform.
> 
> v4: Fixed review comments from Dmitry and Krzysztof
> 	- Removed the "reviewed by" and kept only the "acked by" for 
> 	  patch 1.
> 	- Updated the commit message of patch 5 to mention specifically
> 	  about the validation of "only" MDSS0 DPTX0 and DPTX1.
> 
> v5: Fixed review comment from Dmitry in patch 5
> 	- Aligned the register starting address for display port as part 
> 	  of device description with respect to other targets.
> 
> Below patches are applied:
> 
> [1/5] dt-bindings: phy: Add eDP PHY compatible for sa8775p
>       commit: 7adb3d221a4d6a4f5e0793c3bd35f1168934035c
> [2/5] phy: qcom: edp: Introduce aux_cfg array for version specific aux settings
>       commit: 913463587d528d766a8e12c7790995e273ec84fb
> [3/5] phy: qcom: edp: Add support for eDP PHY on SA8775P
>       commit: 3f12bf16213c30d8e645027efd94a19c13ee0253

Please in future skip applied patches instead of including them into the
series.  No need to resend the series just for this issue though.

> 
> ---
> 
> Soutrik Mukhopadhyay (5):
>   dt-bindings: phy: Add eDP PHY compatible for sa8775p
>   phy: qcom: edp: Introduce aux_cfg array for version specific aux
>     settings
>   phy: qcom: edp: Add support for eDP PHY on SA8775P
>   dt-bindings: display: msm: dp-controller: document SA8775P compatible
>   drm/msm/dp: Add DisplayPort controller for SA8775P
> 
>  .../bindings/display/msm/dp-controller.yaml   |  1 +
>  .../devicetree/bindings/phy/qcom,edp-phy.yaml |  1 +
>  drivers/gpu/drm/msm/dp/dp_display.c           |  9 +++
>  drivers/phy/qualcomm/phy-qcom-edp.c           | 74 +++++++++++++------
>  4 files changed, 61 insertions(+), 24 deletions(-)
> 
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
