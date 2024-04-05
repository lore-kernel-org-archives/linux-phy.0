Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CED2CCD1284
	for <linux-phy@archiver.kernel.org>; Fri,  5 Apr 2024 02:56:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/oMvuLVCJ9uLfIbKm063GqFVUv0Q5JOmRNP1oXPGbk8=; b=Yb656RgTtUwArN
	mNLpJRXI1pghOprNRxRWwiBNsgs6D/AGbv6QSf9lU1tFO52L53Uf/1DCD5BlYktrq7aUWwbIGszpU
	F7gC+h5VdNi9pQY86ttWPI/Sj0kDqEC/6uus9pijWSoyPCfKedD61mL9VRCRKzaHKuXRdyHgOYhFn
	uPZos1bysidLeszKH3IHgVf3vBZRLZpClD4SVH+30tZVZgQYinw7em8LD5uOuL71rcOSVWLKrDbfl
	E8TAqHwCHaCvsXNXGfVlhJ318Kw+Nm9rd3lW8sRfCwkFBFcUoE6zHh9qw6Ooc2OUwKyHLp/Z5OKPI
	hAFg4CyDLPPoctkpwE/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsZks-00000004yHH-0YQN;
	Fri, 05 Apr 2024 02:56:38 +0000
Received: from mail-yb1-xb36.google.com ([2607:f8b0:4864:20::b36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsZkm-00000004yGl-0V21
	for linux-phy@lists.infradead.org;
	Fri, 05 Apr 2024 02:56:36 +0000
Received: by mail-yb1-xb36.google.com with SMTP id 3f1490d57ef6-dcc80d6006aso1794513276.0
        for <linux-phy@lists.infradead.org>; Thu, 04 Apr 2024 19:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712285790; x=1712890590; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dEsqNh0qk6wjxNfe1EBS/5T4PtCYN6iMohqr+1wRzko=;
        b=vXKXyFE4lodoMV1zWuiwVkSI0G8WqBF2a8q4Swn0AWVEG8Q7/5wHKzvNhyd5YQ2HN+
         k5k9riKwee1F/yHXNR20oF+Z67mv40VOQcg6jpmCnnyNhjUMg0F1wvfK1iRvAR22qM6N
         qaHzyaafkgOzVivWI6rwWv/j+3SuDGzXeKwe42QRrH5fHenAlBU2zklam1dbkO/JQM4a
         bFaFdq24/S2VuS6s8oRDGCAC0XWbdbN0l2/OioO9UE0pPIW1FmfoQxLhNMoevpe+cXq4
         /vZqys/k4Olo3JWJ9q6h44KruiggdQM/zJWuI9fem2rBTm4auSzod/SR6cnrBZ2FwsB/
         CeXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712285790; x=1712890590;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dEsqNh0qk6wjxNfe1EBS/5T4PtCYN6iMohqr+1wRzko=;
        b=Zd1zmxiNNPfbnucCfClUhnQ6PHfEz2tW+dDFJScMKpHpBMML/4FnJUn7vnQL+ynE8/
         CSgzsd8XpN7UALi9ntUYM/wKCL0u/fXnjQS1V15zAXy0XuDmdM8U1QcqyAkWBuuJy2MD
         Wk6/vEj6T2PQPWhqFsFeJkacduRTh+mKxptUglj6nh0XYdr7ZuuEKQaEtsPo0TwqsYve
         NtpGSZLfSv9FmJPNM7YYJw5ST7lP+b62WXB5ZuUrm2tTCGnccXyzvjJMYSxFOFGtylJ0
         Iyqx+UrrOZas7K0Bgr86iYi0kmav4v2YUvwAvU6Bx2QlseWc/14qqVPOSy48bDwS7vMN
         3zcQ==
X-Forwarded-Encrypted: i=1; AJvYcCXd2xM+x7tjMZAwe7nNpL7sG9piz49LZeaEEnhP0seeaR2sMhgkBt786OWoSr5M0xmUUROx17ASih42euOFAFRdyPpbvwSjmnVeqQ1IuQ==
X-Gm-Message-State: AOJu0Yyr1Makjo8gZdzDyMJ81zZA21lLLV0OiR3sSvVbnCQ/YuXnMSVh
	xN3npvE9S2OV5zHBNpl45jvUtfWkYnyrEqIMTDtxvcQJ5fK1vZoqwhsFzWcTcYdvEM/rfnmHpmc
	RTDapgjVR/p9dU5f2d7Bc2EHcXQiAtt/8uhxEBw==
X-Google-Smtp-Source: AGHT+IG4u2Lg5AEQseN8XhnyCdvNikS9yjicoQQjhDBxxVZhO/lMnvhSuSj5pAzYdpOCxOv9gcRM1CyMxY7VDXAbmhM=
X-Received: by 2002:a25:aace:0:b0:dcc:c279:d2fa with SMTP id
 t72-20020a25aace000000b00dccc279d2famr88256ybi.30.1712285790527; Thu, 04 Apr
 2024 19:56:30 -0700 (PDT)
MIME-Version: 1.0
References: <20240405000111.1450598-1-swboyd@chromium.org>
In-Reply-To: <20240405000111.1450598-1-swboyd@chromium.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 5 Apr 2024 05:56:19 +0300
Message-ID: <CAA8EJppHXkTNSNaCoYWZaRmKw=AfWL4N0WCqR6uFgNdbkw4VUw@mail.gmail.com>
Subject: Re: [PATCH] phy: qcom: qmp-combo: Fix register base for QSERDES_DP_PHY_MODE
To: Stephen Boyd <swboyd@chromium.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-kernel@vger.kernel.org, 
	patches@lists.linux.dev, linux-arm-msm@vger.kernel.org, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, linux-phy@lists.infradead.org, 
	freedreno@lists.freedesktop.org, Douglas Anderson <dianders@chromium.org>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Abel Vesa <abel.vesa@linaro.org>, Steev Klimaszewski <steev@kali.org>, 
	Johan Hovold <johan+linaro@kernel.org>, Bjorn Andersson <quic_bjorande@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_195632_242285_B25B8863 
X-CRM114-Status: GOOD (  14.75  )
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

On Fri, 5 Apr 2024 at 03:01, Stephen Boyd <swboyd@chromium.org> wrote:
>
> The register base that was used to write to the QSERDES_DP_PHY_MODE
> register was 'dp_dp_phy' before commit 815891eee668 ("phy:
> qcom-qmp-combo: Introduce orientation variable"). There isn't any
> explanation in the commit why this is changed, so I suspect it was an
> oversight or happened while being extracted from some other series.
> Oddly the value being 0x4c or 0x5c doesn't seem to matter for me, so I
> suspect this is dead code, but that can be fixed in another patch. It's
> not good to write to the wrong register space, and maybe some other
> version of this phy relies on this.
>
> Cc: Douglas Anderson <dianders@chromium.org>
> Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>
> Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Abel Vesa <abel.vesa@linaro.org>
> Cc: Steev Klimaszewski <steev@kali.org>
> Cc: Johan Hovold <johan+linaro@kernel.org>
> Cc: Bjorn Andersson <quic_bjorande@quicinc.com>
> Fixes: 815891eee668 ("phy: qcom-qmp-combo: Introduce orientation variable")
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
