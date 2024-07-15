Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE1C2C3DA4A
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jul 2024 14:36:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mti1ugxkA3MBYblH9km0/LgtVBrkFkCjoEbK/5Y8DfQ=; b=nGp+r1ASHKqO8W
	TF5xVzzs1175CPWdjjVYz6W3nK4znfVnHRkJ7Wsy1BQkNzWZICrRQbtEGa6YcBERJBT01rNhPsChs
	M7yQt1HOOEMi9TbXAJeY0FfM3by3sLMEllX/iYPkfZ9ykKQck1Nyu7mCYeNWBgeIO0DFGxxxoAssS
	vtETpFrBGrLy1RIbs/G94+F1nmOJpqk/+khc5EAZXQnr7ObGnynmoe+2K3A0BCchQGXdbVWlIGcnJ
	xBTR+0RxpDAyalgQoaPN8Q2+Yf5M4E4aBzhVsh87kjwbEXSod9nFRYq7C8Qx6yxU/Scwe8UBDP9qi
	16FnhX4jUZwJkFphh8TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTMoI-00000007OnH-2deB;
	Mon, 15 Jul 2024 14:36:14 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTMoG-00000007Ome-05hR
	for linux-phy@lists.infradead.org;
	Mon, 15 Jul 2024 14:36:13 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-52ea5dc3c79so6139667e87.1
        for <linux-phy@lists.infradead.org>; Mon, 15 Jul 2024 07:36:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721054169; x=1721658969; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZhK6B8fnVuBZXI+stRE0bq58ZD3WpTMaKXElDZjFlSQ=;
        b=FGs4TJv9wUVRV3o0sYNi1CZ3WIIPoWLqbV900arDwSzHXDtAGfoG6VzrV5TmLyIaHT
         HWeMT76BHOOtHfR3Hc7Q6zx+HjqJP1q9fs8ZJfs0hynW9NCCOMkufRKhvYI8fBWjU1O/
         NIAxt+qywlWDgmD5XsLkeNz00dOYVQItaaCO/cce3Yw/bsKRMtvbfO0SqFcOlWJL4FbO
         ia1mM7BtPYJmaf4jzOgD6QTyScsVGEqGFGcYXE9T+rSW+z5dGZBz7HHK2k1dab/7ELa/
         hr6s/OzxbhND2m/Zs6G/Vkyhb3shFqqzTllGHr1Bb3PcXV8QntplyIgLrXanxxd/Fzbg
         cVcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721054169; x=1721658969;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZhK6B8fnVuBZXI+stRE0bq58ZD3WpTMaKXElDZjFlSQ=;
        b=pC1RTYgvriKSPBXK/JTl9eI3OubBqq3oXH1TIgX+xpUcpcfYHxzcAvvc+xsUPR48ex
         Y7CMAPqWvFPhEMh7Rh2jKM54Psc/SNLA3bxVLkhlYncD7eB2ljIm3B9NfO4MjdTTr+0N
         voe3co+GX1Ydbr04rhr/sUgXmv5rejoWmbjn0AygNgdUy7ClIH7H0hEwxVvtpmojxPWm
         7UFodPhSh5LBdb17i5ZUiZjYMpedP9Dag6fPXEIDY1X2Npi7IDf2pf4QcMHZAbL+MXC8
         f90cSSqFVLQ9jcdHMYXRhS/ivbFdcIJFEcIC1lB+hBxodmDxR8olIv8zE2o9NZg5anBs
         u5og==
X-Forwarded-Encrypted: i=1; AJvYcCVskfH643Xytofyl8UQ7F15zT0UCQAyLEXSVWxo0fNGhgbTqzrPLCKmvCsOkBuc9jihORqddhvyiiJkj08TyboznuAfIPQS5f0ff7inVg==
X-Gm-Message-State: AOJu0YybYAd+Sob4cHwGMDbpz9oopaWj6iVBogthAlFk3DI/jUuJxPH6
	nJSzlG5F3Nr+c6Lw/r4uFzvP2fma+dYeAMiBD64YojrpuVFxMO0eCrIZCQvq21I=
X-Google-Smtp-Source: AGHT+IHQaW26d33y2OpIl5UXv4ph5bElCHhjJdkDHS33sPTOxMjq2K8VIlrynJfDLVnvzGFn/+XEXw==
X-Received: by 2002:a05:6512:3ca8:b0:52c:d8cf:d4f4 with SMTP id 2adb3069b0e04-52eb99919bcmr14484436e87.11.1721054166859;
        Mon, 15 Jul 2024 07:36:06 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ed25324e9sm875405e87.198.2024.07.15.07.36.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 07:36:06 -0700 (PDT)
Date: Mon, 15 Jul 2024 17:36:04 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	Arnaud Vrac <avrac@freebox.fr>, Pierre-Hugues Husson <phhusson@freebox.fr>, 
	Jeffrey Hugo <quic_jhugo@quicinc.com>
Subject: Re: [PATCH v6 4/6] drm/msm: add msm8998 hdmi phy/pll support
Message-ID: <hmqp53xuq6yghdk4gpwosjquvfdguukj2jivhnzp247noyjtiq@p2f2ymywtqd3>
References: <20240715-hdmi-tx-v6-0-d27f029627ad@freebox.fr>
 <20240715-hdmi-tx-v6-4-d27f029627ad@freebox.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240715-hdmi-tx-v6-4-d27f029627ad@freebox.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240715_073612_082424_6C3CD4E4 
X-CRM114-Status: GOOD (  11.93  )
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

On Mon, Jul 15, 2024 at 02:21:17PM GMT, Marc Gonzalez wrote:
> From: Arnaud Vrac <avrac@freebox.fr>
> 
> Add support for the HDMI PHY as present on the Qualcomm MSM8998 SoC.
> This code is mostly copy & paste of the vendor code from msm-4.4
> kernel.lnx.4.4.r38-rel.
> 
> Signed-off-by: Arnaud Vrac <avrac@freebox.fr>
> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
> ---
>  drivers/gpu/drm/msm/Makefile                   |   1 +
>  drivers/gpu/drm/msm/hdmi/hdmi.h                |   8 +
>  drivers/gpu/drm/msm/hdmi/hdmi_phy.c            |   5 +
>  drivers/gpu/drm/msm/hdmi/hdmi_phy_8998.c       | 779 +++++++++++++++++++++++++
>  drivers/gpu/drm/msm/registers/display/hdmi.xml |  89 +++
>  5 files changed, 882 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
