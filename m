Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7025FC7EE25
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jun 2023 15:30:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kzdsxRykVL1KGt5EiBMf2PzarIri3+2Rqj62ZQ61mbE=; b=VQG+FZ8CXDhi/g
	jVxGX7KgTMVa/TeB72Z3aiXwxUfhEpSoq4ewo8kIk45DdqmR8XbvnjfAWm3dF2e6oCj3MClM8RavK
	dBqKGNqvx2P4Re5WkijbL1MlpGLv2qP3mlH9CC69sk/oQ53UfPzXV55tuAMnqvrapV8U5YNLQI4FP
	zhgwC4iCvGaoZTlf4YNA5Wt7ybF2LXjFHvekqw7wPRCTgu6bPgLdGjhsKOr3C1o6KNMSxqitwdpDI
	mTD0dIoI5gBm6PocmkuU3kdNz/DKijKrGQg1TPjBe7Lb2atMmRGGXbG9UmllYNuxeNoYj/2TmrJgp
	Sdt+tLDwTa8W6kRnbtvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7e4d-00DSAU-0H;
	Fri, 09 Jun 2023 15:30:47 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7e4Z-00DS8X-30
	for linux-phy@lists.infradead.org;
	Fri, 09 Jun 2023 15:30:45 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4f624daccd1so2384280e87.0
        for <linux-phy@lists.infradead.org>; Fri, 09 Jun 2023 08:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686324642; x=1688916642;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WFQfo69Pet1quymYmf84/Tz1pp0P+2CICEayY7olS2s=;
        b=dXAAzl90V9nBXqb3K1vecfZY/mOGJn1TdCAEVY97clI1D+oMhpSq0s6xW9NjV/wzT4
         qIIaQgqC4XUHgD6ppGH7dunIRF6Hs+idAejFcr48STlMmV0hqkO9lKmiW0ZWzQWHK8fb
         J2V3+3Fn9z/vhkSlzdtFkF7PYrZdOxw9JYqcWWxsLNqcf5ww92zR/YmPANwIBVehFY5A
         ZxbmXD1DWa/hpKBSlcKgqMCTT53BraiD2xWZljN/nUsIt39PyKtofiGWiAACOrKSCRep
         slCwKifjX8rJIlEtbfxV3JHVJAVnZ15YMHwgQ4kFLtLQF1kipOinliSH4hN8JmbDuYG3
         Tm9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686324642; x=1688916642;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WFQfo69Pet1quymYmf84/Tz1pp0P+2CICEayY7olS2s=;
        b=NRGW/V/0dDBn/kZjFEO2Kc4R7Nk2VIRvtADIDDqRFhb4gFDaKuEz7HxKzYxj3iwe1k
         +EI3idk/lHPaA75fnIMpmk20mkUDI7a8TT4ztzOoDEyL7hB+2pc1lvOP9RkxS2wL5JO1
         JoaHHdiIYTNaKanN+rb+a3YE9sSs6vfAH8egJcxrEIBHQ77v9frmaQ2ctTaMP7XcaMOT
         jAVKILm141m2F50CpnkNQzbpVVt2OTDutTFDgXkykrt7ryuB89KRYkJmHfrzfmgd6LTj
         pmar6nT5CZMn5U0lDHnEjqZkqm3TscZSkTpGJ6BqrO3PsK9TZoV5o1oKuBnBcRX/z/fq
         ImKA==
X-Gm-Message-State: AC+VfDyhQNNeiWnM2riAn5prej6BefDmm4BhZXTPdE2URKN4LK6wV1Uo
	/VYybkjuFM78BkGo+q6LotFePQ==
X-Google-Smtp-Source: ACHHUZ7o63ztL6atvK9kyaDt0u0b2tn7A3z+3nQqPBsgQf5PGAgMoDxfQuSVGlYYa3YrV4oq2WzzwQ==
X-Received: by 2002:a19:5f54:0:b0:4f3:89da:c374 with SMTP id a20-20020a195f54000000b004f389dac374mr1260977lfj.1.1686324642075;
        Fri, 09 Jun 2023 08:30:42 -0700 (PDT)
Received: from [192.168.1.101] (abyj190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id d9-20020ac244c9000000b004f6461ab366sm574434lfm.150.2023.06.09.08.30.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jun 2023 08:30:41 -0700 (PDT)
Message-ID: <bd964f69-107a-fbdd-40e4-92ab376b5b75@linaro.org>
Date: Fri, 9 Jun 2023 17:30:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v2 1/2] phy: qcom-snps-femto-v2: properly enable ref clock
Content-Language: en-US
To: Adrien Thierry <athierry@redhat.com>, Andrew Halaney <ahalaney@redhat.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Manu Gautam <mgautam@codeaurora.org>,
 Wesley Cheng <wcheng@codeaurora.org>, Philipp Zabel <pza@pengutronix.de>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
References: <20230605184455.34832-1-athierry@redhat.com>
 <20230605184455.34832-2-athierry@redhat.com>
 <fe51f704-3d24-d184-0251-39dc64a25598@linaro.org>
 <20230606135516.beujjl2oyvt6gaig@halaney-x13s> <ZH9EJfkeQN7c5KHU@fedora>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <ZH9EJfkeQN7c5KHU@fedora>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230609_083043_974846_305C01F9 
X-CRM114-Status: GOOD (  28.89  )
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



On 6.06.2023 16:35, Adrien Thierry wrote:
> Thanks for your feedback Konrad and Andrew!
> 
> On Tue, Jun 06, 2023 at 08:55:16AM -0500, Andrew Halaney wrote:
>> On Tue, Jun 06, 2023 at 01:14:00AM +0200, Konrad Dybcio wrote:
>>>
>>>
>>> On 5.06.2023 20:44, Adrien Thierry wrote:
>>>> The driver is not enabling the ref clock, which thus gets disabled by
>>>> the clk_disable_unused initcall. This leads to the dwc3 controller
>>>> failing to initialize if probed after clk_disable_unused is called, for
>>>> instance when the driver is built as a module.
>>>>
>>>> To fix this, switch to the clk_bulk API to handle both cfg_ahb and ref
>>>> clocks at the proper places.
>>>>
>>>> Note that the cfg_ahb clock is currently not used by any device tree
>>>> instantiation of the PHY. Work needs to be done separately to fix this.
>>>>
>>>> Link: https://lore.kernel.org/linux-arm-msm/ZEqvy+khHeTkC2hf@fedora/
>>>> Fixes: 51e8114f80d0 ("phy: qcom-snps: Add SNPS USB PHY driver for QCOM based SOCs")
>>>> Signed-off-by: Adrien Thierry <athierry@redhat.com>
>>>> ---
>>>>  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 67 ++++++++++++++-----
>>>>  1 file changed, 49 insertions(+), 18 deletions(-)
>>>>
>>>> diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
>>>> index 6c237f3cc66d..ce1d2f8b568a 100644
>>>> --- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
>>>> +++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
>>>> @@ -110,11 +110,13 @@ struct phy_override_seq {
>>>>  /**
>>>>   * struct qcom_snps_hsphy - snps hs phy attributes
>>>>   *
>>>> + * @dev: device structure
>>>> + *
>>>>   * @phy: generic phy
>>>>   * @base: iomapped memory space for snps hs phy
>>>>   *
>>>> - * @cfg_ahb_clk: AHB2PHY interface clock
>>>> - * @ref_clk: phy reference clock
>>>> + * @num_clks: number of clocks
>>>> + * @clks: array of clocks
>>>>   * @phy_reset: phy reset control
>>>>   * @vregs: regulator supplies bulk data
>>>>   * @phy_initialized: if PHY has been initialized correctly
>>>> @@ -122,11 +124,13 @@ struct phy_override_seq {
>>>>   * @update_seq_cfg: tuning parameters for phy init
>>>>   */
>>>>  struct qcom_snps_hsphy {
>>>> +	struct device *dev;
>>>> +
>>>>  	struct phy *phy;
>>>>  	void __iomem *base;
>>>>  
>>>> -	struct clk *cfg_ahb_clk;
>>>> -	struct clk *ref_clk;
>>>> +	int num_clks;
>>>> +	struct clk_bulk_data *clks;
>>>>  	struct reset_control *phy_reset;
>>>>  	struct regulator_bulk_data vregs[SNPS_HS_NUM_VREGS];
>>>>  
>>>> @@ -135,6 +139,32 @@ struct qcom_snps_hsphy {
>>>>  	struct phy_override_seq update_seq_cfg[NUM_HSPHY_TUNING_PARAMS];
>>>>  };
>>>>  
>>>> +static int qcom_snps_hsphy_clk_init(struct qcom_snps_hsphy *hsphy)
>>>> +{
>>>> +	struct device *dev = hsphy->dev;
>>>> +
>>>> +	hsphy->num_clks = 2;
>>>> +	hsphy->clks = devm_kcalloc(dev, hsphy->num_clks, sizeof(*hsphy->clks), GFP_KERNEL);
>>>> +	if (!hsphy->clks)
>>>> +		return -ENOMEM;
>>>> +
>>>> +	/*
>>>> +	 * HACK: For cfg_ahb clock, use devm_clk_get_optional() because currently no device
>>>> +	 * tree instantiation of the PHY is using the clock. This needs to be fixed in order
>>>> +	 * for this code to be able to use devm_clk_bulk_get().
>>>> +	 */
>>>> +	hsphy->clks[0].id = "cfg_ahb";
>>>> +	hsphy->clks[0].clk = devm_clk_get_optional(dev, "cfg_ahb");
>>> Hm, maybe you could first check if we can get this clock
>>> properly (!IS_ERR_OR_NULL) and then allocate the second
>>> slot..
>>>
>>
>> The bulk clk api handles NULL clks without issue if I am reading right,
>> so personally if we're going to use the bulk api I say we carry the extra
>> slot unconditionally. No expert on this stuff but that seems more
>> straightforward. Honestly I wouldn't mind using the bulk optional API,
>> then checking the "non optional ref clock" manually. That's closer to
>> the ideal flow to me. Super opinionated though, don't take my word as
>> right.
>>
> 
> Agree with Andrew. Since cfg_ahb is always NULL, I'm certainly "wasting"
> an array cell here but I think it also better highlights the fact that
> it's a hack and that cfg_ahb needs to be properly wired in the DTs. As for
> using the bulk optional API, I'm fine with both!
Hm right, let's keep it as-is so that the other clock which is
actually necessary never gets skipped accidentally..

Konrad
> 
>>>> +
>>>> +	hsphy->clks[1].id = "ref";
>>>> +	hsphy->clks[1].clk = devm_clk_get(dev, "ref");
>>>> +	if (IS_ERR(hsphy->clks[1].clk))
>>>> +		return dev_err_probe(dev, PTR_ERR(hsphy->clks[1].clk),
>>>> +				     "failed to get ref clk\n");
>>>> +
>>>> +	return 0;
>>>> +}
>>>> +
>>>>  static inline void qcom_snps_hsphy_write_mask(void __iomem *base, u32 offset,
>>>>  						u32 mask, u32 val)
>>>>  {
>>>> @@ -165,7 +195,7 @@ static int qcom_snps_hsphy_suspend(struct qcom_snps_hsphy *hsphy)
>>>>  					   0, USB2_AUTO_RESUME);
>>>>  	}
>>>>  
>>>> -	clk_disable_unprepare(hsphy->cfg_ahb_clk);
>>>> +	clk_bulk_disable_unprepare(hsphy->num_clks, hsphy->clks);
>>>>  	return 0;
>>>>  }
>>>>  
>>>> @@ -175,9 +205,9 @@ static int qcom_snps_hsphy_resume(struct qcom_snps_hsphy *hsphy)
>>>>  
>>>>  	dev_dbg(&hsphy->phy->dev, "Resume QCOM SNPS PHY, mode\n");
>>>>  
>>>> -	ret = clk_prepare_enable(hsphy->cfg_ahb_clk);
>>>> +	ret = clk_bulk_prepare_enable(hsphy->num_clks, hsphy->clks);
>>> Aren't you dereferencing NULL if the optional clock is absent?
>>>
>>
>> Similar to above, the bulk api seems to handle NULL clks gracefully.
>>
> 
> devm_clk_get_optional() will return NULL for cfg_ahb, but AFAIU NULL
> serves as a dummy clock [1] with which the clock API deals gracefully. The
> various functions like clk_prepare(), clk_enable() check if the clock is
> NULL and return 0 immediately if that's the case (see for instance [2]).
> 
> [1] https://elixir.bootlin.com/linux/v6.4-rc5/source/include/linux/clk.h#L514
> [2] https://elixir.bootlin.com/linux/v6.4-rc5/source/drivers/clk/clk.c#L1045
> 
> Best,
> Adrien
> 
>> Thanks,
>> Andrew
>>
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
