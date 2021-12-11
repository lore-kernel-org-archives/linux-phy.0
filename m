Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A502C433FE
	for <linux-phy@archiver.kernel.org>; Sat, 11 Dec 2021 01:56:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ibUtdPobjuDMGgKlBk2SIOthbZs76VbSgsG1+/KpgGw=; b=0xCvSYXXygrGm2
	W7liq7lmznbjhOg8HwtGgdYcpS/C/TcixyBPpi1Ljx5WJjRUS2MUZgER0LK1ndN+VYK3lfgOEpf2/
	/+H7KxXtX759KBGAxutYjuA/NAmSp5dTpVsM1HINKExGKjC7m/TIin5zwqcSXDcODacfJ9+ftJU7f
	FMNwKWcmeUn9Q3zOxOOoYputdlPxNZsXzV0W9YqWR2kRlmFDAev0j/jG8HpcPeGwU3jp2ky3ucgMP
	KFILlxs03CERlFoy5LO8UY0vrTsjvyCwI2YCtHXdlRxQOlXr00/pF2VOPO/d/jPJdTSsfbNaRBWEm
	tJ65iuTw7WnyUXRJ1FkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvrca-004P0t-2U; Sat, 11 Dec 2021 01:56:20 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvrcW-004Oz2-Pk
 for linux-phy@lists.infradead.org; Sat, 11 Dec 2021 01:56:18 +0000
Received: by mail-lf1-x129.google.com with SMTP id u3so21192212lfl.2
 for <linux-phy@lists.infradead.org>; Fri, 10 Dec 2021 17:56:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=WRjOyjdU++vZzJyPE3S61Z0gYV1Whs2PzLmzy5FdXJg=;
 b=ZaxWZeXWVTwZbvlqCJwFZBJhWZveUZlzT842tLSzv48iFtLKRg+b5D6Fx4LqAm48C3
 HoIyon/LG5uLTUy5oqKIIAGnyY8SjfMIbWdskSAR++WSgowWlPZoOQJbbfP6YyKEuH8w
 S9YM06aZhl6X29tp1tsovavbR/AVQQzXfcZgzisAHeFkoja0lY0ENlL3FGEwvAK0wN6J
 Wbr0ePqsSLNlzOSCiaZYBWpoQTTFHyXeWYO2Qk48i9n51NtC1gxyXZa9f20m+OF2Mkjv
 DbBdxtDeNBzJ2cdQFYZNUxFdRPzdq1HU/JtAgyL/Q8Tj0iMDKu6J+ekMM8n9rVAof+kC
 B+RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=WRjOyjdU++vZzJyPE3S61Z0gYV1Whs2PzLmzy5FdXJg=;
 b=u15MABUIzF0RO6cIcv8VJurY6+lQVXc98Tj9vFS9DiBl9RCKz0/VOm19wk2Fg0Cuoh
 AZARi7e0k3lONJxt+EYjbVgZUyjfoHwOgV8zWUXXd/pr5eSUaa6cVLbSlUA2wy3JKRwr
 GThubOicGz17FGIsTa3W/OQei5eI0iVobA0pzeKlmbHxWZmpqmLRsOXjCqK7CRPQLlx5
 ffsRx4PLZyCJBBc/n8QqD2rLk99YVvXqg+k20i6lyuDADDsfWv7F+U4oJdLA6qZGraQa
 /xRe6ywt3kOh7geIMhxT4LkilVKPIjnvJ2KKwabE1p7xGf1zQWZWwheH/a8gkHKYtoek
 LhVA==
X-Gm-Message-State: AOAM532KFBb9UG25RsQv3FOOiy0n6neRqfoU1jk6n4XXh8ScfABuFCQs
 dmUq0Jn6w+OcT5OiXruAsaTvnQ==
X-Google-Smtp-Source: ABdhPJwfOp7OXGZI/vDNdRclH1f+rwGeKRcQE06pGa3xs3MT1bopg4iV+Mc8Rg82dc6o1JLXLUTAHQ==
X-Received: by 2002:ac2:4281:: with SMTP id m1mr15222537lfh.168.1639187773888; 
 Fri, 10 Dec 2021 17:56:13 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id a21sm468867lfk.172.2021.12.10.17.56.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Dec 2021 17:56:13 -0800 (PST)
Message-ID: <14387e8c-c014-852d-c664-ad92d415a004@linaro.org>
Date: Sat, 11 Dec 2021 04:56:12 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH v2 04/10] PCI: qcom: Remove redundancy between qcom_pcie
 and qcom_pcie_cfg
Content-Language: en-GB
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?=
 <kw@linux.com>, linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
References: <20211208171442.1327689-1-dmitry.baryshkov@linaro.org>
 <20211208171442.1327689-5-dmitry.baryshkov@linaro.org>
 <20211210111541.GD1734@thinkpad>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20211210111541.GD1734@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211210_175616_963206_0A215722 
X-CRM114-Status: GOOD (  19.32  )
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

On 10/12/2021 14:15, Manivannan Sadhasivam wrote:
> On Wed, Dec 08, 2021 at 08:14:36PM +0300, Dmitry Baryshkov wrote:
>> In preparation to adding more flags to configuration data, use struct
>> qcom_pcie_cfg directly inside struct qcom_pcie, rather than duplicating
>> all its fields. This would save us from the boilerplate code that just
>> copies flags values from one sruct to another one.
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
>>   drivers/pci/controller/dwc/pcie-qcom.c | 39 +++++++++++---------------
>>   1 file changed, 17 insertions(+), 22 deletions(-)
>>
>> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
>> index 1c3d1116bb60..51a0475173fb 100644
>> --- a/drivers/pci/controller/dwc/pcie-qcom.c
>> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
>> @@ -204,8 +204,7 @@ struct qcom_pcie {
>>   	union qcom_pcie_resources res;
>>   	struct phy *phy;
>>   	struct gpio_desc *reset;
>> -	const struct qcom_pcie_ops *ops;
>> -	unsigned int pipe_clk_need_muxing:1;
>> +	const struct qcom_pcie_cfg *cfg;
> 
> There is no change in this patch that adds "pipe_clk_need_muxing" to
> qcom_pcie_cfg.

pipe_clk_need_muxing is already a part of the qcom_pcie_cfg structure.


> Thanks,
> Mani
> 
>>   };
>>   
>>   #define to_qcom_pcie(x)		dev_get_drvdata((x)->dev)
>> @@ -229,8 +228,8 @@ static int qcom_pcie_start_link(struct dw_pcie *pci)
>>   	struct qcom_pcie *pcie = to_qcom_pcie(pci);
>>   
>>   	/* Enable Link Training state machine */
>> -	if (pcie->ops->ltssm_enable)
>> -		pcie->ops->ltssm_enable(pcie);
>> +	if (pcie->cfg->ops->ltssm_enable)
>> +		pcie->cfg->ops->ltssm_enable(pcie);
>>   
>>   	return 0;
>>   }
>> @@ -1176,7 +1175,7 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
>>   	if (ret < 0)
>>   		return ret;
>>   
>> -	if (pcie->pipe_clk_need_muxing) {
>> +	if (pcie->cfg->pipe_clk_need_muxing) {
>>   		res->pipe_clk_src = devm_clk_get(dev, "pipe_mux");
>>   		if (IS_ERR(res->pipe_clk_src))
>>   			return PTR_ERR(res->pipe_clk_src);
>> @@ -1209,7 +1208,7 @@ static int qcom_pcie_init_2_7_0(struct qcom_pcie *pcie)
>>   	}
>>   
>>   	/* Set TCXO as clock source for pcie_pipe_clk_src */
>> -	if (pcie->pipe_clk_need_muxing)
>> +	if (pcie->cfg->pipe_clk_need_muxing)
>>   		clk_set_parent(res->pipe_clk_src, res->ref_clk_src);
>>   
>>   	ret = clk_bulk_prepare_enable(res->num_clks, res->clks);
>> @@ -1284,7 +1283,7 @@ static int qcom_pcie_post_init_2_7_0(struct qcom_pcie *pcie)
>>   	struct qcom_pcie_resources_2_7_0 *res = &pcie->res.v2_7_0;
>>   
>>   	/* Set pipe clock as clock source for pcie_pipe_clk_src */
>> -	if (pcie->pipe_clk_need_muxing)
>> +	if (pcie->cfg->pipe_clk_need_muxing)
>>   		clk_set_parent(res->pipe_clk_src, res->phy_pipe_clk);
>>   
>>   	return clk_prepare_enable(res->pipe_clk);
>> @@ -1384,7 +1383,7 @@ static int qcom_pcie_host_init(struct pcie_port *pp)
>>   
>>   	qcom_ep_reset_assert(pcie);
>>   
>> -	ret = pcie->ops->init(pcie);
>> +	ret = pcie->cfg->ops->init(pcie);
>>   	if (ret)
>>   		return ret;
>>   
>> @@ -1392,16 +1391,16 @@ static int qcom_pcie_host_init(struct pcie_port *pp)
>>   	if (ret)
>>   		goto err_deinit;
>>   
>> -	if (pcie->ops->post_init) {
>> -		ret = pcie->ops->post_init(pcie);
>> +	if (pcie->cfg->ops->post_init) {
>> +		ret = pcie->cfg->ops->post_init(pcie);
>>   		if (ret)
>>   			goto err_disable_phy;
>>   	}
>>   
>>   	qcom_ep_reset_deassert(pcie);
>>   
>> -	if (pcie->ops->config_sid) {
>> -		ret = pcie->ops->config_sid(pcie);
>> +	if (pcie->cfg->ops->config_sid) {
>> +		ret = pcie->cfg->ops->config_sid(pcie);
>>   		if (ret)
>>   			goto err;
>>   	}
>> @@ -1410,12 +1409,12 @@ static int qcom_pcie_host_init(struct pcie_port *pp)
>>   
>>   err:
>>   	qcom_ep_reset_assert(pcie);
>> -	if (pcie->ops->post_deinit)
>> -		pcie->ops->post_deinit(pcie);
>> +	if (pcie->cfg->ops->post_deinit)
>> +		pcie->cfg->ops->post_deinit(pcie);
>>   err_disable_phy:
>>   	phy_power_off(pcie->phy);
>>   err_deinit:
>> -	pcie->ops->deinit(pcie);
>> +	pcie->cfg->ops->deinit(pcie);
>>   
>>   	return ret;
>>   }
>> @@ -1531,7 +1530,6 @@ static int qcom_pcie_probe(struct platform_device *pdev)
>>   	struct pcie_port *pp;
>>   	struct dw_pcie *pci;
>>   	struct qcom_pcie *pcie;
>> -	const struct qcom_pcie_cfg *pcie_cfg;
>>   	int ret;
>>   
>>   	pcie = devm_kzalloc(dev, sizeof(*pcie), GFP_KERNEL);
>> @@ -1553,15 +1551,12 @@ static int qcom_pcie_probe(struct platform_device *pdev)
>>   
>>   	pcie->pci = pci;
>>   
>> -	pcie_cfg = of_device_get_match_data(dev);
>> -	if (!pcie_cfg || !pcie_cfg->ops) {
>> +	pcie->cfg = of_device_get_match_data(dev);
>> +	if (!pcie->cfg || !pcie->cfg->ops) {
>>   		dev_err(dev, "Invalid platform data\n");
>>   		return -EINVAL;
>>   	}
>>   
>> -	pcie->ops = pcie_cfg->ops;
>> -	pcie->pipe_clk_need_muxing = pcie_cfg->pipe_clk_need_muxing;
>> -
>>   	pcie->reset = devm_gpiod_get_optional(dev, "perst", GPIOD_OUT_HIGH);
>>   	if (IS_ERR(pcie->reset)) {
>>   		ret = PTR_ERR(pcie->reset);
>> @@ -1586,7 +1581,7 @@ static int qcom_pcie_probe(struct platform_device *pdev)
>>   		goto err_pm_runtime_put;
>>   	}
>>   
>> -	ret = pcie->ops->get_resources(pcie);
>> +	ret = pcie->cfg->ops->get_resources(pcie);
>>   	if (ret)
>>   		goto err_pm_runtime_put;
>>   
>> -- 
>> 2.33.0
>>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
