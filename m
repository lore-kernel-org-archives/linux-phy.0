Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A3A6CD3427
	for <linux-phy@archiver.kernel.org>; Sun, 10 May 2026 11:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eW8cypp4bwwz5iDLoqBd/Iano67jxFYgR/CS9de06Z8=; b=fxrUdTs9ZySex9
	Bds22NRc8d+noiwrUC0soEtv/2kYosfLfq4PwWFNU0oHfCIBJmYv7KAgmVu67OL2DQN0+bXs9orfM
	nXnyKqVytfEafNKy+ciuRPBEyncWRB14UIlvHXPYpp5bmXf5782/1qDcwRNn8EHsewjwT7li7hUNk
	wGQQxJ4zRlqGAHxlnJJTNrAIzh0IYSmk5q+Bg6zTUtzI/cFm2QSf29O2PmUqEpyvTmZYcOV79SLDO
	yuur8ZqcujMeDqY8EMLGZqhRtPTKT2MU8TnNi8FtunvTMJIuKoUtZ7mdzOipymQ6zyGpqlkWMnij+
	q3opJisePYIA0Q1b2M8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM2Ff-0000000AdTi-2R8p;
	Sun, 10 May 2026 11:23:15 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM2Fc-0000000AdT6-3upR
	for linux-phy@lists.infradead.org;
	Sun, 10 May 2026 11:23:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 98CAB4088A;
	Sun, 10 May 2026 11:23:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7AA1C2BCB8;
	Sun, 10 May 2026 11:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778412191;
	bh=4wlrsL+5QzVoGJrBs2lTX9zEhWG1wgLayEtMSvZTTXs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oSgOl3ryp0QJRhD68K/YMuHTfuCRfGfYPPiJMVKWkSkJeRKPD3YBD8zF1SU945omz
	 ezna2/AhjraczadHYOWyXxXcdaUUyPK7mQq8pID0+NnwT0opPGxF6Vne1iqfbIcXUH
	 z3/Jna2Bkymp0ixN00FndgYKuoWSiGcmhik43k5KYDfSyP8mqL8vBgthRYQALDSMjp
	 xoK74ENcxLRqfIhs7S+LqQ8mEriVR/EGU1ZoeOhtQ/fIXSuNzoBGjjeqx1UCpcpRKK
	 qmp3wFds6wd1Nj11pAnkD+zkRXlIdAl3UB5PQfPWhluQyM44IkDYys2Gw0xfTKZuLn
	 qcOUiWoZo7rwQ==
Date: Sun, 10 May 2026 16:53:07 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Abhinav Kumar <abhinav.kumar@linux.dev>,
	Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
	linux-phy@lists.infradead.org,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v8 0/4] drm/msm/hdmi & phy: use generic PHY framework
Message-ID: <agBqm1Aede3HX0yv@vaman>
References: <20260401-fd-hdmi-phy-v8-0-51b0e98edf6c@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260401-fd-hdmi-phy-v8-0-51b0e98edf6c@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260510_042313_051476_D024E95D 
X-CRM114-Status: GOOD (  25.83  )
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

On 01-04-26, 06:38, Dmitry Baryshkov wrote:
> The MSM HDMI PHYs have been using the ad-hoc approach / API instead of
> using the generic API framework. Move MSM HDMI PHY drivers to
> drivers/phy/qualcomm and rework them to use generic PHY framework. This
> way all the QMP-related code is kept at the same place.
> Also MSM8974 HDMI PHY, 28nm DSI PHY and apq8964 SATA PHY now can use
> common helpers for the UNI PLL.
> 
> This also causes some design changes. Currently on MSM8996 the HDMI PLL
> implements clock's set_rate(), while other HDMI PHY drivers used the
> ad-hoc PHY API for setting the PLL rate (this includes in-tree MSM8960
> driver and posted, but not merged, MSM8974 driver). This might result in
> the PLL being set to one rate, while the rest of the PHY being tuned to
> work at another rate. Adopt the latter idea and always use
> phy_configure() to tune the PHY and set the PLL rate.

Hi Dimitry,

Can you please check

https://sashiko.dev/#/patchset/20260401-fd-hdmi-phy-v8-0-51b0e98edf6c%40oss.qualcomm.com

> 
> Merge strategy: Merge the first patch (either through drm/msm or through
> the PHY tree), merge the rest of the patches in the next cycle.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
> Changes in v8:
> - Rebased on linux-next, fixing conflicts
> - Added missing ids for APQ8084 and MSM8998 (Sashiko)
> - Switched to pm_runtime_put() (Sashiko)
> - Fixed several missed *1000 after pixclk -> tmds_char_rate conversion
>   (Sashiko)
> - Fixed several math overflows (Sashiko)
> - Link to v7: https://patch.msgid.link/20260324-fd-hdmi-phy-v7-0-b41dde8d83b8@oss.qualcomm.com
> 
> Changes in v7:
> - Fixed the build issue between msm8974 patches.
> - Dropped even more writel / readl wrappers (now from QMP PHYs)
> - Link to v6: https://lore.kernel.org/r/20260319-fd-hdmi-phy-v6-0-cefc08a55470@oss.qualcomm.com
> 
> Changes in v6:
> - Changed MSM8974 HDMI PHY driver to use FIELD_PREP / FIELD_GET (Konrad)
> - Fixed rate recalculation for MSM8974 HDMI PHY (Konrad)
> - Dropped register read/write wrappers
> - Link to v5: https://lore.kernel.org/r/20260314-fd-hdmi-phy-v5-0-58122ae96d3b@oss.qualcomm.com
> 
> Changes in v5:
> - Kept only a single place which handles extp clk (after PHY power on,
>   before PHY power off) (Neil)
> - Inlined pm_runtime calls in the HDMI TX driver, replaced
>   pm_runtime_resume_and_get() with pm_runtime_get_sync(), since
>   atomic_pre_enable() can not fail.
> - Renamed registers defines to drop the REG_ prefix.
> - Link to v4: https://lore.kernel.org/r/20250520-fd-hdmi-phy-v4-0-fcbaa652ad75@oss.qualcomm.com
> 
> Changes in v3-v4:
> - Rebased on top of linux-next, solving conflicts
> - Squashed add-and-remove patches into a single git mv patch
> - Dropped HDMI PHY header patch (merged upstream)
> 
> Changes in v2:
> - Changed msm8960 / apq8064 to calculate register data instead of using
>   fixed tables. This extends the list of supported modes.
>   (Implementation is based on mdss-hdmi-pll-28lpm.c from msm-4.14).
> 
> - Fixed the reprogramming of PLL rate on apq8064.
> 
> - Merged all non-QMP HDMI PHY drivers into a common PHY_QCOM_HDMI
>   driver (suggested by Rob Clark)
> 
> ---
> Dmitry Baryshkov (4):
>       drm/msm/hdmi: switch to generic PHY subsystem
>       phy: qcom: apq8064-sata: extract UNI PLL register defines
>       phy: qcom-uniphy: add more registers from display PHYs
>       phy: qualcomm: add MSM8974 HDMI PHY support
> 
>  drivers/gpu/drm/msm/Makefile                     |   7 -
>  drivers/gpu/drm/msm/hdmi/hdmi.c                  |  59 +-
>  drivers/gpu/drm/msm/hdmi/hdmi.h                  |  80 +--
>  drivers/gpu/drm/msm/hdmi/hdmi_bridge.c           |  80 ++-
>  drivers/gpu/drm/msm/hdmi/hdmi_phy.c              | 226 -------
>  drivers/gpu/drm/msm/hdmi/hdmi_phy_8960.c         |  51 --
>  drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c         | 761 ----------------------
>  drivers/gpu/drm/msm/hdmi/hdmi_phy_8998.c         | 765 -----------------------
>  drivers/gpu/drm/msm/hdmi/hdmi_phy_8x60.c         | 141 -----
>  drivers/gpu/drm/msm/hdmi/hdmi_phy_8x74.c         |  44 --
>  drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c         | 460 --------------
>  drivers/gpu/drm/msm/registers/display/hdmi.xml   | 537 ----------------
>  drivers/phy/qualcomm/Kconfig                     |  24 +
>  drivers/phy/qualcomm/Makefile                    |  14 +
>  drivers/phy/qualcomm/phy-qcom-apq8064-sata.c     |  23 +-
>  drivers/phy/qualcomm/phy-qcom-hdmi-28hpm.c       | 353 +++++++++++
>  drivers/phy/qualcomm/phy-qcom-hdmi-28lpm.c       | 478 ++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-hdmi-45nm.c        | 186 ++++++
>  drivers/phy/qualcomm/phy-qcom-hdmi-preqmp.c      | 213 +++++++
>  drivers/phy/qualcomm/phy-qcom-hdmi-preqmp.h      |  59 ++
>  drivers/phy/qualcomm/phy-qcom-qmp-hdmi-base.c    | 187 ++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-hdmi-msm8996.c | 440 +++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-hdmi-msm8998.c | 489 +++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-hdmi.h         |  49 ++
>  drivers/phy/qualcomm/phy-qcom-uniphy.h           |  74 +++
>  25 files changed, 2611 insertions(+), 3189 deletions(-)
> ---
> base-commit: d894dddf2a144f0e1d1cd7a8225c744dc906cdd5
> change-id: 20240109-fd-hdmi-phy-44b8319fbcc7
> 
> Best regards,
> --  
> With best wishes
> Dmitry

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
