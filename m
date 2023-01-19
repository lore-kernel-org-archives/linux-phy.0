Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04EA7C00A5A
	for <linux-phy@archiver.kernel.org>; Thu, 19 Jan 2023 13:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QksbJ+KV/W9/VQlWj2A/Kew3WarFoc6McV+14b9ZCns=; b=V1AJCJ4a6Dq4vP
	8N8ebuA6CijcoHbA9rQMWG1sMZ4Lca7qCqH23hKch7SXQ2LW2nL1ft+VKj9F8I/82TfxQz+CiCFtB
	2uIz9yZlesica+NQ+i/ZUxma4Mnw2yoPKbxbkEg2noxBu9SSix8HaKb26D985nGYMNsrdk/NMUaQS
	5AJ4DKPtQXtEvUk6SYe2X7d8PNRp9llIGlNvwGtJH1NB73bK9ulwqrPGMNj8J1a52BJMSgpRgDMnQ
	AHHuYQ5R5S9yAQjQxbP9W9DpihHLuhcUQIU/xPJZgCki5yEfiVJEIv8xTMuN2duI8g4rV3ypZ/qyw
	WfCoQhSHCvi8QK6giJvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIUkG-00527E-Uq; Thu, 19 Jan 2023 13:14:20 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIUdI-004zHX-7g
	for linux-phy@lists.infradead.org; Thu, 19 Jan 2023 13:07:12 +0000
Received: by mail-ed1-x52c.google.com with SMTP id s3so2784931edd.4
        for <linux-phy@lists.infradead.org>; Thu, 19 Jan 2023 05:07:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EXODrPsAw+WxnGMS9ryh6u+wd5DwP7P3JwcF8GuVJm0=;
        b=L807A/l2Noy+D3jGMrMFebZrU4oXQEMFtkrog97/fPeOcgCba7MrctXgvN0uLveygF
         3HWFy4CqHQB9JA5o8/pwpEpckUwUQj9CoUFCl0PW/qRcFw4p3SSM5kXJ5ezeI2SRgGj5
         R28LH/thHBCYtmQKfSvEOxpx72jkU/qRvOnWLylUgGEFOmSNn6d1RoHxNWqO5hSk2dEq
         zjHrbsVLthzarGnZHcG3kwQ+UIXgwJolTA91+2vnRm1//alHK1RM2rqwXE4zkGARDuiL
         rQkRySKAeF8DKirTwNBZXiwS95eRurYoKHu9oXMPuudwXbiX1IpkAogcAGeQ5VY46t+w
         8DUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EXODrPsAw+WxnGMS9ryh6u+wd5DwP7P3JwcF8GuVJm0=;
        b=15XGG0gYDw3u3A6jfC5XrzdmauBh8mUyMBmsg0lA/+Y+nrlz4EhbeE9TZGnxv/LJp8
         6X6RwPc6T5dmuVCnCMu39Hf+UnF0+nSRQu0u+bf3c+7FDt95IlFgGGJr9OeGp/RxZTvN
         Tq7bHU8sYL0eqmSup2OSxRoslrtI9uU4UAMGAOecLajYCTrM93pYXHydWFlwjaZ8C5oi
         nqybU65sEiNbcRT0m8WqcSAUCdADk8Wk2j7UGEkRz7e/8T91REfUqYtm8/yIrK+37aH2
         8tSIvqSUz/Goh5Kk0aexer3D/lPdir4W5eeCxv4Ep8wS8rSrjKfmkZeV4rQm/t2CT8s3
         P2og==
X-Gm-Message-State: AFqh2kpL4PfRw/UmxqYV+66YI+57pBjdwRRm5ESpiOKpld8sxmvTLNly
	pW6O0iGpdTNA1VCTLSF8L4ggyQ==
X-Google-Smtp-Source: AMrXdXuCspeStoCPA/c7cDkJ87Z65zeI5mX53jM6IpeoCJAMXRN9bIUD9BN5sBY7JZ12Rnm7f309QA==
X-Received: by 2002:aa7:cac2:0:b0:497:948b:e8 with SMTP id l2-20020aa7cac2000000b00497948b00e8mr9756962edt.6.1674133623023;
        Thu, 19 Jan 2023 05:07:03 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id x22-20020aa7dad6000000b0048789661fa2sm15554559eds.66.2023.01.19.05.07.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Jan 2023 05:07:02 -0800 (PST)
Message-ID: <5c4c6ee7-e202-716b-a3ac-04d7620b8c58@linaro.org>
Date: Thu, 19 Jan 2023 15:07:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 8/8] phy: qcom-qmp-pcie: Add support for SM8550 g3x2
 and g4x2 PCIEs
Content-Language: en-GB
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, "vkoul@kernel.org"
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Johan Hovold <johan@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
References: <20230118005328.2378792-1-abel.vesa@linaro.org>
 <20230118005328.2378792-9-abel.vesa@linaro.org>
 <7fe0c49e-a628-8e76-8294-ab8faadb3a70@linaro.org>
 <Y8iCAPOyrYXd7e/3@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Y8iCAPOyrYXd7e/3@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230119_050708_335260_26D1F30A 
X-CRM114-Status: GOOD (  13.61  )
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

On 19/01/2023 01:34, Abel Vesa wrote:
> On 23-01-18 06:34:41, Dmitry Baryshkov wrote:
>> On 18/01/2023 02:53, Abel Vesa wrote:
>>> Add the SM8550 both g4 and g3 configurations. In addition, there is a
>>> new "lane shared" table that needs to be configured for g4, along with
>>> the No-CSR list of resets.
>>>
>>> Co-developed-by: Neil Armstrong <neil.armstrong@linaro.org>
>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
>>> ---
>>>    drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 369 +++++++++++++++++++++++
>>>    1 file changed, 369 insertions(+)
>>>
>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>>> index bffb9e138715..6f82604bd430 100644
>>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>>> @@ -1506,6 +1506,234 @@ static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_ep_pcs_misc_tbl[] =
>>>    	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_OSC_DTCT_MODE2_CONFIG5, 0x08),
>>>    };
>>
>> I see that the last two patches still use 'shrd' a lot. Does this correspond
>> to hw register names or is it just a vendor kernel code convention?
> 
> It corresponds to the hw register names..

Ack, then:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> 
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
