Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9124C3DA78
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jan 2023 14:08:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ob/6NgiPrurbyIi6ZPnEBsgXMT5Ld+Y2AxdUEHvtFQQ=; b=qJn2koUBXmhBhx
	r15bu1baHRWXiYzFKeAaT69jsX9ibJmXaBiKUVRlDFBKUUqErb1UbX2vWNUr1aNL6H8AbQocQC3Kl
	xfeUw21rPbq7DaJvQcTXzJIYcLacR5uIyoIc8elLhUGjmeIH3vOlPORwbqqrTIOaD4RgSY74t/8ee
	hfWpRhDaNLgHJFz0zmBCdeE7dWjf/mz4mTcOllL9Y/TmAE3KAA3qKRRLIgrnq/eFd0EzjPZzS4g5X
	lWzPzAzHy4QOl2n6WbXbqnpApVhmhc3JKeolOpKEAZKityhAXFE08Lk4kjKzsA/T+a+vz8Vo5ovMz
	vz1TX+jS8mtwEtU6rlSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHmdQ-00EYC4-9v; Tue, 17 Jan 2023 14:08:20 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHmdN-00EYAr-Pg
	for linux-phy@lists.infradead.org; Tue, 17 Jan 2023 14:08:19 +0000
Received: by mail-ej1-x62e.google.com with SMTP id kt14so16720153ejc.3
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 06:08:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=De6u1UvyX6YhqCP+Xo9NBJYu3A/WHFxyk7c1mfBpfwI=;
        b=BR2xWoVxLHBOqlQf2xX+a202b/tMWyI2WIjGmkzkb2rahkX/XJ/UiyufMZnYSJ1fBF
         bWzWmqEOv8gApH9pXaQJjVBcIayevVLaJoWAIm/CkbuUgAaA6Gct9DbMLHVi2qZA06yb
         m0IiYGL3bF5J1TEosHTwUZcpGng/vr8BN5sfyfsn21CkG3+0L0ekqHKkknMY1DAYOKQt
         LNVvdbbAq9T11O/IR26uldu75ms0RfBh5EG9v5LxHuzXJ7WuHFW5rXIag5VpTPNijF9H
         L8EwD8w3ZgLQ7aEzhlxx2bEQKeDCybkrZ51XmKK+v4gKJ2UNK5JpqrdSDM0Mhc/2pgUn
         /Z8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=De6u1UvyX6YhqCP+Xo9NBJYu3A/WHFxyk7c1mfBpfwI=;
        b=ciJOYbb7wola6pcwinNdq8aHevmJVChk7OH04pT4rCDI84WhxpYLPc56Q3yTHm7clY
         sLGtBbFPAEg5ytnhAqnNKlKlav4+2YU6SnBIM7iN6FipumGFOW1aBZ2Hq8yKs8zVugf6
         F9V1GPgGdtIHh1d/miZgYTZsz4ek78HHXB/Xn6uTCisGoMI2TSPHD8vn+UkfGDmpNiFE
         Tkl0G4mxTRGNuoqB3NzxBdj8XTmAa7M+gBLxXg904fbXbkXVfh5JB9APYuhB1Z+/IICX
         2fy4UNRContJ+kpdFZTQ9OUsze/95qQ77UI0es5foz6ZUDrUjnEcftMo5QkXF3PbW00X
         8GtQ==
X-Gm-Message-State: AFqh2koT+J2LLFZJQ5uBCznFMMm4N9Kv33YLJZl+vYDh4qm1v2ISZaBY
	hWZnDC/3Yg0nc18IAkF7ZqiYHQ==
X-Google-Smtp-Source: AMrXdXsbgX1cSg7xUsPkS449Qky/2rBADKXlUv3qauf7GcVRz0kPUYBDC9UYn7nEw2jfyc/E4iAClQ==
X-Received: by 2002:a17:907:c618:b0:868:b2b6:ee71 with SMTP id ud24-20020a170907c61800b00868b2b6ee71mr3187563ejc.6.1673964491671;
        Tue, 17 Jan 2023 06:08:11 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id y19-20020a1709060a9300b0084debc351b3sm9961860ejf.20.2023.01.17.06.08.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 06:08:11 -0800 (PST)
Message-ID: <f7ce2f70-9764-9be9-64fa-b60fc7e72cc8@linaro.org>
Date: Tue, 17 Jan 2023 16:08:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 07/10] phy: qualcomm: qmp-pcie: Add support for SM8550
 g3x2 and g4x2 PCIEs
Content-Language: en-GB
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, "vkoul@kernel.org"
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, Neil Armstrong <neil.armstrong@linaro.org>
References: <20221116120157.2706810-1-abel.vesa@linaro.org>
 <20221116120157.2706810-8-abel.vesa@linaro.org>
 <bbfba6ca-c410-b4aa-ba3c-2fbf55065b24@linaro.org>
 <Y8apUXpfAyaMMmH/@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Y8apUXpfAyaMMmH/@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_060817_873581_5BEC13BB 
X-CRM114-Status: GOOD (  24.22  )
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

On 17/01/2023 15:57, Abel Vesa wrote:
> On 23-01-01 22:15:55, Dmitry Baryshkov wrote:
>> On 16/11/2022 14:01, Abel Vesa wrote:
>>> Add the SM8550 both g4 and g3 configurations. In addition, there is a
>>> new "lane shared" table that needs to be configured for g4, along with
>>> the No-CSR list of resets.
>>>
>>> Co-developed-by: Neil Armstrong <neil.armstrong@linaro.org>
>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
>>> ---
>>>    drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 354 +++++++++++++++++++++++
>>>    1 file changed, 354 insertions(+)
>>>
>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>>> index 47cccc4b35b2..87c7c20dfc8d 100644
>>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>>
>> [skipped tables]
>>
>>> @@ -1473,6 +1701,8 @@ struct qmp_pcie_offsets {
>>>    struct qmp_phy_cfg_tbls {
>>>    	const struct qmp_phy_init_tbl *serdes;
>>>    	int serdes_num;
>>> +	const struct qmp_phy_init_tbl *ln_shrd_serdes;
>>> +	int ln_shrd_serdes_num;
>>>    	const struct qmp_phy_init_tbl *tx;
>>>    	int tx_num;
>>>    	const struct qmp_phy_init_tbl *rx;
>>> @@ -1510,6 +1740,9 @@ struct qmp_phy_cfg {
>>>    	/* resets to be requested */
>>>    	const char * const *reset_list;
>>>    	int num_resets;
>>> +	/* no CSR resets to be requested */
>>> +	const char * const *nocsr_reset_list;
>>> +	int num_nocsr_resets;
>>
>> Is there any difference between 'no CSR' resets and the plain ones? Can we
>> handle them in a single array instead?
> 
> Yes, on power on, only the 'No CSR' are necessary to be deasserted.
> 
> So we need to differentiate between 'No CSR' and the rest.

Ack.

> 
>>
>>>    	/* regulators to be requested */
>>>    	const char * const *vreg_list;
>>>    	int num_vregs;

[skipped]

>>> @@ -2502,6 +2847,9 @@ static int qmp_pcie_parse_dt_legacy(struct qmp_pcie *qmp, struct device_node *np
>>>    			return PTR_ERR(qmp->rx2);
>>>    		qmp->pcs_misc = devm_of_iomap(dev, np, 5, NULL);
>>> +
>>> +		if (cfg->has_ln_shrd_serdes_tbl)
>>> +			qmp->ln_shrd_serdes = devm_of_iomap(dev, np, 6, NULL);
>>
>> I think we also need to check the returned value. Also, I think we can drop
>> the conditional check here. we don't have to validate the DT, so if the reg
>> is present in DT, then it's present. If not, it's not required.
> 
> Yeah, but I was trying to make sure that if there is a new type of reg
> for some upcomming SoC, we don't take that as ln_shrd. That's why the check
> was added.
> 
> I'll add the returned value check though.

This is the parse_dt_legacy() function. I think we can leave it as is 
and support sm8550 only using the new style of parsing.

> 
>>
>>>    	} else {
>>>    		qmp->pcs_misc = devm_of_iomap(dev, np, 3, NULL);
>>>    	}
>>> @@ -2729,6 +3077,12 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
>>>    	}, {
>>>    		.compatible = "qcom,sm8450-qmp-gen4x2-pcie-phy",
>>>    		.data = &sm8450_qmp_gen4x2_pciephy_cfg,
>>> +	}, {
>>> +		.compatible = "qcom,sm8550-qmp-gen3x2-pcie-phy",
>>> +		.data = &sm8550_qmp_gen3x2_pciephy_cfg,
>>> +	}, {
>>> +		.compatible = "qcom,sm8550-qmp-gen4x2-pcie-phy",
>>> +		.data = &sm8550_qmp_gen4x2_pciephy_cfg,
>>>    	},
>>>    	{ },
>>>    };
>>
>> -- 
>> With best wishes
>> Dmitry
>>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
