Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A808C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 11 Oct 2022 14:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=db177EQYcGS2WR6fi88vLyozsr+MCDR0dH9aVTKcPKo=; b=HrgRtKmEGXE/87
	ut8oFosYEfhqIQAMiuKV25W+LTNFfaokTLf/Zy18x1fT3PJzZMbeH+ZY6GR6++XLnkpGqGOn2pIxk
	UjXj3N/YOuqimuLVurFm1bUYJLuAR1qlOu7Lsi7CsQA0DPvcvg6+7iSo9NdXleK/Dz2tpVZu9SYfT
	Z33HX061qah/aZ+B81svB3/glbFmxN/SJQMkQ4EfP7Xv1RdtFxuD2agAX+T9YexXceSLd8M67qBdn
	oncnoJgGBIsi5IVprMrEr4bep6pZeN8SSPAxFHw/BjigNx1VdIg6xsBF30+DZ5GQIOtf/bGSu9psL
	uL+yjAEvh0vaYmNF4T8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiFup-004Qqv-JA; Tue, 11 Oct 2022 14:07:27 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiFuk-004QmU-JD
	for linux-phy@lists.infradead.org; Tue, 11 Oct 2022 14:07:24 +0000
Received: by mail-lj1-x22f.google.com with SMTP id bn8so16976207ljb.6
        for <linux-phy@lists.infradead.org>; Tue, 11 Oct 2022 07:07:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4lMQAQ0osJVsDf4eu+zCeSxpXp3q9i6qM/ZobGYZDP0=;
        b=CMKuwegLP2IA7nFX8CQItOqmeovyC55ikLhG6vNewqBfyGpkLghiTw4Zpt2ZQzWKXk
         2ov0Gr9E1jePoUhXHcHg72SxmDcWwbTeZ5cu5G6bsHZZpmVhfmRRfqn+EhDjpAiASGsV
         LnRr8QgZrU0kdvaoeK+P8kdCrwMqaxDf5QO3FN2L7p4RxdKy0w6XPqEg0CnQr63iuDo+
         qasjXootYdCcXjYxyatIg/VhnDbpHmJNsfAMCyg+3/pc3GaHCkkzdLQdE56+zieuv2nm
         FAMBtBaJPEPGvXy3a0VrHwdzvrFwEktESgWDtgbHhMznOZrCRGReKoCNvmIG1ZTpVyHG
         GkrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4lMQAQ0osJVsDf4eu+zCeSxpXp3q9i6qM/ZobGYZDP0=;
        b=BDbd0HaLyUcYQZaJPc2pPYoanxGYSmGDCqHLUYwusrieSxa0EOZ6I9Qbtz55cgy/qk
         Isfg1ObQLiyH2BKy4PIBuGhgwuIGmvCM32owXjnOLzX0iRboruBlk9xoCLs8A5bgw1Qd
         9qMn81JSdkhpuk1+Sz37bWOpMixleAgp2+cpNU5pbgT17HQeMfqyMeRfpAtAXppt9H2E
         nuCGfN0Fie0gW/bGULI/xUf5t3W8tn4fwDPYeWGMJWTRu2cRcsfoES8TguixtMLe3j7q
         IiNMzTTLQ9xboP8PLZgeVPlOKY04KedOdYghlvBDfxwTJb/NqKYswHAFxSntDF1taIxm
         I9JA==
X-Gm-Message-State: ACrzQf31GUBXdqUZdCw2V00fipXp2LCv+dPQ/YnQaA31kSvDAG3k+KRd
	zZIYsq/OQFdOClxZzUfT2iMQwAp1rpM/2A==
X-Google-Smtp-Source: AMsMyM73osC13XrVnH4U0OrkJ1yeqkZxc8ODKwVb6djVqA3R/Dg/Nyb+bsUrwsVDf17kvXjOYK8CZQ==
X-Received: by 2002:a2e:9819:0:b0:26e:916f:c49f with SMTP id a25-20020a2e9819000000b0026e916fc49fmr5984631ljj.294.1665497237367;
        Tue, 11 Oct 2022 07:07:17 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id d16-20020a05651c089000b0026c5bc6ed1asm2071341ljq.69.2022.10.11.07.07.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Oct 2022 07:07:17 -0700 (PDT)
Message-ID: <ce6370f9-962c-905b-5188-a9b6ff9e2fd3@linaro.org>
Date: Tue, 11 Oct 2022 17:07:16 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 10/13] phy: qcom-qmp-combo: drop sc8280xp power-down delay
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221011131416.2478-1-johan+linaro@kernel.org>
 <20221011131416.2478-11-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221011131416.2478-11-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_070722_720354_3FF2BF6C 
X-CRM114-Status: GOOD (  13.79  )
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

On 11/10/2022 16:14, Johan Hovold wrote:
> The SC8280XP combo PHY does not need a delay before starting the USB PHY
> (which is what the has_pwrdn_delay config option really controls) so
> drop the unnecessary delay.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ----
>   1 file changed, 4 deletions(-)

Just an obvious question: 'does not need a delay' comes from your 
experience or from some vendor flag (in ACPI/DT/kernel/wherever)?

> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 84380852ba5b..a8e09333072e 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -1210,10 +1210,6 @@ static const struct qmp_phy_cfg sc8280xp_usb43dp_usb_cfg = {
>   	.start_ctrl		= SERDES_START | PCS_START,
>   	.pwrdn_ctrl		= SW_PWRDN,
>   	.phy_status		= PHYSTATUS,
> -
> -	.has_pwrdn_delay	= true,
> -	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
> -	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
>   };
>   
>   static const struct qmp_phy_cfg sc8280xp_usb43dp_dp_cfg = {

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
