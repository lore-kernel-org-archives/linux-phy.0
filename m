Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06E45CA0EC3
	for <linux-phy@archiver.kernel.org>; Tue, 12 Sep 2023 11:48:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CV1PeZ/dPSXg/OLH7HFnV8dQNqf7sfLbWV5DnhvjGxU=; b=Np5uM+07lPJoiU
	nWdLS8g8t5iYD80md5FP7PdykvtgFtXmr/msyjuXn5HwsNMvUI3SeSLKwycyAgm6bgwOOMQ1KyWC0
	pblExUGYNDlvxLcfCme5E3boYxciCMuhXYnz8Ol5XHIfdXVaOFqmM+jqtp0k+MFuLVcupiDoX5gwJ
	VSKX9ELPKlmA9ISOnVm5J70vmOSynyJIr3spVnxKlvFwKhlEyfqYkJiKAQu2aGowYYzsdaut9J2Tt
	6mMSujufYnb9g9hF+yRnn56gO3mqLjYK12vexenpiyL1ACq1GQzXvc58sJufMn6hkrTDzd/5gWhhp
	Nwi3yGkhn8nE5LZp54Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qg1sv-003Fdy-2G;
	Tue, 12 Sep 2023 11:48:49 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qg1sr-003Fc4-1L
	for linux-phy@lists.infradead.org;
	Tue, 12 Sep 2023 11:48:47 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-500b66f8b27so9542458e87.3
        for <linux-phy@lists.infradead.org>; Tue, 12 Sep 2023 04:48:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694519321; x=1695124121; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f5xi+W9wNttXDsAffskUe3yb7VMYVEpG0K45ei+urrQ=;
        b=QrY9DBP8YPKknmhGqTHQ+JJdJhxR3uAAgwsC3hVtUWktnn1Iszg6Y84Hf49nxhw8s5
         OMeiQewXn1LQy41g7DHrB7DnBVXekcqzuemXSjnm7/sg0x0Tr7FbkladDIaJBIE6/do5
         RVw3gjjzSnBfms2WMjrqFw6BGrp5rMnYvb1mz5W/04QHfWYHN6IPmbE62RgbcBrm69Z1
         CYjnuOefDIyU1VO8aG86XgHBXAKp1ozBq7MOfPaqfIqRxQ2sG4+XMyetFWV7umb9n1pB
         Ys52KDsTLTpwAo0s6okkLjokP2c3YoadCCd8VPJW446EimgNP+enesqRGi6rZiXTh8QC
         FvTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694519321; x=1695124121;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f5xi+W9wNttXDsAffskUe3yb7VMYVEpG0K45ei+urrQ=;
        b=QF0QSRSoPIk80jrminW0QPjMN6ePNHfREceJkRcL48/wHT8GR2ewkQF20uQDJtMj5N
         5HaO3OarmEaRd1EwLDZpoSwDlCh36E5klon+MQ9Txl2X3Ss3el7APRHTkV4ADIgzm68X
         4gvNpyhskRQ0Byh1hYeN43ki7oI5+7adCfk8L4szQ/19UNRnY5CbDamXfz6/bcFPOn/i
         cAfHEksQJNtoZBLsA0SdI/9adSPF5uXIPFHCRRTX9T2ahAckwbY7TAWxmn6OFfn4Lt3O
         pqgulz57UyE0UcEpEL3wjmak3zU4nmT1IgyM3EeteeaUWZtCUx9R8HSZNhpLh9XQsgvd
         7pjw==
X-Gm-Message-State: AOJu0YyAS3Ft9jEJ1gV+uGUJpQIXyhua8F2Bgg4ZBYopZ1Q1FA0WTfDr
	KnUTzNX4PPutNvYVGoGAKNJaAsN+9qJn6cW2wsCetA==
X-Google-Smtp-Source: AGHT+IH3WSEIOeopsmU9pzLml+mVZUSW5VFsA80Qjmig2wBWbc8T5X6+2EPoYGdhq36CiL7GvcjVAg==
X-Received: by 2002:a05:6512:3b86:b0:500:bc14:3e06 with SMTP id g6-20020a0565123b8600b00500bc143e06mr11816978lfv.44.1694519321641;
        Tue, 12 Sep 2023 04:48:41 -0700 (PDT)
Received: from [192.168.37.232] (178235177248.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.248])
        by smtp.gmail.com with ESMTPSA id l15-20020aa7d94f000000b0052338f5b2a4sm5814539eds.86.2023.09.12.04.48.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Sep 2023 04:48:41 -0700 (PDT)
Message-ID: <675063b7-cac5-4b08-9853-84d7ce16a09e@linaro.org>
Date: Tue, 12 Sep 2023 13:48:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qualcomm: Fix typos in comments
Content-Language: en-US
To: Bo Liu <liubo03@inspur.com>, agross@kernel.org, andersson@kernel.org,
 vkoul@kernel.org, kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20230912114646.8452-1-liubo03@inspur.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20230912114646.8452-1-liubo03@inspur.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230912_044845_486937_94301C1B 
X-CRM114-Status: UNSURE (   5.78  )
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

On 12.09.2023 13:46, Bo Liu wrote:
> Fix typo in the description of the 'succesfully'.
> 
> Signed-off-by: Bo Liu <liubo03@inspur.com>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
