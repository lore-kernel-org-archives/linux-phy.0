Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4793E7849A
	for <linux-phy@archiver.kernel.org>; Mon,  2 Oct 2023 09:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aiM5T3DKNeScK6QW+kyoJD46jAvkGfdB9VoqhzatgRw=; b=24Yy3OMfR3EISS
	cEXuVoFJ9F71sMbP8+W7+mahyACICORaSeQffHHSvADI5Tvbg7BGosbf5aAP35zO8/7m+XWZiiLdf
	eCSqLbUrTk+5IJcMB8C2i+rsjOfYSuWEEauY/fVeStvwPVULE9Dr8Ms9268bACmfSkPwZTIJRyhCB
	XhCh6W/OuUweS15pbhopkt+bRQaR3rL/q2VCPS4Hi04+8lsMrZmftBuqtOpI6WL+BJjdBbl1EjDYC
	LEbyBl/0lsNvNkODJWLbbR9+oVa+8l7rMU/MoPoNd4D4oJCvDroTkxwvKh3mgUH5+Rli/br1vN4GW
	PUr0U56GhplA+uNm6/mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnFaH-00CGjd-1D;
	Mon, 02 Oct 2023 09:51:25 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnFaE-00CGjH-2F
	for linux-phy@lists.infradead.org;
	Mon, 02 Oct 2023 09:51:24 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2c135cf2459so239694291fa.0
        for <linux-phy@lists.infradead.org>; Mon, 02 Oct 2023 02:51:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696240279; x=1696845079; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JLs1VktsLlk8jSlnRreaZgQ/QeUwdA55Dkd4Kqx1630=;
        b=xAH8KD45XTuf04R/Yl86qGn2K2Y15dUvStfW3F2MbzTSiHI2ei6TbDV/HpqfUXxFNq
         h3qS5MZV2v/ebjaZrF4w1yAr0YOkZ1Rv48bGrU7/mfhHJEy81DX4UTkcGBWJeeZt/s9W
         AH38bugsPwyj/ijpiIvZa0DKdfasqQhhQ1aFtOXN0uwdpyRfVr4zDivAmwnO1wtFYzWv
         DfVwtNaTk2L9s/bUV61f3P8Ra6ukOh8PspQ2etlFO1EVrzZWDFYrRJ8X0Hdw5N9bWDgr
         J8tzzC2XbwDq5mxhZP3hUhi6TWUCTYDnq0Nb0obLepNw7OtYTlhblOYkXGt7qyKVAKwQ
         1IuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696240279; x=1696845079;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JLs1VktsLlk8jSlnRreaZgQ/QeUwdA55Dkd4Kqx1630=;
        b=qM4963SKbcM0JuLDyGgKSQMv93TARb/0UnzKWa+cStZtqNDLIl49SpBZJtxFDzPPht
         y5slNXkC0eu84drhP/xGUDvgLGJ3oFJJ9Q1FMgs158jS5g8x416nZMQniS42j5kEUGJA
         WaUlpfmkV2hx1/6ZkZOZ4QmOaceKIZgT75FrWPzIO6m1crb6FDE8mMCG7xo31Lau9TgA
         o7JvSc8qgcxLTnY2QGIUp6SvggyXuEBYir3bwqF6PqCC+bgbQgq5frx/tN8vDt6EJ90C
         GiBtWmTxcXij0CHvJ0qWmubWIwx9NOP+ByShB8aPHUwHgaBS5hC0ZQOEMblE1tJArNtq
         MHaA==
X-Gm-Message-State: AOJu0Yz2Mx6Ayq3vj8e89K6AQeuxJ7K+7Q+eNs8LGQbmV1uwLEkC/bSH
	nt7CPFUfycIOWrriy7h1zznc8g==
X-Google-Smtp-Source: AGHT+IFOVOzVdjRKpbSkAlo6qh4MyGHDzKp2cGIoMm270v1GTGrFuVJwWEg8an2N9lHrz99nrbSpnw==
X-Received: by 2002:a05:6512:23a4:b0:500:c765:bbe with SMTP id c36-20020a05651223a400b00500c7650bbemr11447285lfv.0.1696240279333;
        Mon, 02 Oct 2023 02:51:19 -0700 (PDT)
Received: from [172.30.204.164] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id a16-20020a056512021000b0050315aa36fbsm4685416lfo.282.2023.10.02.02.51.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Oct 2023 02:51:18 -0700 (PDT)
Message-ID: <5f3c8a66-aba3-cef0-8df9-f897487f1098@linaro.org>
Date: Mon, 2 Oct 2023 11:51:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 4/5] phy: qcom: edp: Introduce support for DisplayPort
Content-Language: en-US
To: Johan Hovold <johan@kernel.org>,
 Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, quic_jesszhan@quicinc.com
References: <20220810040745.3582985-1-bjorn.andersson@linaro.org>
 <20220810040745.3582985-5-bjorn.andersson@linaro.org>
 <ZRqIHSetajQf7Um1@hovoldconsulting.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <ZRqIHSetajQf7Um1@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231002_025122_736334_C1BCE74D 
X-CRM114-Status: GOOD (  20.32  )
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



On 10/2/23 11:06, Johan Hovold wrote:
> On Tue, Aug 09, 2022 at 09:07:44PM -0700, Bjorn Andersson wrote:
>> The eDP phy can be used to drive either eDP or DP output, with some
>> minor variations in some of the configuration and seemingly a need for
>> implementing swing and pre_emphasis calibration.
>>
>> Introduce a config object, indicating if the phy is operating in eDP or
>> DP mode and swing/pre-emphasis calibration to support this.
>>
>> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-edp.c | 80 +++++++++++++++++++++++++++--
>>   1 file changed, 76 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
>> index 32614fb838b5..301ac422d2fe 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
>> @@ -70,8 +70,19 @@
>>   
>>   #define TXn_TRAN_DRVR_EMP_EN                    0x0078
>>   
>> +struct qcom_edp_cfg {
>> +	bool is_dp;
>> +
>> +	/* DP PHY swing and pre_emphasis tables */
>> +	const u8 (*swing_hbr_rbr)[4][4];
>> +	const u8 (*swing_hbr3_hbr2)[4][4];
>> +	const u8 (*pre_emphasis_hbr_rbr)[4][4];
>> +	const u8 (*pre_emphasis_hbr3_hbr2)[4][4];
>> +};
>   
>>   static int qcom_edp_configure_ssc(const struct qcom_edp *edp)
>> @@ -315,7 +381,9 @@ static int qcom_edp_set_vco_div(const struct qcom_edp *edp)
>>   static int qcom_edp_phy_power_on(struct phy *phy)
>>   {
>>   	const struct qcom_edp *edp = phy_get_drvdata(phy);
>> +	const struct qcom_edp_cfg *cfg = edp->cfg;
>>   	u32 bias0_en, drvr0_en, bias1_en, drvr1_en;
>> +	u8 ldo_config;
>>   	int timeout;
>>   	int ret;
>>   	u32 val;
>> @@ -332,8 +400,11 @@ static int qcom_edp_phy_power_on(struct phy *phy)
>>   	if (timeout)
>>   		return timeout;
>>   
>> -	writel(0x01, edp->tx0 + TXn_LDO_CONFIG);
>> -	writel(0x01, edp->tx1 + TXn_LDO_CONFIG);
>> +
>> +	ldo_config = (cfg && cfg->is_dp) ? 0x1 : 0x0;
>> +
>> +	writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
>> +	writel(ldo_config, edp->tx1 + TXn_LDO_CONFIG);
> 
> When reviewing a patch from Konrad which will start using the eDP
> configuration on the X13s, I noticed that this patch inverted these bits
> for older SoCs (e.g. sc7280 and sc8180xp). They used to be set to 1,
> but after this patch they will be set to 0.
> 
> Was that intentional even if it was never mentioned in the commit
> message? Or was it a mistake that should be fixed?
+Abhinav, Jessica

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
