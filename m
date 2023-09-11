Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4625EE57DF
	for <linux-phy@archiver.kernel.org>; Mon, 11 Sep 2023 20:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BCQdnECXou2Qao/pJwdLeYi7mSA83t3UXjjohYkIM9E=; b=cQOTFuotij8How
	mMvYVNNUh06OUdhp0+PZb/vRS4B2JPyOfQXNsdwyNquhLMdtlhZs0p5iGkfuyBVEmb1nGjJm6v18a
	he9ew+nyz/sVS1Oab1S63+sEL4RGRLf/Vt9n3KultMIZZRhYOc2+pcWmlBCP4fzp3+WfvVfginEp8
	yUm8tXJlCSIRzKSKysONRJSLPgKs1t28GUZUA0IQ+201c7AnJ+UDTnA67tQi427YATOhGk/tV6VZq
	5gB+0lAhGzewUQ/cvyU9eniLwXdclMbxhwLcqCHkkiU2XDbiudBcLDfFXMgEdL6O0dFV9qaHwKGGQ
	hZZ82VFNibGNl6Q1vTmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfn8P-001FTa-19;
	Mon, 11 Sep 2023 20:03:49 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfn8M-001FSy-1A
	for linux-phy@lists.infradead.org;
	Mon, 11 Sep 2023 20:03:47 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2bf8b9c5ca0so25342631fa.0
        for <linux-phy@lists.infradead.org>; Mon, 11 Sep 2023 13:03:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694462621; x=1695067421; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=F+h6TLJO99t/Li4TO2YUvVsZsRG1ygNuhv9nSboCnM8=;
        b=gCDtI2a1w3Ak1cC7a8wkBMHPe+ijE96WBOuy7DXmOCp08re6E1iQmHNi7SwzrbaSE0
         GDzpltEGAWVQcGNl6v6tbKNkDbIJE76j0anuag7wEEYDx5BmzswzBfjr0bukaYxYbfHN
         MOnHWEs0rj7Kf9lv4FGuAf2K9Zk+OeGTIHlHAwQGBEHQt1qWqRz/+9Rqic8n8IeDc7Tu
         MkKTx5M4m15GA98DMDh6nRyknJpWjoGxaMpM8jY7M1vHPseWKhZIZUJbIi/woKkltMjQ
         1FkoNTU21kMiFnd+c9hWcizCKB9fdu1mKSnHbS3vlnahljdIcqDwrWpv16T1DwFxy8aN
         xMTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694462621; x=1695067421;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F+h6TLJO99t/Li4TO2YUvVsZsRG1ygNuhv9nSboCnM8=;
        b=JxVWBCg1q9p70c0L7aVlQjyk8ojc5G0o1WJlzuwAbHxBFqM3K4liIxJIhQ5jzXXJx4
         5bUHYBF0NZQQSubWSncKsoNNzh23yD3sLyrTzE2DL+h54UYKORgtJFQK/+RRlrP1IzPL
         2xuWDCYTBti+P3ZjUmrvAPv6zTOS0Xs+VNl0tQ1ogeRiA1iZM2eKrZ1dXFdT8rrbhZ/w
         Nnu10OIlD8WQMugWaVd9A3b949fwvUGEClrVkpC5xz4BSY7zZ7w5+M3lTm3sV6Z+jU8G
         CBuid9BWJChzopextaDPrp7hBkMzU7d3FROKqXNwq9y2j7Dg1wFVs8wvWyWKHGhqZXbI
         OD+Q==
X-Gm-Message-State: AOJu0Yxz2cm0zxXVIqG1LceGsqRtlXgGXEZbQV76Jr6HSHQ+2jd6nuG0
	jTi11Zpsys05AGTCnbUTmwEzsA==
X-Google-Smtp-Source: AGHT+IHwUw0pnu0YACshEBH069PVdxgeZOsOfd5v+RwgjVt3IoQJLBDix3NjHKioGsNPYaNW6dtZvQ==
X-Received: by 2002:a2e:8718:0:b0:2bc:c4af:36b7 with SMTP id m24-20020a2e8718000000b002bcc4af36b7mr8568924lji.39.1694462620924;
        Mon, 11 Sep 2023 13:03:40 -0700 (PDT)
Received: from [192.168.37.232] (178235177248.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.248])
        by smtp.gmail.com with ESMTPSA id o24-20020a1709062e9800b009a19701e7b5sm5793704eji.96.2023.09.11.13.03.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Sep 2023 13:03:40 -0700 (PDT)
Message-ID: <700a7a5f-3c38-4803-af44-0c5d0c230817@linaro.org>
Date: Mon, 11 Sep 2023 22:03:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] phy: qcom-qmp-combo: Square out 8550
 POWER_STATE_CONFIG1
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan+linaro@kernel.org>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20230829-topic-8550_usbphy-v2-0-a72f43311d19@linaro.org>
 <20230829-topic-8550_usbphy-v2-1-a72f43311d19@linaro.org>
 <CAA8EJppHVs18rhb3p7_LGrE02wD_tYzTbOMr46cAHV7imG+rDQ@mail.gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <CAA8EJppHVs18rhb3p7_LGrE02wD_tYzTbOMr46cAHV7imG+rDQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_130346_408225_30AC5B17 
X-CRM114-Status: GOOD (  14.20  )
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

On 11.09.2023 21:37, Dmitry Baryshkov wrote:
> On Mon, 11 Sept 2023 at 22:32, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>>
>> There are two instances of the POWER_STATE_CONFIG1 register: one in
>> the PCS space and another one in PCS_USB.
>>
>> The downstream init sequence pokes the latter one while we've been poking
>> the former one (and misnamed it as the latter one, impostor!). Fix that
>> up to avoid UB.
>>
>> Fixes: 49742e9edab3 ("phy: qcom-qmp-combo: Add support for SM8550")
>> Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c      | 2 +-
>>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h | 3 ++-
>>  2 files changed, 3 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>> index cbb28afce135..843099d314bf 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>> @@ -859,10 +859,10 @@ static const struct qmp_phy_init_tbl sm8550_usb3_pcs_tbl[] = {
>>         QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_PCS_TX_RX_CONFIG, 0x0c),
>>         QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_EQ_CONFIG1, 0x4b),
>>         QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_EQ_CONFIG5, 0x10),
>> -       QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_POWER_STATE_CONFIG1, 0x68),
>>  };
>>
>>  static const struct qmp_phy_init_tbl sm8550_usb3_pcs_usb_tbl[] = {
>> +       QMP_PHY_INIT_CFG(QPHY_USB_Q6_PCS_USB3_POWER_STATE_CONFIG1, 0x68),
> 
> And this is still _Q6_
Gah, I thought about compiletesting but pride got me..

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
