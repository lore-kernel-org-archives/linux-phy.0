Return-Path: <SRS0=Mo6n=LT=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,NICE_REPLY_A,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73BA3C2B9F4
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jun 2021 10:59:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4891F61425
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jun 2021 10:59:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4891F61425
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GmQsn8+kpcpV+1YuY1rusOr6nSB4zRnE4iuelBxmjG0=; b=mwV1NYCRJvV0Qyh0Bg4DvVE9bL
	Q7GEbHAWnNF8bw301S83H6p582whLHiMZeCyozrXjef3OrUpuMcdsbBJur/kZpo2ybyxsx4TDM6CD
	E+OPMAKjPkyWRl+uPNP2dv6R6uBUTAuu0csLMxbq18MmMqS8Cpx+8S1oZKYv/TMDX5EKuc2E0VqFz
	yIKTHW/7z+c7ED0c71xwIeBKNgPd23vEfADaUHV4y0mqr5mEKsYMI5LtZ4hXHAH9zbWbmmUfLuHb4
	IoPx4RF5/O1MJPpjBgz33zD6c5i0nCgztzl3RqL4egQz0Zvwj0xl6914fLHblV1USBEzVSB1APJpP
	NWrbAwyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwjYm-001Ac5-L3; Fri, 25 Jun 2021 10:59:44 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwjEY-001206-Fv
 for linux-phy@lists.infradead.org; Fri, 25 Jun 2021 10:38:52 +0000
Received: by mail-ej1-x636.google.com with SMTP id hc16so14240173ejc.12
 for <linux-phy@lists.infradead.org>; Fri, 25 Jun 2021 03:38:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=1/eMB3oQaBdiNnJ8Y7zIUo7wsM74vurfSXPEhMmhvYs=;
 b=S6gTqGkyCpj6tWjYvKcj2hxMaFjtOKlftr3pLPzXRS/qJMKpoizgtjxrHLuQxGyBBZ
 aT+hsLuIanjKqN3JJMjY+BCLS+82VHoQ6qRB1LVP6z+LNVcUa5pH3yZVEbtj8GJybIdD
 bS37wQRe8oGOis5ty6gaRv9w+PTZjBHOK3sYQdf7LcJceHoSPGFcPRTUXiBqK8HPK4VK
 8vWIbCcmtjkoSNn4ueDCqm2+ustdOXgQZOWKdh+TK6dcrjwPBkLDR5yb8A9phu8wBjr3
 dM27CY1v/c36Ucb7Ss/8dy/xYpQYRf8coz2svmF38P6cI4dBxGirXcxYelHzfCEXC7F8
 7nxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=1/eMB3oQaBdiNnJ8Y7zIUo7wsM74vurfSXPEhMmhvYs=;
 b=Z9mTHV95DC0bE5sT2lzAV2DbT05d2fkAV4VbObwUUMnLxfEe6loMsagzrpu+3YkqrU
 6Kb0CcdtrP1QQp3r6a+O9GccU2jLLoq862vOw5cXfS9XkNWJeN4vI3QvA8cecUl2NJDe
 6b5qPPLcD5GZQF1hdjZAq4oOVoGTYUW6rBIUalkpjBEHYhu1+h4YFtxZJRaGULxg6m3p
 IaxUttdV0GV0xz1hlilTwqI9vyreJgorDGx3WJyPvNc8rBhzbF5N3033XkUYQRm/o4LH
 wYJiV//ITCuHMdfyYDnq7DLs1Kd3X2pccnVplnWChWtIknvWz+v827LmM5sBgPTiuIA8
 +jFQ==
X-Gm-Message-State: AOAM532D0U7iYO/FgKeZ6VqI2ypu9ZMsnCJNT+2uBZYaJyf1Kg+OR64Y
 MOD3GIt6ZN/EgZWHJJQax7M=
X-Google-Smtp-Source: ABdhPJy3Xru8aPPdjqoS2npd604GtoiksX0HIHMgARWGwYa+NMWrAjYQPNV4yRdyiJty+RcEM1364Q==
X-Received: by 2002:a17:906:3a8e:: with SMTP id
 y14mr10204723ejd.153.1624617528371; 
 Fri, 25 Jun 2021 03:38:48 -0700 (PDT)
Received: from [192.168.74.106] (178-169-161-196.razgrad.ddns.bulsat.com.
 [178.169.161.196])
 by smtp.gmail.com with ESMTPSA id h24sm2492325ejf.20.2021.06.25.03.38.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Jun 2021 03:38:47 -0700 (PDT)
Subject: Re: [PATCH v1 3/3] phy: qcom-qusb2: Add configuration for SM4250 and
 SM6115
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Manu Gautam
 <mgautam@codeaurora.org>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20210622203240.559979-1-iskren.chernev@gmail.com>
 <20210622203240.559979-4-iskren.chernev@gmail.com> <YNKshSbsf5d5Uyew@yoga>
From: Iskren Chernev <iskren.chernev@gmail.com>
Message-ID: <d42b6bfd-4010-29d2-1701-41979e19d987@gmail.com>
Date: Fri, 25 Jun 2021 13:38:46 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YNKshSbsf5d5Uyew@yoga>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_033850_606207_8C7546E9 
X-CRM114-Status: GOOD (  19.20  )
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



On 6/23/21 6:37 AM, Bjorn Andersson wrote:
> On Tue 22 Jun 15:32 CDT 2021, Iskren Chernev wrote:
> 
>> The SM4250 and SM6115 uses the same register layout as MSM8996, but the
>> tune sequence is a bit different.
>>
> 
> Didn't review the initialization sequence, but it's different from the
> existing ones so adding a new compatible and init_tbl seems to be the
> right choice.

Here is the init sequence I'm using [1]

[1] https://github.com/OnePlusOSS/android_kernel_oneplus_sm4250/blob/oneplus/SM4250_Q_10.0/arch/arm64/boot/dts/vendor/20882/bengal-qrd.dtsi#L130

> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> 
> Regards,
> Bjorn
> 
>> Signed-off-by: Iskren Chernev <iskren.chernev@gmail.com>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-qusb2.c | 34 +++++++++++++++++++++++++++
>>  1 file changed, 34 insertions(+)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
>> index 8f1bf7e2186b..3c1d3b71c825 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
>> @@ -219,6 +219,22 @@ static const struct qusb2_phy_init_tbl msm8998_init_tbl[] = {
>>  	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_DIGITAL_TIMERS_TWO, 0x19),
>>  };
>>  
>> +static const struct qusb2_phy_init_tbl sm6115_init_tbl[] = {
>> +	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE1, 0xf8),
>> +	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE2, 0x53),
>> +	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE3, 0x81),
>> +	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE4, 0x17),
>> +
>> +	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_TUNE, 0x30),
>> +	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_USER_CTL1, 0x79),
>> +	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_USER_CTL2, 0x21),
>> +
>> +	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TEST2, 0x14),
>> +
>> +	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_AUTOPGM_CTL1, 0x9f),
>> +	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_PWR_CTRL, 0x00),
>> +};
>> +
>>  static const unsigned int qusb2_v2_regs_layout[] = {
>>  	[QUSB2PHY_PLL_CORE_INPUT_OVERRIDE] = 0xa8,
>>  	[QUSB2PHY_PLL_STATUS]		= 0x1a0,
>> @@ -342,6 +358,18 @@ static const struct qusb2_phy_cfg sdm660_phy_cfg = {
>>  	.autoresume_en	 = BIT(3),
>>  };
>>  
>> +static const struct qusb2_phy_cfg sm6115_phy_cfg = {
>> +	.tbl		= sm6115_init_tbl,
>> +	.tbl_num	= ARRAY_SIZE(sm6115_init_tbl),
>> +	.regs		= msm8996_regs_layout,
>> +
>> +	.has_pll_test	= true,
>> +	.se_clk_scheme_default = true,
>> +	.disable_ctrl	= (CLAMP_N_EN | FREEZIO_N | POWER_DOWN),
>> +	.mask_core_ready = PLL_LOCKED,
>> +	.autoresume_en	 = BIT(3),
>> +};
>> +
>>  static const char * const qusb2_phy_vreg_names[] = {
>>  	"vdda-pll", "vdda-phy-dpdm",
>>  };
>> @@ -888,6 +916,12 @@ static const struct of_device_id qusb2_phy_of_match_table[] = {
>>  	}, {
>>  		.compatible	= "qcom,sdm660-qusb2-phy",
>>  		.data		= &sdm660_phy_cfg,
>> +	}, {
>> +		.compatible	= "qcom,sm4250-qusb2-phy",
>> +		.data		= &sm6115_phy_cfg,
>> +	}, {
>> +		.compatible	= "qcom,sm6115-qusb2-phy",
>> +		.data		= &sm6115_phy_cfg,
>>  	}, {
>>  		/*
>>  		 * Deprecated. Only here to support legacy device
>> -- 
>> 2.31.1
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
