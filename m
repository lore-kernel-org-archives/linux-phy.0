Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A66A2EE49AF
	for <linux-phy@archiver.kernel.org>; Tue, 22 Aug 2023 10:56:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WbvhwIHk8oUtIk2SmA6azGRJhpfvzdQaLDzXsr3U5tk=; b=uzhM7ys2qCYZX9
	aOHXtmpXmL2LTqbXgxDz5ycXptKpEvfA4dsTMTw8nM7pwPblNbzhyj/FDlFOcd85LfjKohaTAJbdi
	rcwB3mfn8fRiSPRgjO5ZqeOydt2fd/xXjZ58T9x1m16DbLvu2ea/IU3VoRfcosdWQsbobd91zF/E5
	zebDDlP7jeBUhbtdvCUR1ItqtPqychb6dk1qANR655eQkPpZbmvQvayADy9V5gBgfFTs8TasaY5oG
	2xpyd7H8IokufvT/OIodOkD/srbIdWwIQlMI3Cbm2IyH2vZyjFifYpUb4PlRXI8jZk7n0zzIKINP8
	jn9cf6oG+7gmrKSe/KgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYP3W-00Fm3r-0k;
	Tue, 22 Aug 2023 10:56:14 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYP3T-00Fm2z-2c
	for linux-phy@lists.infradead.org;
	Tue, 22 Aug 2023 10:56:13 +0000
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-6bc886d1504so3339628a34.0
        for <linux-phy@lists.infradead.org>; Tue, 22 Aug 2023 03:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692701769; x=1693306569;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7gmbZKg8MO0Caap6tnCCUDBVYQhIxs2ct9dxwNPhfJ8=;
        b=HFzZ/XXKeXpwjt82B0mHZZG9JKd6iIY4ybXgnQTjEt4HKwvapq/RCvE2f60dmd+BtX
         qR7RQ5hyVVRD0Dd8h2DQsbfm66JefEkz44PWjkzcmV0xCYCYDr/7YZO5XNrdzNjEs5nD
         0YxF0MXW452u/h7z/H0eO25m6+tHTijDgiYfLTmkCNYX7+XKKKmKmaBFvo/s71QTmhXH
         G6hALlUeB01GA8vjdpiks5zjQIZhEEBbuxzLz9YliCJMdInzekL2/B7VNKKCGYO8DDm9
         sfx9FgnPtqtIq6+ixjtyIXFzi1LY1VmNYGVVCa5pbwyk8QdTyCGoybPLRcoGlaOtSr7I
         GWhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692701769; x=1693306569;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7gmbZKg8MO0Caap6tnCCUDBVYQhIxs2ct9dxwNPhfJ8=;
        b=KB+N1vF1vlU78Ipp4Rml+Hf/eX9NPnz7cqRYrQePrSB5CusbIcwZ98yVrZ8GhE8SGl
         lPIkqUHrY1ejClFh/6ucLkZKzCaLV0CuoMgGaLOfybOMUtg1NDQl77FPkDmn6bmoGF8y
         kVyhHUIaDplMoBMJD76i3cBWEr81p7Qgu27EFcRRX8d+VzTBcehAEyFvk6EhxS1SAt+J
         P2MM0SEFlv2MXlqcdQ16TmrIKWC7MQb/J7rpww8OYwZf7SkbpAdrE5WgRM8pcA98jMB9
         lubhLSpq9aeXFsGmaeq1wFLNeoAPrbanhw4XjcvG6GgvSoFpLl3OTKfRhCsK3k9M3znI
         6PJw==
X-Gm-Message-State: AOJu0YwKmkNLHS4bxpoP0Offzn9Jp2AIO9HjEPe7yCdBPxaMMbUZ0EkC
	JRQtBgpXWivCW8PYXffQ6RVCZsq8bgj9k1+jFGvtQA==
X-Google-Smtp-Source: AGHT+IHRpjn+Tn5STuiluP/0dZcO+kQ0j7tCK8/nXpSRwA5NzJZfFnhty39Igkdoef8Hg8QvdY5b0Y2Ut+Iz5kCQ/U8=
X-Received: by 2002:a05:6358:9889:b0:134:dee2:8c18 with SMTP id
 q9-20020a056358988900b00134dee28c18mr8946835rwa.27.1692701769535; Tue, 22 Aug
 2023 03:56:09 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1692699472.git.quic_varada@quicinc.com> <6d1638daf9b0616816fdecb529df86a394db7942.1692699472.git.quic_varada@quicinc.com>
In-Reply-To: <6d1638daf9b0616816fdecb529df86a394db7942.1692699472.git.quic_varada@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 22 Aug 2023 13:55:58 +0300
Message-ID: <CAA8EJpryKOzGd42NjG470D9jGr1Huv5D-F-NqaTo-0EJeFUr+A@mail.gmail.com>
Subject: Re: [PATCH v9 1/4] phy: qcom: m31: Fix indentation issues
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	catalin.marinas@arm.com, will@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	arnd@arndb.de, geert+renesas@glider.be, nfraprado@collabora.com, 
	rafal@milecki.pl, peng.fan@nxp.com, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_035611_870038_58E21E5A 
X-CRM114-Status: GOOD (  22.70  )
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

On Tue, 22 Aug 2023 at 13:31, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> * Fix indentation
> * Drop simple success messages
>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v9:
>         Fix line break alignment
>         Remove register success print
>         v8 version of the driver has been picked up for merge.
>         (https://lore.kernel.org/linux-arm-msm/169226613917.81413.1200008047604336868.b4-ty@kernel.org/)
> v8:
>         Change commit subject and message per review comments
>         Don't include of_platform.h
>         Change struct init coding style
>         GENMASK -> BIT for one define
> v6:
>         Kconfig:Add COMPILE_TEST and remove USB_GADGET from 'depends'
>                 Change 'selects' USB_PHY -> GENERIC_PHY
>         Driver: Use correct headers
>                 const int -> unsigned int for 'nregs' in private data
>                 Use generic names for clk, phy in m31 phy structure
>                 Init register details directly instead of using macro
>                 Use dev_err_probe in the error paths of driver probe
> v5:
>         Kconfig and Makefile:- place snippet according to sorted order
>         Use generic phy instead of usb-phy
>         Use ARRAY_SIZE for reg init instead of blank last entry
>         Fix copyright year
>
> v4:
>         Remove unused enum
>         Error handling for devm_clk_get
> v1:
>         Combine driver, makefile and kconfig into 1 patch
>         Remove 'qscratch' region and its usage. The controller driver takes care
>         of those settings
>         Use compatible/data to handle ipq5332 init
>         Drop the default case
>         Get resources by index instead of name as there is only one resource
>         Add clock
>         Fix review comments in the driver
> ---
>  drivers/phy/qualcomm/phy-qcom-m31.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-m31.c b/drivers/phy/qualcomm/phy-qcom-m31.c
> index ed08072..ea79c18 100644
> --- a/drivers/phy/qualcomm/phy-qcom-m31.c
> +++ b/drivers/phy/qualcomm/phy-qcom-m31.c
> @@ -242,7 +242,7 @@ static int m31usb_phy_probe(struct platform_device *pdev)
>         qphy->clk = devm_clk_get(dev, NULL);
>         if (IS_ERR(qphy->clk))
>                 return dev_err_probe(dev, PTR_ERR(qphy->clk),
> -                                               "failed to get clk\n");
> +                                    "failed to get clk\n");

But why are you trying to fix this? aligning next line to the opening
bracket is perfectly fine (and is one of the endorsed styles).

>
>         data = of_device_get_match_data(dev);
>         qphy->regs              = data->regs;
> @@ -252,18 +252,16 @@ static int m31usb_phy_probe(struct platform_device *pdev)
>         qphy->phy = devm_phy_create(dev, NULL, &m31usb_phy_gen_ops);
>         if (IS_ERR(qphy->phy))
>                 return dev_err_probe(dev, PTR_ERR(qphy->phy),
> -                                               "failed to create phy\n");
> +                                    "failed to create phy\n");
>
>         qphy->vreg = devm_regulator_get(dev, "vdda-phy");
>         if (IS_ERR(qphy->vreg))
>                 return dev_err_probe(dev, PTR_ERR(qphy->phy),
> -                                               "failed to get vreg\n");
> +                                    "failed to get vreg\n");
>
>         phy_set_drvdata(qphy->phy, qphy);
>
>         phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
> -       if (!IS_ERR(phy_provider))
> -               dev_info(dev, "Registered M31 USB phy\n");

This is irrelevant to the indentation.

>
>         return PTR_ERR_OR_ZERO(phy_provider);
>  }
> --
> 2.7.4
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
