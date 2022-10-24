Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF661ECAAA1
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 13:34:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hr7MH6+9N4nH4NR5Ih8vLQL2bRlT1zt3DnAyASM70V0=; b=z1C8SgVw71JrNB
	Kb9JlbDasfXhmAD2WOQvI/Ujin4HqjUORf4zkrGk0LpTVb5dM9JKitvxsVIpsty0AK86MRbKkUfLj
	R/X/xGqKeHbu7lE4jBF0FCvqwd4FfZFbj9620xiz6kIH/Jedjs2wlk3o7gP/YtyVjPzrEoh4yA+K2
	nhIvLHEjoX1d9S3FyphX3vCe33qN/nd8bFHt17v3GPSTD15CvQWSLt9vEqoVOImndIBDssEIHyGSa
	KC4u73QAuk6ljYwK6ixsLd9o8xm+efdJ+kt1CCBuBQ+UkswIA+imoilNpl4hUqIPzy89Kmyf8SSEf
	3znnviE65fbIVrFmHVNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxao-001jHq-Bm; Mon, 24 Oct 2022 13:34:14 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxam-001jBs-A7
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 13:34:13 +0000
Received: by mail-lj1-x22c.google.com with SMTP id z24so2804228ljn.4
        for <linux-phy@lists.infradead.org>; Mon, 24 Oct 2022 06:34:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6NoS4CzM6HbNbKDtA4RCfd8Zj0ymS9k2HvHZ7A1OcBE=;
        b=ZVz2a2n84yw5F1YXMAlz+q+nvJRxrVAI14sCbr+bgI/G13lWm4Es7/JM4+Ns9n5/+s
         sDDSbpdJJ09ioxESNjqm/X+AZAqvVXtiC0a3uiyzmMOUXcSbt/I4D6xcyUNiwBmvCWWK
         z/w3o5rvbQ5LtIWamdAxJH8+aZWyYH+JrI0Pv5AlHgucMjSF0NA/V7sVqal5YkiKXh5C
         YvdCm0M1RR8Q/IRIW8jvJv1L13fcs81eFuFuJZFVYYjF7jlmxJWJWCjr0ED/SyEzvcV1
         mHzFMNNlRF4edtN0U0IlZURt5/ko8Efiie9U3kBf6uskMKkC+F4x1b8aJJTxnWyRg0k5
         jF4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6NoS4CzM6HbNbKDtA4RCfd8Zj0ymS9k2HvHZ7A1OcBE=;
        b=DiWh8Kpek59my8LWGnbwP7aehrs8ykVqev5AnyIVp1YF8RV4EpLahLJgZUIdDc8wgh
         vNGuNbAjUsAJLl4EkuyYiRe4CZcj+7VqIAB1IA+8RaLR+lqRINFyBsH/1yW/vhL6JbpO
         6DVAsFq/4dbvHUReuIG8WVtRUjB68HCommkvArk6NO7jCWPSUUQIr86yvdiGcNKjsPA4
         1Dzgtju1HJtafOwsRH6tNa5nvQJer7RghqfVdWX55XMFFVVoPqDdFLjmXSggORysZ4PH
         ujM+AzMVyMk0/Hz2aV7SDHrXPJ8SF5iGKcehFY5OuvCb7mf2lgcdZ9Zpiay5oxgAldt4
         KRyA==
X-Gm-Message-State: ACrzQf1FG4WLJ7yiykrXVKtALngdcVHnEAy0ihnTi8brWBrxRlieQxQw
	i4RPMbmf3uxhgh8nM4ZlF+Yjjg==
X-Google-Smtp-Source: AMsMyM6mvtTdCqcq9VOEBMfv+mspzPOqw0hztaXGnmQNJbPRa4nFm1sK7jFGjmQ084PfoA/vRTmovg==
X-Received: by 2002:a05:651c:1542:b0:26d:bf29:8cd5 with SMTP id y2-20020a05651c154200b0026dbf298cd5mr11385069ljp.304.1666618451843;
        Mon, 24 Oct 2022 06:34:11 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id f15-20020a05651201cf00b004aa14caf6e9sm930402lfp.58.2022.10.24.06.34.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 06:34:11 -0700 (PDT)
Message-ID: <d20d48eb-5ec0-f8da-1f4f-d337f8afd5f2@linaro.org>
Date: Mon, 24 Oct 2022 16:34:10 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH 06/13] phy: qcom-qmp-usb: clean up device-tree parsing
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221024100632.20549-1-johan+linaro@kernel.org>
 <20221024100632.20549-7-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221024100632.20549-7-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_063412_383042_143738D6 
X-CRM114-Status: GOOD (  13.06  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 24/10/2022 13:06, Johan Hovold wrote:
> Since the QMP driver split there will be at most a single child node so
> drop the obsolete iteration construct.
> 
> While at it, drop the verbose error logging that would have been
> printed also on probe deferrals.
> 
> Note that there's no need to check if there are additional child nodes
> (the kernel is not a devicetree validator), but let's return an error if
> there are no child nodes at all for now.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 40 ++++++++-----------------
>   1 file changed, 12 insertions(+), 28 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
