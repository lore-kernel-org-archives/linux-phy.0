Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8906FC71153
	for <linux-phy@archiver.kernel.org>; Mon, 11 Sep 2023 19:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MnAudoCkWGqybYkGgHf5M0+LTvh6Lweii3uzO3en7TM=; b=RMHYPkpuS88XW+
	ydHCDymQI+uy5JTii6OvzdwgUZEEtJi+iQdP2I1jrV/CiPq7zkGE8UWnbKLGWBDHfRtw08Dp5ANrQ
	YaeZpM8/2oDc75Eas0HGRVwTLWxy/43QcB7codXPvDWCdMNz6EiFu8nnLOjXxWnT4ZGnOrbl5k1MN
	QglK1E/jC6QA17aFh3MBBMvTZCZxpk13brUq+HnHMqYSAfvC4sVeqKKdHjHWDo1avMlEFFnRm5Fa9
	KwYf2o7YdCXnaYG2nURPuhESW59aaQed8ntP8Pu3rLA3TcYujsUALler6xlbr06wglVAy8A5Eagfl
	uQ3lmpZX0uFrVSBQa4IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfmCe-001APm-0w;
	Mon, 11 Sep 2023 19:04:08 +0000
Received: from mail-yw1-x112f.google.com ([2607:f8b0:4864:20::112f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfmCb-001APC-1V
	for linux-phy@lists.infradead.org;
	Mon, 11 Sep 2023 19:04:06 +0000
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-5925e580f12so47159367b3.3
        for <linux-phy@lists.infradead.org>; Mon, 11 Sep 2023 12:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694459043; x=1695063843; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3mIhjm/gLeN7AiCgdCxfDsRxYuO98ZVwAg1FCQmb0mU=;
        b=McwtBPwz5WcNrlkQaQ6Hce5S4aV9RH/wNkDdrlVTm1cFsj4SHINZ8EndfIRrYAeA9J
         gi13XrVlhKKpb0RuWTFC06Awfs+JUYPXV/DHr1OfZVpgnIc/RpG92BpzuRyyWM1AUnuA
         UFIromR21xrNtAd1QYivER4Jwq2ra9Ndy5t0yPImKK6v1fUju4FDsMBXF99e8+7oSbq/
         rNdhZasJbp4rGJShQiCKO0kf3WrEcRcaf1BUaTVQbGEHVcSzR3xYXMfmmIenwn1z/AFu
         yy9H/wqCKnlzXcpq27tsaNQ6yfzOLTzhinLR00YpXsaLK4fB6PCaOy1+KGeQc55I8/2L
         +v6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694459043; x=1695063843;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3mIhjm/gLeN7AiCgdCxfDsRxYuO98ZVwAg1FCQmb0mU=;
        b=Y5ugWqtcMNfEpgj3MbbGkowuWtChGiqPnC9Msg6pPrsTrsSgL1zm8/u/1Pii4AJ47d
         /E0PLxPjX6sHMDNokInc3HZf4Qbc3VYVLUFkeiAMNOHtYI1nI8MbtrDS8V46J3XlXvuv
         b7d7fsk2joCv77eqgN2SZnoVFSw/nziLMMXEzycRp3kP6XYPbHLwpkowChxEBsVQgToo
         huvgYKdVCxaPwcC9/l3Hi0z+FHq/GZXW4Sev1kPewERVaV5O5hQkrK9rIcCQ3mrpHlIs
         FpoyFDj5uT2PiNKZz4V6bTBT0Wjs330/M+sw25l87YPY3RRS9QJGQGHlm2dKLyjzjYIR
         EYMA==
X-Gm-Message-State: AOJu0YzsOiOZS3pOvj2cUg/unobEyhOR0EmsZadanJByTdTc+77Tjjyt
	X798A4c5yYBZsFF6rJmbWWP/DItO4CmSivbgGRD35Q==
X-Google-Smtp-Source: AGHT+IFFgWuTRbzhCVUTHa6+RUuMDSdrXvH9fWKAG4dfXv6IHaq3trCC5F8d4kpaXMrx7rWDK0F3jt+hV8eP+spO7lM=
X-Received: by 2002:a25:ae96:0:b0:d39:fa2f:8b63 with SMTP id
 b22-20020a25ae96000000b00d39fa2f8b63mr10189018ybj.25.1694459043718; Mon, 11
 Sep 2023 12:04:03 -0700 (PDT)
MIME-Version: 1.0
References: <20230829-topic-8550_usbphy-v1-0-599ddbfa094a@linaro.org> <20230829-topic-8550_usbphy-v1-1-599ddbfa094a@linaro.org>
In-Reply-To: <20230829-topic-8550_usbphy-v1-1-599ddbfa094a@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 11 Sep 2023 22:03:52 +0300
Message-ID: <CAA8EJpr-q5wJW082zXXzPQO=DjGYEj1bC=z18udSMxEfs+-yQw@mail.gmail.com>
Subject: Re: [PATCH 1/2] phy: qcom-qmp-combo: Square out 8550 POWER_STATE_CONFIG1
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
	Johan Hovold <johan+linaro@kernel.org>, Marijn Suijten <marijn.suijten@somainline.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_120405_541571_8F4163ED 
X-CRM114-Status: GOOD (  14.77  )
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

On Tue, 29 Aug 2023 at 23:59, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> There are two instances of the POWER_STATE_CONFIG1 register: one in
> the PCS space and another one in PCS_USB.
>
> The downstream init sequence pokes the latter one while we've been poking
> the former one (and misnamed it as the latter one, impostor!). Fix that
> up to avoid UB.
>
> Fixes: 49742e9edab3 ("phy: qcom-qmp-combo: Add support for SM8550")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c      | 2 +-
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h | 3 ++-
>  2 files changed, 3 insertions(+), 2 deletions(-)

[skipped]

> @@ -23,6 +23,7 @@
>  #define QPHY_USB_V6_PCS_EQ_CONFIG1                     0x1dc
>  #define QPHY_USB_V6_PCS_EQ_CONFIG5                     0x1ec
>
> +#define QPHY_USB_Q6_PCS_USB3_POWER_STATE_CONFIG1       0x00

Konrad, could you please send v2, fixing this to be _V6_ rather than
_Q6_. I'll rebase my series on top of this.

>  #define QPHY_USB_V6_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL   0x18
>  #define QPHY_USB_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2  0x3c
>  #define QPHY_USB_V6_PCS_USB3_RCVR_DTCT_DLY_U3_L                0x40
>
> --
> 2.42.0
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
