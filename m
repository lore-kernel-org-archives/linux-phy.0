Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56B96C3DA61
	for <linux-phy@archiver.kernel.org>; Sat, 27 Jul 2024 12:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/JUSiHhYy29CPC70+hklNvLjB+TbIAYOSkz2KjBHiKg=; b=ozVMYNeo37Ov6P
	NXrDdvxMarXOkDiNSmZj2WZap/TLfAsdWaguuYq49ftqURenFppk9EkyrK7xP/r69sJe+T4htJLmN
	3wbPgVdMqiiKrU+GHoz2VrDDuREuMlwk15FKr1M/0j37U7ZMq9/8JUoMxipo/tgHCpmMUWLTnYU6+
	zg3NhR1JRZd9HWcny430qqtp0dx0TEGXPRbnrN1mhlkhduxVUSeprfPClxeqO0k41ZYdY7JX32wdc
	2pMcHreFpLMhWUaaoSJbxwxTCBSDt6+3JVPcCvLrGFQc19ofrxXmwZfROJKkdw1T2NiUY+eUz5QKF
	tSlYy/n9P/Bi3Q3ayyTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXgpe-00000006heM-3Dt5;
	Sat, 27 Jul 2024 12:47:30 +0000
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXgpb-00000006hct-3kiF
	for linux-phy@lists.infradead.org;
	Sat, 27 Jul 2024 12:47:29 +0000
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-67682149265so5326977b3.2
        for <linux-phy@lists.infradead.org>; Sat, 27 Jul 2024 05:47:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722084446; x=1722689246; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qm0K2iiwCjE6zO/ZiafleFRuipXYf73kca2DfX3AnMA=;
        b=TRdK4Zp9b4w6F2WqbO7L26NgCajbNx12QGajuYizk6FwEKajo7OAPPHkJrqb6BIA2o
         F1rtfcbBydgIuMVNmFwWDYgmEk35WFU51ow6mKnPdOaAVOurlBpLYrDHR358ON++To36
         kzJtoWAMUI6uJjpCoJaI3pgGEHRzZqe5gnhqXairVFx2c3P2gLExIqIaM1kSyPci5kYG
         UBYEHs2YNcRl1nSZ4cKxrBSOYb0H0h0FgQCmIew7OVb3NcglYNSYpUcIfusR+5sgaQb3
         wt+8CWf0x/6zJHj82o+Fil3s+u52DqTK0/Ofk7PAoKZ+k0x9ieOsDqhOe7YxnKNX3J02
         iJLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722084446; x=1722689246;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qm0K2iiwCjE6zO/ZiafleFRuipXYf73kca2DfX3AnMA=;
        b=ebQDdxcCGexEmuGvmRf468CAMWFP4LFtKXdM/QFHx8tkSQvi0Cvin0quSXlSv5Eiq8
         oiPa39GF9mBl4ksb3VfVoZPkDaX0DXfOgtOS1+q4gpTUtTN/IsZJDk/yAjaV025ovwvT
         aeAggcogfiRhRclg6/7jerYU41X7I2oPE1xAelAKku+/f5E3olruIYVG+EPLR6kw2y86
         YqNam+V6dpfYaS65AkNO6lbw19qWpmXFRomT7cblp8Ftwg8OWB7LtkLVbsv9NQMZI3LR
         hxf4x46Ez2G3H+9c5j7BmLlV57xOF/LLZcvLk9rc/XwDp2z20H2atxvVW1aeCYvjRw85
         AyFA==
X-Forwarded-Encrypted: i=1; AJvYcCVqM9kDtsD9JnsHSloyNCuIgpuWxeXG8W0UgFWeozaCEp9z0dsXT3aoJXg0GcLL9i0pihzyqkJqXmhDHoONYamaudzC0ISgrcCD0MiiWw==
X-Gm-Message-State: AOJu0YyULrXsGRLx4DFdmzbd2bPv6RSfTsmgDJX4+Nvrr2dEONeaIhGl
	EEe8EfH+YRhQhSlSiBlbX84th6uIwb7TebfIyOskpECqksPcipHwvd8W5EFRUz7UNEEGDBojLz1
	7p5Ma+jz2UHzlfNGUnwCk1FzBMHa/nBcPVXrRjA==
X-Google-Smtp-Source: AGHT+IEqbcAV41X4ysEtg0m1TQxIoMPD89y9he1KPVTcI6Tf0/ta8VQ8uK6NG3kpYoMoSd/HctShnal6IEhL9nfMghI=
X-Received: by 2002:a81:5c87:0:b0:650:a1cb:b122 with SMTP id
 00721157ae682-67a07f4ca6fmr27053727b3.27.1722084446649; Sat, 27 Jul 2024
 05:47:26 -0700 (PDT)
MIME-Version: 1.0
References: <20240725220608.131426-1-quic_abhinavk@quicinc.com>
In-Reply-To: <20240725220608.131426-1-quic_abhinavk@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 27 Jul 2024 15:47:16 +0300
Message-ID: <CAA8EJprYPq4gj3ZWexWW9jNc2806Q8VHEx-aJA4R-jFd76W=AQ@mail.gmail.com>
Subject: Re: [PATCH] phy: qcom: com-qmp-combo: fix swing and pre-emphasis
 table for sm8350
To: Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: freedreno@lists.freedesktop.org, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	dri-devel@lists.freedesktop.org, quic_jesszhan@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240727_054727_952091_1CDDD7F6 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
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

On Fri, 26 Jul 2024 at 01:06, Abhinav Kumar <quic_abhinavk@quicinc.com> wrote:
>
> Fix the voltage swing and pre-emphasis tables for sm8350 as the current
> one do not match the hardware docs.
>
> Fixes: ef14aff107bd ("phy: qcom: com-qmp-combo: add SM8350 & SM8450 support")
> Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Tested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org> # SM8350-HDK


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
