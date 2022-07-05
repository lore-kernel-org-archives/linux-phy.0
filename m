Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C40F5C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 11:13:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cSIyVl5dfaWN9OheMfF8JEwSPow4kgBSC1JOx7qO4Ro=; b=YjAd+4JwyeP/Bl
	C50v15Z0I4w2apoPyitO9FP0x+NUD0JohqNnAXybV+1lf9Yjdw6ib7Akf/1l8wS3wEf4J1dmGpcc/
	niwQh6XPMDqsTkHAa6YajS/F9h6kRzklwrsdK+VMYombFhmXvimjlc5ZNdhX1be60H03cEhIHGPuS
	TTRE0GcHYl+3VpuxTtqHU8533oHKA+DwbE5wZCJlTjF39l0+syZRNVQUrX6p6iDhwoKIezvFMEYvr
	yjQw62Q/EPTotbbMTxw0QC2v7aejSiRNa2H7HxCxp0Dqb7xwS95FNCzzCqjK7v9aImoLlqkgfNeYz
	miRrbwzk7uaqSx6CjMNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8gUT-00HMoo-66; Tue, 05 Jul 2022 11:13:13 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8gUP-00HMlq-N5
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 11:13:11 +0000
Received: by mail-lf1-x134.google.com with SMTP id m18so1497592lfg.10
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 04:13:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=QrXr/J2hqDMZnPja47ouKqHCNCSXX62rUd+oU7fHrVE=;
        b=ld10z4BMu3SPYvQjMUNxI/WoH4qQDOu8NDQX6v9q5XyH/7AB+sYcA+jTTTxJvIxPiI
         QF8Wr3neT9klB20DKd39SUPyiH3Spa2LwHCcx4XJiufKAgoGjoMA+KzmupUDsIxhHZIZ
         vRFypw8UfeLP2N6t358u9zWZHma/AYAVwRtGZQ2tv1SPbswF1rjvDDC8PpgN0oP54ivF
         ILpkCMAolNQTLmh2d4aYdHcFtReaHrp1Jo484+ezkP7YhKMSZH3mJmrIRiYkvpgPLXj7
         qKuM5wrrNoFrM6uPYwmHwz/quiYx+4PTmWNFEazKfe0YNIAp8KYV7NZgJqUCI/tMyV+1
         2hbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=QrXr/J2hqDMZnPja47ouKqHCNCSXX62rUd+oU7fHrVE=;
        b=ms6PVCYnJ+6PdALe4SPnv/VAFeXQgRwlNXLuew3vAZrOOZotIQl6WLyJlpaox10Mu6
         vTW8blJorLQrFOfQ4wuDINsCih2GfCifo3dM3yimw8Ylg0yjvmhxy5zUBAfrrnkmlwSV
         eFcTtJtrDdPw4/KT1GkxQEsSW4H2iVIOI50Wg42xVFatLfOaeIRzWOYkYB3Ou8cCTOWB
         1WGkJJM0Yo7UuQvFz6nyqUqFZby3U9i8+MGTkrhuRVf0DSyofJp8fAf3Jsk6F2/gEYDM
         sdQeq3fBqgGrvQ/PIfsk8YiotzpzWFyql+3ewI6aF3UqE394guXY1APliLlONwuhBJGY
         bBIQ==
X-Gm-Message-State: AJIora+42l6wZmpOczsmIf5anfHUQZ5WIZ4StGrwptfllTL7tmKk7EVE
	GPSOy91EXfvJZeAJXBrIuo/Qww==
X-Google-Smtp-Source: AGRyM1sAdS98Ne78ejyP4qj9Qn0wMJLTsqJ4OfDUzVBDDJTlyAB/4I5+75jXeyJRkXEkT/FwOp6ysg==
X-Received: by 2002:a05:6512:12c7:b0:481:51ff:d027 with SMTP id p7-20020a05651212c700b0048151ffd027mr17914254lfg.577.1657019585986;
        Tue, 05 Jul 2022 04:13:05 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f13-20020a2eb5ad000000b0025aa51b069esm5368789ljn.5.2022.07.05.04.13.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 04:13:05 -0700 (PDT)
Message-ID: <76508b56-6733-b65c-d81c-31ac173780c0@linaro.org>
Date: Tue, 5 Jul 2022 14:13:04 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 38/43] phy: qcom-qmp-pcie: drop pipe clock lane suffix
Content-Language: en-GB
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-39-johan+linaro@kernel.org>
 <dcff330c-92ec-2302-8e2a-4ac124e72942@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <dcff330c-92ec-2302-8e2a-4ac124e72942@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_041309_824620_27F6A1B9 
X-CRM114-Status: GOOD (  14.59  )
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

On 05/07/2022 13:20, Krzysztof Kozlowski wrote:
> On 05/07/2022 11:42, Johan Hovold wrote:
>> The pipe clock is defined in the "lane" node so there's no need to keep
>> adding a redundant lane-number suffix to the clock name.
>>
>> Drop the lane suffix from the pipe clock name, but continue supporting
>> the legacy name as a fall back.
>>
>> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 8 ++++++--
>>   1 file changed, 6 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> index 385ea3d8de08..254ad25591b9 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> @@ -2210,8 +2210,12 @@ int qcom_qmp_phy_pcie_create(struct device *dev, struct device_node *np, int id,
>>   	if (!qphy->pcs_misc)
>>   		dev_vdbg(dev, "PHY pcs_misc-reg not used\n");
>>   
>> -	snprintf(prop_name, sizeof(prop_name), "pipe%d", id);
>> -	qphy->pipe_clk = devm_get_clk_from_child(dev, np, prop_name);
>> +	qphy->pipe_clk = devm_get_clk_from_child(dev, np, "pipe");
> 
> Just get first clock and no need for handling any deprecation.

If I got it correctly, passing NULL instead of the name would do the trick.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
