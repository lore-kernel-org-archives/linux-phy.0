Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C67CC54E60
	for <linux-phy@archiver.kernel.org>; Tue, 19 Mar 2024 10:57:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ROhrPms+MiE25O0jLhitNnwK58y4S9v3wtFAL0jYNc=; b=KhR3jquKeMx6SI
	++W4bB/qG24kiYmStulUxDxXoOf0DxLLPz3Li1rQ/3KIf7cOsO+0tn1XmX1LgtU85SCzNSdmBs6oI
	nBtQw993Q/czKBdgyWNDYmQJYhRYlc1/Pck6sqgJ1mtEIY8i2TzQE0jkgyVjNpAVKNPX5TQ+0XO4a
	I92HVg31nouKm3oFIDxI2+CTCVOscwVo/AE+qn3jRulXKivZVWraYV/+DFOrrzdMsGvilMYhFXewM
	N5GSrnEwnMoixjq+Z5lLovdxPQqZDXpnzU4Xj8M9Pw4W4gUN2vGhZC31fyC4BvcmMdtxoieBZvM+6
	YdMdAqh6v6KqfewZh7iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmX9y-0000000CONu-381D;
	Tue, 19 Mar 2024 10:57:34 +0000
Received: from mail-yw1-x112b.google.com ([2607:f8b0:4864:20::112b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmX9w-0000000COM3-0PD9
	for linux-phy@lists.infradead.org;
	Tue, 19 Mar 2024 10:57:33 +0000
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-60fff981e2aso32472247b3.3
        for <linux-phy@lists.infradead.org>; Tue, 19 Mar 2024 03:57:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710845850; x=1711450650; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yaXfKEvmsikpUYVhti7jBf+oIo1Ef/uGnjoHrgljhJg=;
        b=g8bq6+JzK3t6TexFCV5Jd/Yn5jnsY0/4YLWUOwXQDgPeRFm8Zq4jLzgYmPC7guTs3T
         rn+q7fXAKo6pKeU4yZ8e7Pfz29sa3RywYVcNpHpkwKGDxRXHgrJiF/zQv+oB1AXH+Xo9
         YPuvsdHt8o+R5OV4EEPzpBxGIaE9iAzUq7fx4zzB3yeCC3cA4XL21abkg9kQ4fE0NphX
         ffBrhs1+9MtHr6tu3O1aGcS/bqitbjVdFVhhJlY4myhfJQpUQRfKaLIaBGaGEUnw/+Hc
         rBmgFnaaEZz0y1xnEdELcMjZJcIkDX/RjFPfVqs34tIPLIdBzkCp3RQ/63LT7c0H/i3w
         PbkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710845850; x=1711450650;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yaXfKEvmsikpUYVhti7jBf+oIo1Ef/uGnjoHrgljhJg=;
        b=pv0g2gM+XpGwABm1u28Bl1vKaodSot3/MmLQvo38uL+Or1q0MvWrSzAOMTQwtwDljT
         KQbhQzWMFvXplQiva2YUO0Qum85LRzTsrdbEHnYY/6Rv3d5okKdNh6tWuWBwQGWdvQI8
         1R1to+xn/8c2NpaSRRyLmLF9yK/9xTnTLOYZ13RKDxHMZqXSnItaeZ8/agH6dvtG00o2
         7dN0OUXsDsCyFCydZk7hLNHxV2bhMxhVmJ+sue0YZu8eCZcPnVfnKrg1uwJsezTzyDEv
         Z+NV/KvuikCyNMfp0kr36YWT0ui32tD22ozcDX9nPD9Tymn2e/nk0+IoQaQsWOwilciB
         UO8g==
X-Forwarded-Encrypted: i=1; AJvYcCUAGVq2D2trcp8ItzE6AEXEmW1tUDSgoUNvzReTJK3G/wJmFuOJkCGlJhqRF0EulPeaEWnYAnog1X2efPmujTHneA0LdricCXbgyeXUfg==
X-Gm-Message-State: AOJu0Yxm0u6FNYOU5/M2orNZS8SBoECyRa+w6SkUFBETTduzLpcxIHtQ
	sMP46J7SGO098RTzmKRcJuZVwqJ1pwtLa3vFtv1Y3PaL4rxl6Fx/NSf2EG3zZg7I/xhe9eu0NW9
	aeRMDJz6bBlb7bLyZjccaY6I+qRLPSaNR9Yqc6g==
X-Google-Smtp-Source: AGHT+IGqi7COQGg1nW1AorqoS0U2xxr33c95l/mHdFskUkowuQYfRthNAvwW4wT0aiSIUmSn5fPJUdBVgYXW4Pfrs+8=
X-Received: by 2002:a0d:c242:0:b0:609:e2c1:15d9 with SMTP id
 e63-20020a0dc242000000b00609e2c115d9mr12866447ywd.30.1710845850724; Tue, 19
 Mar 2024 03:57:30 -0700 (PDT)
MIME-Version: 1.0
References: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
 <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-4-926d7a4ccd80@linaro.org>
In-Reply-To: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-4-926d7a4ccd80@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 19 Mar 2024 12:57:19 +0200
Message-ID: <CAA8EJprURpSEMkZKb1__bMhcXkKr-xyRzxFo0bOH=oiGYOSc_w@mail.gmail.com>
Subject: Re: [PATCH 4/7] phy: qcom: qmp-pcie: register PHY AUX clock for
 SM8[456]50 4x2 PCIe PHY
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240319_035732_181930_63472EA8 
X-CRM114-Status: UNSURE (   8.71  )
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

On Tue, 19 Mar 2024 at 12:46, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock,
> enable this second clock by setting the proper 20MHz hardware rate in
> the Gen4x2 SM8[456]50 aux_clock_rate config fields.
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 9 +++++++++
>  1 file changed, 9 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
