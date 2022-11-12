Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAF03C4332F
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 07:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UoWbAR4A9KSQp/2vfR8uVvqVPOjwYdgdF16nJs1vH1w=; b=xVHJ2O0hKwn9KB
	UEPUKKzHTv2GAIozv+A3YmsLFkumvSybuzBgAQJ7ZJ+gVLsiPVL/p+7Tp7tH1QD5I8MH8usssrwQI
	mBjzrgXVlPfc+Ttj9KZBB55qU5ET84S2xu15T2tuK0Vs2C34wozRF0qWwm/YRUZdSS8IkVC0t8fVh
	0z0dK+pL+tsoTdo/LlVnIXSTseG+CJmT+K51JDvpQaTR2zt2hdY2MJNc6zdfafBm9n49qHipfGIJS
	cN+NyLWSUuVmGCLWB4eXswIuEB6KtqB4wDhduQ6ka/le21zN1qMImBxpvztJOcdvnzqzsNg8/RWO9
	JkOMgTOk9Bi299XJBTLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otlJD-0046pk-4h; Sat, 12 Nov 2022 07:52:11 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otlJA-0046ls-3F
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 07:52:09 +0000
Received: by mail-lf1-x12f.google.com with SMTP id be13so11492358lfb.4
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 23:52:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lDQX/PjKkRG4x6Pkdzn6ObFIUuJQnbWONq3jUFUhLhE=;
        b=yCpjYZKAveVBN9///jLj1/M9776TpdzcK/O4D1N8JKjjaMFlLpHfIVKMDXukTnE9oW
         DWossp+MKzO/1db0Eq1vVvQhRXsqMjyyk5Rzf4dAwXTnG7VrhC0BRBthcuAaEpPBuDyU
         uBSlI5XtRchngQ0xBcJPzMb0Rd2gPwIkHBu7qcZLjbidPWcjMzayEBcObuTPfgE4Ipp/
         OdG9/l6ClIQqg36Gth5/50iVkDAYPZzj2awkpMN361q1DQvcYmx3wV0aNg/sJ+YnQyJE
         qZ+grcR7EsJGk6a09Vvdv7DRi5ROXo1CcEyzSeA+M2yXy2jfwqFCCsgHWYFSP4naZN6O
         B9Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lDQX/PjKkRG4x6Pkdzn6ObFIUuJQnbWONq3jUFUhLhE=;
        b=W64nViOJpRLYpLgwrxqqAtM/L9z4EJ+xt/upN16EM1SFwBmydnEBQW6N6GoWY7vOEe
         MiDkkreweDwzYfA6snRFHt1gOiJy7M6ACqTlJwDa0DoC9Q6s1YO9HRXQOpO46vAZowi0
         fwtlYroYRYCDTqrf85cfHY0KEzLXwfuRc1rlCyWnMU/Di1HO+ffjofLI3Cf2Wzq+aXl1
         cxIiQKqpZ1XTYJmTzenGjb9LxxKZVSb74FS5wKAhbkpqDwMwXXfWRv6HXirzqoMPIqCZ
         ZBEUVKUfZkYr4NNLhAXCTiGAdQFIFKMBuggA8C61O0ywF1pNLWpSd8d1fEvkfz+qPJPg
         UpEw==
X-Gm-Message-State: ANoB5pmaHJL8W8CSn9CNnKS9NRAGKRZzCqvFFJb/2kCiKWBex3wDf7ko
	dOtgMykByn0EO0e14s4nSjDRpQ==
X-Google-Smtp-Source: AA0mqf5owtBxZMBfsAnkOV666BH20Pfu/hTIUNJqkmqDRrHYUbraQDsTZPJEXRGziCjIrYTXwNZaKw==
X-Received: by 2002:a05:6512:370a:b0:4ac:52cf:559b with SMTP id z10-20020a056512370a00b004ac52cf559bmr1847901lfr.476.1668239526494;
        Fri, 11 Nov 2022 23:52:06 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id du11-20020a056512298b00b0049f9c732858sm742166lfb.254.2022.11.11.23.52.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 23:52:06 -0800 (PST)
Message-ID: <df8f21f6-4282-993b-fb17-b8bc94db887e@linaro.org>
Date: Sat, 12 Nov 2022 10:52:05 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 1/3] phy: qcom-qmp: drop unused type header
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221111094239.11547-1-johan+linaro@kernel.org>
 <20221111094239.11547-2-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111094239.11547-2-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_235208_250638_51FBF083 
X-CRM114-Status: UNSURE (   7.74  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 11/11/2022 12:42, Johan Hovold wrote:
> The PHY type defines are no longer used in the PCIe, UFS and USB QMP
> drivers so drop the corresponding include.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 2 --
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c         | 2 --
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c          | 2 --
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c          | 2 --
>   4 files changed, 8 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
