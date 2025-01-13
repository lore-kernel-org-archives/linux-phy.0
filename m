Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07BC0E7719E
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jan 2025 09:17:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y4QNrz9NjZiXKYq04mQgu9B+jRKitMWsDQZ+8h9ofSY=; b=RqEwqlUIiTWuKC
	slKOuxByLgiUH2DMJLf7Pba0bxk148HFu7wq/slChNmWlL/m0LpfP6J0FsKYMAVpNpMvKChxu0Wly
	m4pwbZIt4s5M1A2ViKd7z2qyfrAt7cKMYEqmJjbKo0Efzl/IC3ceI/F/XTz7Zfx0hZO/ni0E/WK3F
	DuogaU9RhhSpON8MSYnzABs7lv4ZWyFdjN/tnMhu+apS55ZLAQ213QHbMYd8Ir3L6JlAc359ZP5H4
	oWOSvJyVVru0XXgY5ZysRonu6xTttG6xHR6Ah7+V3RYPEepoc02LVDHT9XRdR4fFBIR2J38KOkMPP
	LdeKIHh251PUVznJmzUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXGZt-00000004ZQ3-34Zu;
	Mon, 13 Jan 2025 09:17:45 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXGLQ-00000004Wlh-317G
	for linux-phy@lists.infradead.org;
	Mon, 13 Jan 2025 09:02:50 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-540254357c8so3680247e87.1
        for <linux-phy@lists.infradead.org>; Mon, 13 Jan 2025 01:02:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736758967; x=1737363767; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VYkQdxTA3vBXlKKUBFkrgSmL9ucWyZWWWLZyZzkAa3w=;
        b=nnUL8MvzvI3nhut6/laupo2BTPSTQkBlSzdo/wsrkhFp2dBMPodsSuciZxhHu/CmdW
         FrNvAnxCjEpY98y0NDXDeTbrhGDyV88RhRKrYYpltNkAGutglAhA7z/SOVeY0meZ59Tx
         DDEQlYIj3M62F+Flap2nlrKa6DsKBXB2C5oA5gqumY2TOz2ME8tE49R1ZgmX6+8BZ5RA
         RWt/VRwbWtyvm4NH9GAxX0X5tleGMIf2EaNL4Tpf6m2GYYazrvXovnmfSNbcuSqVlFeH
         XWIAOlbT+Uk9dJnNyrB393iK8V+JCHPWhoWl3qeVEPJE5n/+ozGsmian4c+5oxVDCkRK
         aOdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736758967; x=1737363767;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VYkQdxTA3vBXlKKUBFkrgSmL9ucWyZWWWLZyZzkAa3w=;
        b=QSeXzdYehpx6UnNNGFDDEsru58ej4zkark+qx5JBrgq7EcWsQujmZV33tCa20g4CFg
         73GnFBABrOdft+KkidAB57aSoI4eNWeY8YFw6t7b8a8be/x2kHam/HEeljB07HV/giwU
         jtTL6zXLEl1O31Mvk95EqIl28K6gHy+L948pOcdubeL0AeUVjRpqDWeUZ7KowK0TlNFe
         limL70VQlFKEC6IuHbwcfVYvS4W6gZsW9HjFv6qvdZ06hKVKej0GaJxg8LaSk2lwraCE
         HoJU4Q3hnqQLZ4kbr6r3hlM7CLLLzBm0OqpgmIkbM37IpMFH/qzyebLPhCLRpPiCCCXO
         Y5lA==
X-Forwarded-Encrypted: i=1; AJvYcCWbbz3pdCXj2kr3FUXdsb8yIegjcHwoEGH4RcIiJo+E7QOR0rfnF4Mr0+TRZufM2LgBilsMP57XarI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw6o5uhXf8jAf1GhnXr+T0cWVf8NbUUymiIsI9SvC722htXHX6b
	CktcMPwRQKvh6joApQURqCN0FkE1YA+CEILGM67dIS21kVjfZaFxp1IIh20fbJo=
X-Gm-Gg: ASbGncuJnKzrAJNd15MX5lKtg0ESnHaJbrb2nIK6dG7I1UQgsTZ43CrOuk3AMB0gItU
	5vBTFOVFwqf9MdkFv+gNA4bERKCsIBNyGwnzUoKH/TleJ4PfpYfb0XBFYHPBB9gEkxIfx5td+q/
	YxWEWNXcBXR3fGrR1qTUpsmOKkzEToJ7lh6I3WizQl1MW+Pcdi38LSRkaOwWR5i5ziWHZEw4Cpr
	p2hDdZeAhUktOkEBkeL1hoxh279w4YNk/4eEBQT55hg0OeQu2rAqwRBkHug1bnSzj9m6RImGcmz
	m+jwJeEgVkUDoTEUR1sfx//L3n97x7+pkKyJ
X-Google-Smtp-Source: AGHT+IHowqb7rFqBBDpRnlzRpSHyTMrFA26GRZ+fcN9JLnlQvPTm5oxedl6vvT+6rf1rsSPJNSIUoA==
X-Received: by 2002:a05:6512:3e17:b0:53d:ed69:a593 with SMTP id 2adb3069b0e04-542845282a5mr6463480e87.22.1736758965311;
        Mon, 13 Jan 2025 01:02:45 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428be5483bsm1300830e87.105.2025.01.13.01.02.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 01:02:44 -0800 (PST)
Date: Mon, 13 Jan 2025 11:02:43 +0200
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
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3 0/4] Display enablement changes for Qualcomm QCS8300
 platform
Message-ID: <qsq5so5i7fy3r7xcjtcr7aq2vtbywh57j3b3e7ddbsmmeu5qwy@pgcntgxknuul>
References: <20250113-mdssdt_qcs8300-v3-0-6c8e93459600@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250113-mdssdt_qcs8300-v3-0-6c8e93459600@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_010248_765893_83605FEB 
X-CRM114-Status: GOOD (  21.20  )
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

On Mon, Jan 13, 2025 at 04:03:07PM +0800, Yongxing Mou wrote:
> This series introduces support to enable the Mobile Display Subsystem (MDSS)
> , Display Processing Unit (DPU), DisplayPort controller for the Qualcomm 
> QCS8300 target. It includes the addition of the hardware catalog, compatible
> string, and their YAML bindings.
> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---
> Changes in v3:Fixed review comments from Krzysztof, Dmitry.
> - Fix the missing space issue in commit message.[Krzysztof]
> - Separate the patch for the phy from this series.[Dmitry]
> - Remove unused dependencies and update in the cover letter.[Dmitry][Krzysztof]
> - Link to v2: https://lore.kernel.org/r/20241226-mdssdt_qcs8300-v2-0-acba0db533ce@quicinc.com
> 
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
> Yongxing Mou (4):
>       dt-bindings: display/msm: Document the DPU for QCS8300
>       dt-bindings: display: msm: dp-controller: document QCS8300 compatible
>       dt-bindings: display/msm: Document MDSS on QCS8300

Is there any reason for not using a common style for these three
commits?

>       drm/msm: mdss: Add QCS8300 support
> 
>  .../bindings/display/msm/dp-controller.yaml        |   4 +
>  .../bindings/display/msm/qcom,qcs8300-mdss.yaml    | 244 +++++++++++++++++++++
>  .../bindings/display/msm/qcom,sm8650-dpu.yaml      |  13 +-
>  drivers/gpu/drm/msm/msm_mdss.c                     |  11 +
>  4 files changed, 268 insertions(+), 4 deletions(-)
> ---
> base-commit: 2b88851f583d3c4e40bcd40cfe1965241ec229dd
> change-id: 20241224-mdssdt_qcs8300-11b7883dc60b
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
