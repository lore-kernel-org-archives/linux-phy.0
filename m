Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D545ACD1292
	for <linux-phy@archiver.kernel.org>; Fri,  5 Apr 2024 02:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d+/7ogCzncF51rbblCxS+R1ekenJTcnLDpI2aWXf3FE=; b=l40gI9qPV9G/3m
	aXWsyTrRGdPH5XoyLHM5Mo5RCIADcoj9JT0wk7MXRGKwDtzNz4+fdpQInAWnUf5czVpfN6Vwd/GwR
	w04fvzg0VkfUkaZSbb6KrTvuZKYcTfWZ5p6F50LcJVBnG+dIwbwvYP3uaIOtGCv1inGOlsaBBFYBF
	VHU3UcaJ0I6bj8zW4Ipfcg+5s75DqxZYwaOZlhueQ1vzPuFjA6H1haRnn8oiEIoqlBEfu2ZcD1kp5
	BpbfX7/HZjvvGTVFXftChWovHMdqLGWjGkxHhv1Ov5lun+NzKc5C6aEYpr6q1fibL0hGc7fZEGuV/
	77KKwLz7O3WrrqbugThA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsZjN-00000004xy7-2HYd;
	Fri, 05 Apr 2024 02:55:05 +0000
Received: from mail-yb1-xb29.google.com ([2607:f8b0:4864:20::b29])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsZjL-00000004xwu-0ehD
	for linux-phy@lists.infradead.org;
	Fri, 05 Apr 2024 02:55:04 +0000
Received: by mail-yb1-xb29.google.com with SMTP id 3f1490d57ef6-dc6cbe1ac75so1286032276.1
        for <linux-phy@lists.infradead.org>; Thu, 04 Apr 2024 19:55:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712285700; x=1712890500; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EfDPM/jBlrvHW8pL/mwrjjQGf0cytLyBW2ZbeZaxa8w=;
        b=qvrfDQ6KjvMVhs6ZlfgUM8VxQgmZ9xhBhrtAnhgWiUI6sOf16O/PW8kvVVChMOUvft
         B+rra40sTVRYurqEW1gfji1d+dV8lbHW/9qp6wDkRQGarFQjQAvethytwfu3FjVSWAax
         LDsnhe4f5B13caIFnHRXTfydKxRNWxXZWNFn5QbwF3YvVnJ1kvnOJn6OHFJ1VvEBua0u
         dWu1nkzgNSq3NDTMnOk4HgL8sDbFzifSrS15cygQJoULv0DcUq0TkrWX27yec/8Kwzbl
         6945bCNqp37D034Ly221b34w9FDva2+n2Dm03VEPO9Y4uEUku5h5crVFtozwe2B5vd85
         a2NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712285700; x=1712890500;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EfDPM/jBlrvHW8pL/mwrjjQGf0cytLyBW2ZbeZaxa8w=;
        b=pD39x8NFshRi6SyBDPNJWUKv5CtacXkzBK0PFiwo5vbf6h+Ruk8yHe5FJ0P70fCLew
         2hpllnj33sYjyxZS4DDVoqc0rPDK0DTz2ej8z65TB1Qfk7LLAsjVHjMSQe82luR8N2Ap
         DINF+Kd16hbCNHQ/zLj04HylKNtPuYGjFYWFzOB8KmnHsuSYfmsJUBGvuYCurML0bx6k
         aRdDlJznkEbhBUOLKn/2h22N6nvX3uigV/9bRbZCfiyGa+BImHWh8mlFbYzN/QTkcmEj
         ApyKbHFPyI8gjE/XK7SFt5e2cO7RTN/nCq2wiSHc8xmVMqZss6WjqNTzrslVOwTzDPxy
         RGyw==
X-Forwarded-Encrypted: i=1; AJvYcCUr7r13Yfhrnza72a8ox15Qu7C7jtbJuprK7qPXBL6Lud8dKCFXvGoZbQBeuLD+qAI3lWk4ldV6Fc+6RTAS+LRpM/tN0K0uLZN0LzivbQ==
X-Gm-Message-State: AOJu0YxquVSsOCGGvflQ9mmjQ5Q2o1eu9PSuGyicN3eUIgNlRjqfsrZ2
	xyMWkfmbvUyvLAQXu6qbzyDdAuX47LffauUJmvRbO4Xsk2JyGXf8XUcE5VcNBE3y5QAAhOdZUeF
	aeEHxkHvtTB2JvV8MoczYonuRwFCQr6AqGApdlA==
X-Google-Smtp-Source: AGHT+IFivS2hB8z2W9hwonWTCxmRcOXhWI/RFcC0uZQ37FAI9e0SKdalGASHEiDclHq2P1ZBRA6kcdGTvgLJPN2UQoc=
X-Received: by 2002:a25:dc92:0:b0:dcc:6894:4ac0 with SMTP id
 y140-20020a25dc92000000b00dcc68944ac0mr207083ybe.20.1712285700487; Thu, 04
 Apr 2024 19:55:00 -0700 (PDT)
MIME-Version: 1.0
References: <20240404234345.1446300-1-swboyd@chromium.org>
In-Reply-To: <20240404234345.1446300-1-swboyd@chromium.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 5 Apr 2024 05:54:49 +0300
Message-ID: <CAA8EJprZ8Ehx+M7vy1pH8OT6Of2v8-trecCJZhF5wxBRSGQoXw@mail.gmail.com>
Subject: Re: [PATCH] phy: qcom: qmp-combo: Fix VCO div offset on v3
To: Stephen Boyd <swboyd@chromium.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-kernel@vger.kernel.org, 
	patches@lists.linux.dev, linux-arm-msm@vger.kernel.org, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	linux-phy@lists.infradead.org, Neil Armstrong <neil.armstrong@linaro.org>, 
	freedreno@lists.freedesktop.org, Douglas Anderson <dianders@chromium.org>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_195503_406509_CD3E695D 
X-CRM114-Status: GOOD (  17.01  )
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

On Fri, 5 Apr 2024 at 02:43, Stephen Boyd <swboyd@chromium.org> wrote:
>
> Commit ec17373aebd0 ("phy: qcom: qmp-combo: extract common function to
> setup clocks") changed the offset that is used to write to
> DP_PHY_VCO_DIV from QSERDES_V3_DP_PHY_VCO_DIV to
> QSERDES_V4_DP_PHY_VCO_DIV. Unfortunately, this offset is different
> between v3 and v4 phys:
>
>  #define QSERDES_V3_DP_PHY_VCO_DIV                 0x064
>  #define QSERDES_V4_DP_PHY_VCO_DIV                 0x070
>
> meaning that we write the wrong register on v3 phys now. Add another
> generic register to 'regs' and use it here instead of a version specific
> define to fix this.
>
> This was discovered after Abhinav looked over register dumps with me
> from sc7180 Trogdor devices that started failing to light up the
> external display with v6.6 based kernels. It turns out that some
> monitors are very specific about their link clk frequency and if the
> default power on reset value is still there the monitor will show a
> blank screen or a garbled display. Other monitors are perfectly happy to
> get a bad clock signal.
>
> Cc: Douglas Anderson <dianders@chromium.org>
> Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>
> Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Fixes: ec17373aebd0 ("phy: qcom: qmp-combo: extract common function to setup clocks")
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
