Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE499C43217
	for <linux-phy@archiver.kernel.org>; Wed, 16 Nov 2022 16:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NlL6ZvHfQwi1DsyG39SW0jDdrwHylykI6bs5a6eW804=; b=rX7NC9GtX4Bmd4
	iPDFdEdypEAq4hOTBOh1I2SsO9hMmWG1sPwE89SlE+lktzEpszdRBJ5SXLtaNzXqhdx7ucTEBNNZ2
	f0+pyoooKIHhtAkTSQ2cKKvw0w0MRPsWgVkQsAtrNLvK2xBAK8aKcajlHobq63RZn+L66JmkgYdzl
	DNB1/hsio0Fc6Jqs53Pq1APOPYnXFeauUaXW+8uIY5PQho5S5qMZfNnzL1sVtxzWZp/Bg/EPkqr3Y
	/LuR0SoUyZJJlLwgShCYBVja2FHMHB/v2wCHIL2jNJw3FTvJmSvGOVtEXcGS2EtSc4dnO1oHqN57K
	a1Zf99spgV6Jk4jf0w4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovLJP-005sZw-2e; Wed, 16 Nov 2022 16:30:55 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovKEh-0059ah-C4
	for linux-phy@lists.infradead.org; Wed, 16 Nov 2022 15:22:01 +0000
Received: by mail-lj1-x22a.google.com with SMTP id u11so22168623ljk.6
        for <linux-phy@lists.infradead.org>; Wed, 16 Nov 2022 07:21:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4hyX3SOmdhZkf4G5iVnyyDhT1r2OXQYrZj5d/iATSVs=;
        b=soelfGRwwyZEyt+ov+wYiQU4I/2pIW1PXpqo77jn/XCKLaXW+e0aKxMNUegxuZBRpx
         wbgZsOWiO1LyDn3UUzAA74lCnWLkqaaGYre1CP07CERjnZUdlILnl4MMCvfGcYxWYbZL
         merR+yr+5T7bWK7gbsJxGuQna1Rb5oMbgru8ObPHC2ESFqE0MYb2Qish7SMaJhRu2Mpf
         ERWLixTO+f4+YlHt1qnkkaX8QrxCYoe8PpdObt5mqWrsmDSPBu4P2y5iUbPyqEEndoBC
         VuuvPC9DvXNVNIAto+ki+O/YNsVdSeak7xxYzYKjn20TWNh0X9FB1YcOTAhANkrJGw2H
         2oog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4hyX3SOmdhZkf4G5iVnyyDhT1r2OXQYrZj5d/iATSVs=;
        b=WIk9uoQQYLrGAHslZP88hyEiX1lwmm8375Lbj7/GSfBlq8Une2z3LFG/z9OSxWpzY2
         g7Dztlqx1J7/R7CSzEto63rDMoyGF/dBZv88a9/1uyDWOWMsImfS5KAKlDzAl0pRL7y6
         R8qVYM/AuT8byVctCcSW8p1XcVOAGYKkclPScTNuIbaHN1n4dSG1nMtKiugqIBeuZTFd
         Qo3dmxEJdiuizEeF29e2Wz5iXExU8DfwbvxHfF9pXtSjBEs3vOKPYaUPdKCkMHzFnbBL
         VRdaA1pCkbFQdBQpf0FSG+20hqueIA3rok0g1NBSvPS+p3Xfu+YIJ51gDlcMxo6J18Mw
         xIHw==
X-Gm-Message-State: ANoB5pmYjfx7b9RdIL0Z/MBeU/aQE9sUfIliJDdBTp/GLbzYlFcBWfcs
	1E5ct99B5gzn+3lnWkkXh0FU0g==
X-Google-Smtp-Source: AA0mqf7eBPZsx75iWgNI31G3IMkd8p9EZfm72Rcb0mEbFlHRRLNmGoT1rQD7Cips6s1u1sAjJjOIrg==
X-Received: by 2002:a05:651c:98c:b0:277:81ff:b8c4 with SMTP id b12-20020a05651c098c00b0027781ffb8c4mr7428478ljq.260.1668612115113;
        Wed, 16 Nov 2022 07:21:55 -0800 (PST)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id k11-20020a05651210cb00b004a1e592837esm2649900lfg.140.2022.11.16.07.21.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Nov 2022 07:21:54 -0800 (PST)
Message-ID: <a839e03c-33d5-59ba-8623-cbafccc8b0b8@linaro.org>
Date: Wed, 16 Nov 2022 18:21:54 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v7 2/4] phy: qcom-qmp-ufs: provide symbol clocks
Content-Language: en-GB
To: Johan Hovold <johan@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20221110151748.795767-1-dmitry.baryshkov@linaro.org>
 <20221110151748.795767-3-dmitry.baryshkov@linaro.org>
 <Y3T+rj1hACqSBrC4@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Y3T+rj1hACqSBrC4@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_072159_485580_1BB20539 
X-CRM114-Status: GOOD (  24.35  )
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

On 16/11/2022 18:15, Johan Hovold wrote:
> On Thu, Nov 10, 2022 at 06:17:46PM +0300, Dmitry Baryshkov wrote:
>> Register three UFS symbol clocks (ufs_rx_symbol_0_clk_src,
>> ufs_rx_symbol_1_clk_src ufs_tx_symbol_0_clk_src). Register OF clock
>> provider to let other devices link these clocks through the DT.
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
> 
> I was not CCed on this revision of this series either.
> 
>>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 64 +++++++++++++++++++++++++
>>   1 file changed, 64 insertions(+)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>> index 189103d1bd18..78d7daf34667 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>> @@ -1023,6 +1023,66 @@ static int qmp_ufs_clk_init(struct qmp_ufs *qmp)
>>   	return devm_clk_bulk_get(dev, num, qmp->clks);
>>   }
>>   
>> +static void phy_clk_release_provider(void *res)
>> +{
>> +	of_clk_del_provider(res);
>> +}
>> +
>> +#define UFS_SYMBOL_CLOCKS 3
>> +
>> +static int phy_symbols_clk_register(struct qmp_ufs *qmp, struct device_node *np)
> 
> Since you're adding a new function, please use the common prefix and
> reordering the terms and dropping the redundant "symbols" should make it
> more readable:
> 
> 	qmp_ufs_register_clocks()
> 
>> +{
>> +	struct clk_hw_onecell_data *clk_data;
>> +	struct clk_hw *hw;
>> +	char name[64];
>> +	int ret;
>> +
>> +	clk_data = devm_kzalloc(qmp->dev,
>> +				struct_size(clk_data, hws, UFS_SYMBOL_CLOCKS),
>> +				GFP_KERNEL);
>> +	if (!clk_data)
>> +		return -ENOMEM;
>> +
>> +	clk_data->num = UFS_SYMBOL_CLOCKS;
>> +
>> +	snprintf(name, sizeof(name), "%s::rx_symbol_0", dev_name(qmp->dev));
>> +	hw = devm_clk_hw_register_fixed_rate(qmp->dev, name, NULL, 0, 0);
>> +	if (IS_ERR(hw))
>> +		return PTR_ERR(hw);
>> +
>> +	clk_data->hws[0] = hw;
>> +
>> +	snprintf(name, sizeof(name), "%s::rx_symbol_1", dev_name(qmp->dev));
>> +	hw = devm_clk_hw_register_fixed_rate(qmp->dev, name, NULL, 0, 0);
>> +	if (IS_ERR(hw))
>> +		return PTR_ERR(hw);
>> +
>> +	clk_data->hws[1] = hw;
>> +
>> +	snprintf(name, sizeof(name), "%s::tx_symbol_0", dev_name(qmp->dev));
>> +	hw = devm_clk_hw_register_fixed_rate(qmp->dev, name, NULL, 0, 0);
>> +	if (IS_ERR(hw))
>> +		return PTR_ERR(hw);
>> +
>> +	clk_data->hws[2] = hw;
>> +
>> +	ret = of_clk_add_hw_provider(np, of_clk_hw_onecell_get, clk_data);
>> +	if (ret)
>> +		return ret;
>> +
>> +	/*
>> +	 * Roll a devm action because the clock provider is the child node, but
>> +	 * the child node is not actually a device.
>> +	 */
> 
> I know you just copied this from one of the other drivers, but perhaps
> rephrase as "can be a child node". You can just drop the second clause
> (no node *is* a device).

Ack, thanks for the suggestion.

> 
>> +	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
>> +}
>> +
>> +static const struct phy_ops qcom_qmp_ufs_ops = {
>> +	.power_on	= qmp_ufs_enable,
>> +	.power_off	= qmp_ufs_disable,
>> +	.owner		= THIS_MODULE,
>> +};
> 
> As I've already pointed out once, the above phy_ops struct hunk does not
> belong in this patch and is just some left over after you rebased on
> phy-next that must be removed.

Oops. I'll fix this during the next respin.

> 
>>   static int qmp_ufs_parse_dt_legacy(struct qmp_ufs *qmp, struct device_node *np)
>>   {
>>   	struct platform_device *pdev = to_platform_device(qmp->dev);
>> @@ -1135,6 +1195,10 @@ static int qmp_ufs_probe(struct platform_device *pdev)
>>   	if (ret)
>>   		goto err_node_put;
>>   
>> +	ret = phy_symbols_clk_register(qmp, np);
>> +	if (ret)
>> +		goto err_node_put;
>> +
>>   	qmp->phy = devm_phy_create(dev, np, &qcom_qmp_ufs_phy_ops);
>>   	if (IS_ERR(qmp->phy)) {
>>   		ret = PTR_ERR(qmp->phy);
> 
> Johan

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
