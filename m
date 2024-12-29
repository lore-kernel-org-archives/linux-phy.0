Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A382DE7718B
	for <linux-phy@archiver.kernel.org>; Sun, 29 Dec 2024 04:44:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UT/Ona8nVzojQyDaecEoKTvmGzRrKURmc+RTWnM8yyg=; b=zs+DzhLX/f1RSQ
	csSACbgczQ1qoyyoQ/wpOH+AOdCli3kQKgUmiu8cfl1Q40dZJM+NXmOBB69Zr4Db5GDkIzAXE8SMP
	2OijkLugfiXVd6bwOdFYoGXAK5agzUGUywUe8vNty3enkNIP2+/JiRiMVZpuOCasG/3MWKoEG+71h
	0g82eH5gpREjiZKObPVwdhtpBK4SJGiju6OBfJd1Gy5CcOBFGpG/hu6PIs/okrl1E2d76XKt329UY
	eB3wittSmdWs+A3MZuX47lmzg1W6bnOzttFBd/MqgSU68rk0Px6MzhmHUAW4WWEuRw5+a6Yoix9pW
	IIzuVgaME8naaaooqIiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRlAR-00000002qAt-1LNg;
	Sun, 29 Dec 2024 04:44:43 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tRlAO-00000002qAT-2nqk
	for linux-phy@lists.infradead.org;
	Sun, 29 Dec 2024 04:44:42 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-3004028c714so94559231fa.2
        for <linux-phy@lists.infradead.org>; Sat, 28 Dec 2024 20:44:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735447479; x=1736052279; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=chdPQNE/j8Xw45cOV5VKgoIPj08nYhEDdCs+/0/t6qw=;
        b=noPYXGtcYYEeZgPkkxE+RejL4RJrQbihv2EtuLNYYGUXfE94G7R9kFThK6z/vPrYxd
         3koenX3NOJzU22iCUPPhQ2lzzV9AM9iDxk9iKnKpwnCxCystvFw36fevx3P7hmeWauGb
         S9YFwMAQZXwGTnVnketo+LFlQgRwK1oX2sAjYt9zsbggUolaVkwR5UTSCsT/wV6pHltx
         X85O1O1YDnsjX7FpVMZk+hipwGby91LfFdAcUjYR+2iCD/OLpDsEvC2PuaQyDit/eTb1
         vIOsXjac30aH2baegUeCFTRuowiq5Y6r2au4kpKYM3UxdDjIc0CPEf3+bWqeJzxnHiGJ
         a3SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735447479; x=1736052279;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=chdPQNE/j8Xw45cOV5VKgoIPj08nYhEDdCs+/0/t6qw=;
        b=LP4492v1/mp8AvDi56k7PU74gnJIQEzM35rMeDavljwVQkwdPO3COM6bNqPoQjqHOs
         6M4gBINLde1EfVd469GiDyUuq9pLLCqj6O/TtN1h4/eD/S67/wuzteunPgVbSTzjDQS/
         K4BzZ+pHKssCkX2YqZGYGdyLzDdWWCUhJDjgSw6/Lh69pPFoK0XbFpU8VS8aHfYONHr8
         0UgIn9OQTJgraIT5Y6YlxGKI0FR5o4pzUPYPaxF+JeQNFjBt3OoX69C5xnRiK2qqPNWm
         Z1EhKseNlgAQld+0FE2egGInl7Udmw2DuyB3dmPBHrsXZzfbcGCJHa2LeiDtT2sX5L8K
         Bnfw==
X-Forwarded-Encrypted: i=1; AJvYcCXQ0DFHOOb+dE0bulrUDWSiiMDWQCqB1JqGDESgk3fg3IP50Uf8SjEaFLFMi+7pT5URyM+mM3e4JOU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yytkiu3FcuC6nBcsfWad87C3qHxEON5jvW91D9bIv7Dwm8bA8Mb
	2qnjctvzclBRXhMNt8DlFoZBDPZ4RX1+3/hVahb1/d9fuN31FN2SdMvWPTnRpAE=
X-Gm-Gg: ASbGncvxQYmLqEX3HdlLS9gTSXx83NGj/tt9Jm3uGQmGaGNOhGqFW/8c1zldmkbFkq/
	Ki7Bys37O8i+eGJO8yo2G3KfnllYkieYCcMsitNgKD5LZ5RuLfiAycp0w6hoEBDKpF4+PNIai5F
	AKdE2cBH/55lUFhUBfakXzsNvNfjIaDFFLtYHeqZ2bwpawSj1KdnICeOkckjxo+OGCX+jntDthg
	MGL2xGrS6phKHRXecT3Ifydg+A6QF6furvPtoZGKfuY2kHhjpwqO5Tum0R1Qu/5j6qw1DXtlS3q
	vUxcDeVwrLc1Ly08JQsctcEdd61RdhSi5ATp
X-Google-Smtp-Source: AGHT+IEqnOJCZfEtqq/hxEXbpXGiUtUrPmZ/EuQZbNs9DkS0CE7apf881FhBeAE8931EuWeeqm9PqA==
X-Received: by 2002:a05:651c:60e:b0:300:360b:bc36 with SMTP id 38308e7fff4ca-30468579f57mr84634791fa.23.1735447478652;
        Sat, 28 Dec 2024 20:44:38 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045adad6dcsm30120291fa.60.2024.12.28.20.44.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Dec 2024 20:44:37 -0800 (PST)
Date: Sun, 29 Dec 2024 06:44:34 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Yongxing Mou <quic_yongmou@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 0/5] Display enablement changes for Qualcomm QCS8300
 platform
Message-ID: <mha5mg3yyco2dm6g4nw5xfufuhqataoyiw6arkjalsu5caswth@vblodqj3ldcp>
References: <20241226-mdssdt_qcs8300-v2-0-acba0db533ce@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241226-mdssdt_qcs8300-v2-0-acba0db533ce@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241228_204440_712164_58C60FE2 
X-CRM114-Status: GOOD (  20.67  )
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

On Thu, Dec 26, 2024 at 05:40:44PM +0800, Yongxing Mou wrote:
> This series introduces support to enable the Mobile Display Subsystem (MDSS)
> , Display Processing Unit (DPU), DisplayPort controller and eDP PHY for 
> the Qualcomm QCS8300 target. It includes the addition of the hardware catalog,
> compatible string, and their YAML bindings.
> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---
> This series depends on following series:
> https://lore.kernel.org/all/20241203-qcs8300_initial_dtsi-v4-2-d7c953484024@quicinc.com/
> https://lore.kernel.org/all/20241106-qcs8300-mm-patches-v3-0-f611a8f87f15@quicinc.com/
> https://lore.kernel.org/all/20241114-qcs8300-mm-cc-dt-patch-v1-1-7a974508c736@quicinc.com/
> https://lore.kernel.org/all/20241024-defconfig_sa8775p_clock_controllers-v2-1-a9e1cdaed785@quicinc.com/

How does it depend on all those series? Does it have any intersection
point at all? You should have decoupled all bindings from those series.
If you did, please update your cover letter. If you didn't, please do
your home work.

> ---
> Changes in v2:Fixed review comments from Krzysztof, Dmitry, Rob.
> - Decouple the devicetree changes from this series.[Dmitry][Krzysztof]
> - Drop the dpu driver changes and reuse SA8775P DPU driver.[Dmitry]
> - Fix compilation issues in MDSS bindings.[Rob][Krzysztof]
> - Correct formatting errors and remove unnecessary status in MDSS
>   bindings.[Krzysztof]
> - Add the the necessary information in MDSS changes commit msg.[Dmitry]
> - Rebase MDSS driver changes to https://lore.kernel.org/dri-devel/
>   20241127-msm-mdss-ubwc-v3-0-9782a7c2b023@linaro.org/.[Dmitry]
> - Package the DisplayPort controller and eDP PHY bindings document to
>   this patch series.
> - Collecting MDSS changes reviewd-by Dmitry.
> - Reuse the sa8775p eDP PHY as a fallback compat.[Dmitry]
> - Reuse the sm8650 DP controller as a fallback compat.[Dmitry]
> - Link to v1: https://lore.kernel.org/r/20241127-mdss_qcs8300-v1-0-29b2c3ee95b8@quicinc.com
> ~
> 
> ---
> Yongxing Mou (5):
>       dt-bindings: display/msm: Document the DPU for QCS8300
>       dt-bindings: display: msm: dp-controller: document QCS8300 compatible
>       dt-bindings: display/msm: Document MDSS on QCS8300
>       dt-bindings: phy: Add eDP PHY compatible for QCS8300
>       drm/msm: mdss: Add QCS8300 support
> 
>  .../bindings/display/msm/dp-controller.yaml        |   4 +
>  .../bindings/display/msm/qcom,qcs8300-mdss.yaml    | 244 +++++++++++++++++++++
>  .../bindings/display/msm/qcom,sm8650-dpu.yaml      |  13 +-
>  .../devicetree/bindings/phy/qcom,edp-phy.yaml      |  19 +-
>  drivers/gpu/drm/msm/msm_mdss.c                     |  11 +
>  5 files changed, 280 insertions(+), 11 deletions(-)
> ---
> base-commit: 8155b4ef3466f0e289e8fcc9e6e62f3f4dceeac2
> change-id: 20241224-mdssdt_qcs8300-11b7883dc60b
> prerequisite-message-id: <20241203-qcs8300_initial_dtsi-v4-2-d7c953484024@quicinc.com>
> prerequisite-patch-id: 33f2488a8eb133431f200e17aac743598508dcf3
> prerequisite-patch-id: 7b653ebeaf1ca3f87620ccf7d876e3d1fe496c4a
> prerequisite-patch-id: e1b60af8a64332e5f0ecbd3a4ea2b6e090bd97cf
> prerequisite-patch-id: b823d744d2fb302e2496eaf0cf0c9c66312dcf2a
> prerequisite-message-id: <20241106-qcs8300-mm-patches-v3-0-f611a8f87f15@quicinc.com>
> prerequisite-patch-id: 367d9c742fe5087cfa6fb8e7b05ebe9bc78d68f3
> prerequisite-patch-id: ee0513c070ab96e63766d235b38ee53ca9b19181
> prerequisite-patch-id: 970974160bcdc837ccbe5ea3b5dcac582e90bc0d
> prerequisite-patch-id: 5b2bd9cc44a529b0b9e5d73128dca5d2ff9f2f44
> prerequisite-patch-id: 6a0a81242e1d0f051e3102533bf0191615c6e96b
> prerequisite-patch-id: 322540ce6d45c32f813ecef50e5135c6f08d9019
> prerequisite-message-id: <20241114-qcs8300-mm-cc-dt-patch-v1-1-7a974508c736@quicinc.com>
> prerequisite-patch-id: 8faad5c6d8ca255935d3e4d317dcbcc32b8261ff
> prerequisite-message-id: <20241024-defconfig_sa8775p_clock_controllers-v2-1-a9e1cdaed785@quicinc.com>
> prerequisite-patch-id: 81378ec66ab6e569bd828401c43c4f5af55db32c
> 
> Best regards,
> -- 
> Yongxing Mou <quic_yongmou@quicinc.com>
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
