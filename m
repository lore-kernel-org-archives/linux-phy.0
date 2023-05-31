Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B8E1C77B7A
	for <linux-phy@archiver.kernel.org>; Wed, 31 May 2023 12:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l1gHjSoD87192EPEpio8519P2VHxLZFnbw3FGZediB0=; b=qomUHuYY1da6RJ
	6OMaCkYu5SWymHNq7hmNEofi/qmuK538a+IT5TT0CNyWDCjFwb2OVBgVoC5YsP1DQQnxi+8CkUzIS
	K2fGFeNQVX5pivOHdbCaGtKCs4LDS5o4lVpQMJdYuROHgIxS22GcBLNUzl2Cra0amlDZFDy1hR2Bx
	GVJoybOmpu6T6M6frbQLPE5DDnKuwxtD4MFlosZgUB1Q3TrgRnPVWwtkCPlgljpo8EnGOIu7q7A56
	igqEH0ARNT7MSQHGNWYrCIh2wCoZ6E9RP1qVxPVdXp5rVczGQSjqP2E5pEWj/mfFuPuy+sEuvgLfA
	oDVpb8AebrP9krrFDbuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4Kkz-00HL8T-0Y;
	Wed, 31 May 2023 12:16:49 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4Kkw-00HL7w-12
	for linux-phy@lists.infradead.org;
	Wed, 31 May 2023 12:16:47 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4f3b9c88af8so6802909e87.2
        for <linux-phy@lists.infradead.org>; Wed, 31 May 2023 05:16:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685535404; x=1688127404;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hT8OWO/UkE0kJ6wTvhFLdugI0TrRyYIKyUCIvnylcuU=;
        b=FKhQ6M9DAU6XKeD3PQo9JSksHN0bjlsBy/f+P3kjxo2TXQMCaJabZjg+J24b+SLPO7
         IZMtOjgb+qwiMnLq+sP3pEph4cylsweJ1hfzp9eYzhbov2MIybYEFWthvdO5sUhJy7fe
         p6QhnTUMOm5gw0BiqYJfm6Y51MdD5+I3/a2fkNQxGcKnv+mv8pTJYsNFMOEQWy6AXDbN
         i3TncdeE2QZQadJLmwse+/WchATfZHYEMBR2192bczqZ6ZHr3WWNsR+ExuTVjpiboP+b
         smliWY7Z3IFs1C22Ko2fGLJGLYX9ULaTmmFihgYDXQ7D2E/q/5Hp4N9MEhygX8oqWSrX
         o+1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685535404; x=1688127404;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hT8OWO/UkE0kJ6wTvhFLdugI0TrRyYIKyUCIvnylcuU=;
        b=aP1bLBvF5FaJMzROpbG2bdl6HpHtMaUcXo8JGt3+pP8MzvzRLYOsxzoNFzZR/Vz4H9
         +o1s9CnKgJ4LXrPHlEfbX2A2LQ0I3iMmo7nvyguH4rvdJYsEomMCnhaDeTpXaaUSdj5v
         5U2lGNZI8gLTLEynPWttPko3wNaI0m+V6N17vNOC/R6P64ixCesFbzfVvLon1gB3q7o9
         pQOIKFVEkC9acvOQjwwpkA/Hvor9BN/vczW9XAraEiQzHDrIU3vMKK3KRtmuNlEHP3Ol
         PnJf/E4yrn5km34qUIkuSHbUWKcoBiizgo9t4LlPU3HiOdjzYn1vFa/5BfEFM+QBptuD
         kBIw==
X-Gm-Message-State: AC+VfDxK5urvmZR89JhAfgnFOWoDnS/1Q9D3U82DKDNwfJcCmzjxqU4Y
	WLbs9nQdDCI4gNDun35UgutxWA==
X-Google-Smtp-Source: ACHHUZ7cGiELVkb8DvCdytKB2IjLOgZ/B+AsDkxpI50GWOxdoI5c7ghiS9/UMkPHu+sEIgIio40VTA==
X-Received: by 2002:ac2:4c02:0:b0:4f3:a9d4:45f0 with SMTP id t2-20020ac24c02000000b004f3a9d445f0mr3046529lfq.17.1685535404440;
        Wed, 31 May 2023 05:16:44 -0700 (PDT)
Received: from [192.168.1.101] (abyj77.neoplus.adsl.tpnet.pl. [83.9.29.77])
        by smtp.gmail.com with ESMTPSA id g7-20020a19ee07000000b004f517c21ef4sm336041lfb.44.2023.05.31.05.16.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 May 2023 05:16:44 -0700 (PDT)
Message-ID: <10388324-45c7-b8ae-fb48-64becff76e66@linaro.org>
Date: Wed, 31 May 2023 14:16:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v3 2/5] phy: qcom-qmp-combo: add support for the USB+DP
 PHY on SM8150 platform
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20230531023415.1209301-1-dmitry.baryshkov@linaro.org>
 <20230531023415.1209301-3-dmitry.baryshkov@linaro.org>
 <47e84a3c-b457-7aff-ad6a-809178c08b62@linaro.org>
 <CAA8EJprDPzTQU1j6n17gYAeiXw1t6M_d4CciTtD8mHNksYGHow@mail.gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <CAA8EJprDPzTQU1j6n17gYAeiXw1t6M_d4CciTtD8mHNksYGHow@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_051646_367872_D60155CC 
X-CRM114-Status: GOOD (  18.74  )
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



On 31.05.2023 14:13, Dmitry Baryshkov wrote:
> On Wed, 31 May 2023 at 14:35, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>> On 31.05.2023 04:34, Dmitry Baryshkov wrote:
>>> SM8150 and SC8180X are close relatives. Reuse sc8180x data to support
>>> USB+DP combo PHY on SM8150 platform.
>>>
>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>> ---
>> I'm not sure this is right. Downstream reuses SA8195 USB seq.
> 
> The upstream driver uses sm8150 data for sc8180x. So even if sc8180x
> data is not correct for sc8180x, it is definitely the one that we
> should use for sm8150:
Right sorry, this patch adds support for 81*5*0. I wanted to point out
that 8180 has a different set of init commands and one of them is probably
incorrect.

Konrad
> 
> static const struct qmp_phy_cfg sc8180x_usb3dpphy_cfg = {
>         .serdes_tbl             = sm8150_usb3_serdes_tbl,
>         .serdes_tbl_num         = ARRAY_SIZE(sm8150_usb3_serdes_tbl),
>         .tx_tbl                 = sm8150_usb3_tx_tbl,
>         .tx_tbl_num             = ARRAY_SIZE(sm8150_usb3_tx_tbl),
>         .rx_tbl                 = sm8150_usb3_rx_tbl,
>         .rx_tbl_num             = ARRAY_SIZE(sm8150_usb3_rx_tbl),
>         .pcs_tbl                = sm8150_usb3_pcs_tbl,
>         .pcs_tbl_num            = ARRAY_SIZE(sm8150_usb3_pcs_tbl),
>         .pcs_usb_tbl            = sm8150_usb3_pcs_usb_tbl,
>         .pcs_usb_tbl_num        = ARRAY_SIZE(sm8150_usb3_pcs_usb_tbl),
> 
>         .dp_serdes_tbl          = qmp_v4_dp_serdes_tbl,
>         .dp_serdes_tbl_num      = ARRAY_SIZE(qmp_v4_dp_serdes_tbl),
>         .dp_tx_tbl              = qmp_v4_dp_tx_tbl,
>         .dp_tx_tbl_num          = ARRAY_SIZE(qmp_v4_dp_tx_tbl),
> 
> 
> 
>>
>> Konrad
>>>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ++++
>>>  1 file changed, 4 insertions(+)
>>>
>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>>> index 33cc99d9c77d..2bff1bbb8610 100644
>>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>>> @@ -3614,6 +3614,10 @@ static const struct of_device_id qmp_combo_of_match_table[] = {
>>>               .compatible = "qcom,sm6350-qmp-usb3-dp-phy",
>>>               .data = &sm6350_usb3dpphy_cfg,
>>>       },
>>> +     {
>>> +             .compatible = "qcom,sm8150-qmp-usb3-dp-phy",
>>> +             .data = &sc8180x_usb3dpphy_cfg,
>>> +     },
>>>       {
>>>               .compatible = "qcom,sm8250-qmp-usb3-dp-phy",
>>>               .data = &sm8250_usb3dpphy_cfg,
> 
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
