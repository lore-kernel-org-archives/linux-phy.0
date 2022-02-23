Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3683BC433EF
	for <linux-phy@archiver.kernel.org>; Wed, 23 Feb 2022 08:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TcF0nXA/qMw6D+9yzChclP/tt239x99rJuupnW3evQw=; b=2V/hHYY+TxuS6l
	TsCLTrLt0onotA6cOmZxkvhF125A3cVB9pTLNURAgItkWvTL3yiQ+bHZOZAG0yK7CrSbvscWMYrMJ
	kqk/j1IqHWKU9ERpNBO73HHLN+Kqgs3WuHpYq7oya/X2bUY+ulRBSER/3LKeRjuwF1MGe2S+BIXOC
	LmdCctTbJaZBjsdAPTiaQHKclNEEfxOWbr78waJPncCbJ/GTByIQbsQg/plbVxufteGw7qrv39j5z
	Z4C9ckH9VV3Yt+sOQA5Co/9VzlIh4RhzPIuIiwuYMgaBKc1OHmangg/kJh8Uktnbp0PylNmpeM71G
	spvZl/aQGlOe104fQ1oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMn9M-00DHnQ-MC; Wed, 23 Feb 2022 08:37:28 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMn9J-00DHmG-Is
 for linux-phy@lists.infradead.org; Wed, 23 Feb 2022 08:37:27 +0000
Received: by mail-lf1-x135.google.com with SMTP id b11so29673916lfb.12
 for <linux-phy@lists.infradead.org>; Wed, 23 Feb 2022 00:37:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=7aam5YfDTtzKqW+RU4i9t+Ff/OzNlL8RHjfqDGKPduU=;
 b=i2z5ptG4cEoiiyyMoFo9//TXkqK0UQ7tzZ/eETsasWmk42qM/8DUiI4M9IsVyszUV4
 ENh+EiDuqEDU6rcUQdL3CTEIPH+fZ5XUYrzqRfI2UnxbJrvjd2z4dMEiXT8YVQ2SYUa7
 wXgElGSt8UkfQER+UAv+P5KBi/pXrBejOAxO7LrKy08/UAxV7UIb2mDFTuOAnhB0khTz
 Ivk3hxKuQsDQczDsQR9BeXcGX0Om/A09q9HTbZhfMr0ru2Bl4sOFCRSmpN/WWk6plEZE
 szLM/mww/fqXoMtU1l79MXdA/QAMazeA3/XnxPjAW/GaALB5nkc+Aqcr4ZTo157mIn9L
 2CRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=7aam5YfDTtzKqW+RU4i9t+Ff/OzNlL8RHjfqDGKPduU=;
 b=x/n6Apd/6pp0A8ta3A7pJrVXMAK6bCdqxm6KJGtYo41+a4RzlLJwc2yngRL9BpiMfy
 oafw+dXljoB4ssmVPvdNSpXQIgAN7inBJqoYTdEQIR8qSaNK+bccXq5gia8ljBtR6Zs4
 sY3FbsKERwBeOphbqItdFRVVLtVKgtAxLI8b9L6yOdfzI/xrTwtWv1GUCBZwOrSKMPLd
 7sPKotHWJoEWyBb/1SXA7q8Ej+iB3CcCQ3PoWsDcx6vZO3JwJh8BPxHBF1Bc+j+6UbE2
 KfqH5bt/Shty3g43qvVop2VrRBudyFusRW88NyZMenxn6XijTfyK05Io8+G75j8O3CKE
 Irow==
X-Gm-Message-State: AOAM533wLYRNXCkUA7mq8YtrK0Ft0kUpcnyyCUZ/krJYuKDO34ZPZ/Ib
 v+KNqNtQ5iJPzM6GKfklnIfw/w==
X-Google-Smtp-Source: ABdhPJxjEWnUczmWx6GjeuXfax9jOKwSaN/bCTptwChsDhP7savmiuOXqX4YdJDYUzVzS9n7DZpN4g==
X-Received: by 2002:ac2:5389:0:b0:443:5b76:d59a with SMTP id
 g9-20020ac25389000000b004435b76d59amr20142839lfh.206.1645605442784; 
 Wed, 23 Feb 2022 00:37:22 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id n17sm1129516lfu.193.2022.02.23.00.37.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Feb 2022 00:37:22 -0800 (PST)
Message-ID: <08868773-1819-6bdb-355b-3ad61314977e@linaro.org>
Date: Wed, 23 Feb 2022 11:37:21 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH v5 4/5] PCI: qcom: Add interconnect support to 2.7.0/1.9.0
 ops
Content-Language: en-GB
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Krzysztof Wilczy??ski <kw@linux.com>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
References: <20211218141024.500952-1-dmitry.baryshkov@linaro.org>
 <20211218141024.500952-5-dmitry.baryshkov@linaro.org>
 <YhV2nemA+t0cCdlP@ripper>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <YhV2nemA+t0cCdlP@ripper>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220223_003725_673683_B15A6A49 
X-CRM114-Status: GOOD (  19.21  )
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

On 23/02/2022 02:49, Bjorn Andersson wrote:
> On Sat 18 Dec 06:10 PST 2021, Dmitry Baryshkov wrote:
> 
>> Add optional interconnect support for the 2.7.0/1.9.0 hosts. Set the
>> bandwidth according to the values from the downstream driver.
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
>>   drivers/pci/controller/dwc/pcie-qcom.c | 11 +++++++++++
>>   1 file changed, 11 insertions(+)
>>
>> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
>> index d8d400423a0a..55ac3caa6d7d 100644
>> --- a/drivers/pci/controller/dwc/pcie-qcom.c
>> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
>> @@ -12,6 +12,7 @@
>>   #include <linux/crc8.h>
>>   #include <linux/delay.h>
>>   #include <linux/gpio/consumer.h>
>> +#include <linux/interconnect.h>
>>   #include <linux/interrupt.h>
>>   #include <linux/io.h>
>>   #include <linux/iopoll.h>
>> @@ -167,6 +168,7 @@ struct qcom_pcie_resources_2_7_0 {
>>   	struct clk *pipe_clk_src;
>>   	struct clk *phy_pipe_clk;
>>   	struct clk *ref_clk_src;
>> +	struct icc_path *path;
> 
> I think it's fair to assume that pretty much all platforms will have a
> data path to reach the config registers and for the PCI to reach DDR.
> 
> So how about we place this in the common struct qcom_pcie instead?

Sounds logical. I'll think about it.

> 
> Regards,
> Bjorn
> 
>>   };
>>   
>>   union qcom_pcie_resources {
>> @@ -1121,6 +1123,10 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
>>   	if (IS_ERR(res->pci_reset))
>>   		return PTR_ERR(res->pci_reset);
>>   
>> +	res->path = devm_of_icc_get(dev, "pci");
>> +	if (IS_ERR(res->path))
>> +		return PTR_ERR(res->path);
>> +
>>   	res->supplies[0].supply = "vdda";
>>   	res->supplies[1].supply = "vddpe-3v3";
>>   	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(res->supplies),
>> @@ -1183,6 +1189,9 @@ static int qcom_pcie_init_2_7_0(struct qcom_pcie *pcie)
>>   	if (pcie->cfg->pipe_clk_need_muxing)
>>   		clk_set_parent(res->pipe_clk_src, res->phy_pipe_clk);
>>   
>> +	if (res->path)
>> +		icc_set_bw(res->path, 500, 800);
>> +
>>   	ret = clk_bulk_prepare_enable(res->num_clks, res->clks);
>>   	if (ret < 0)
>>   		goto err_disable_regulators;
>> @@ -1241,6 +1250,8 @@ static void qcom_pcie_deinit_2_7_0(struct qcom_pcie *pcie)
>>   	struct qcom_pcie_resources_2_7_0 *res = &pcie->res.v2_7_0;
>>   
>>   	clk_bulk_disable_unprepare(res->num_clks, res->clks);
>> +	if (res->path)
>> +		icc_set_bw(res->path, 0, 0);
>>   
>>   	/* Set TCXO as clock source for pcie_pipe_clk_src */
>>   	if (pcie->cfg->pipe_clk_need_muxing)
>> -- 
>> 2.34.1
>>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
