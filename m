Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56FC4C433FE
	for <linux-phy@archiver.kernel.org>; Sat, 11 Dec 2021 01:59:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EhgL3uPB52PLGW5vNPcCFhro3B/KdhNqW7AewrAFBAs=; b=X5SEnPrteuub/J
	G0OcSKfFnjwVgzDl7yWadBdjBsuD4wVKPNDUStjMSQlv6LDuuODFi4s2giGJ7biWbgWmgq3iexpqk
	Ma683mcXJb4IpzoNAv53DFz/6vbpQti/jRXISBDgh0pfKJIl4AYDJ11bHoDJI5YqnQCe4oOBsfgA9
	tWbKZZ+zAKHxpgDKUquHJcs9K75FqaJjb6v1sCwLNxT8dHpBvtiVgTDfsgP/uqiaRfGrqzds4RnZV
	z8azd82oACiKOi5VsHiGIW/BoQLjkoUoupjOeugd+xSn9iHRoX6v8X/HFh9Jke9Krdfktmccr+a9L
	JiLiyuHUNXQ8bLo193CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvrfL-004PcV-Gp; Sat, 11 Dec 2021 01:59:11 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvrfI-004Pbm-Rq
 for linux-phy@lists.infradead.org; Sat, 11 Dec 2021 01:59:10 +0000
Received: by mail-lf1-x12d.google.com with SMTP id b1so21043742lfs.13
 for <linux-phy@lists.infradead.org>; Fri, 10 Dec 2021 17:59:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=0ZLR7vdvYCSpPur+0nGzs/HpQNxbppV8SzSXDjS7TZA=;
 b=aMlfgGEWQpxRL5mkoGRUaha4Vu/NFuD7RIClX7UfoOOifE4qOJl2KPJsv7E7cUZaTt
 CsVERr7EEEbZDyxouYTUsCrXBXbalqRsTGXEWFQAnE1Jts9JzDzFFqjrz3qjx2hvAC9u
 kpfQ8as1fIbEphG87MSKgD0jnI0vOrelfjZnKOyY6R1TXqZ40UrhIAb8pZHQf/O49TI1
 W+h/igNfHS5Sttp6gXFHa99Aj1lj4hPv/Ce9GPuz0t6OWJfXMFNosbHakEAO1AuugEtt
 wfBxZquLQ9k+42ZtZcEnoH+MHj0zQzE7azYzNdINp8HUBWTggoUWCkU0Y0NHXnH7geEt
 N6lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=0ZLR7vdvYCSpPur+0nGzs/HpQNxbppV8SzSXDjS7TZA=;
 b=OlaNBqs9vgxVzpqBOsCtvyAHdSDySYTjyAZDZQdE09yxqXeRrtmgKy8KfRT0HLFSvW
 7fm2M42eCfOqoPt2EjYn9GDBPeDgtM729mVZ//oP/hWW0qvsMMPYCHlKkwq9S8Z1g8R0
 CmNT4oW2Ic5HKZvKFbWFrsevQFyRpEVkoAa9RA+mu9iJHY7f8DMQZRL/FVBmtitwpvpR
 +5tg6IB1bu3EyPmRysyNwksmXrC5cH3p3KlR7pvOzZmJ6qVUJlwSZtUjajPLukADWMPH
 Cm2XewafV/1qTATaHEUjgDn3xRfXA/lA7bWXKN1zAhsxnMeev38JTOP2rIvLa2Q5MxEG
 ZFyA==
X-Gm-Message-State: AOAM532UUIIEMGZPdh06mOKQVnaWxAA94Q/FvsHNvOsSncPUrlOO22LZ
 USqDn3KzZ7j+tbJx/NrQ304/2A==
X-Google-Smtp-Source: ABdhPJwbahn5Rygfwp6D6UwAqoaZPjC+jdM29U6SoSmT0hNJxUjniF/5/m0GNpcI5DD3S2rCrZrp4Q==
X-Received: by 2002:a05:6512:16a8:: with SMTP id
 bu40mr15383225lfb.483.1639187947136; 
 Fri, 10 Dec 2021 17:59:07 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id v14sm468376lfb.264.2021.12.10.17.59.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Dec 2021 17:59:06 -0800 (PST)
Message-ID: <95401925-6e97-8fce-4fe6-4701c4fad301@linaro.org>
Date: Sat, 11 Dec 2021 04:59:05 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH v2 05/10] PCI: qcom: Add ddrss_sf_tbu flag
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
 <20211208171442.1327689-6-dmitry.baryshkov@linaro.org>
 <20211210112241.GE1734@thinkpad>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20211210112241.GE1734@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211210_175908_966505_AD339590 
X-CRM114-Status: GOOD (  22.36  )
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

On 10/12/2021 14:22, Manivannan Sadhasivam wrote:
> On Wed, Dec 08, 2021 at 08:14:37PM +0300, Dmitry Baryshkov wrote:
>> Qualcomm PCIe driver uses compatible string to check if the ddrss_sf_tbu
>> clock should be used. Since sc7280 support has added flags, switch to
>> the new mechanism to check if this clock should be used.
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
>>   drivers/pci/controller/dwc/pcie-qcom.c | 5 ++++-
>>   1 file changed, 4 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
>> index 51a0475173fb..803d3ac18c56 100644
>> --- a/drivers/pci/controller/dwc/pcie-qcom.c
>> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
>> @@ -194,7 +194,9 @@ struct qcom_pcie_ops {
>>   
>>   struct qcom_pcie_cfg {
>>   	const struct qcom_pcie_ops *ops;
>> +	/* flags for ops 2.7.0 and 1.9.0 */
> 
> No need of this comment.

Dropping it

> 
>>   	unsigned int pipe_clk_need_muxing:1;
> 
> This should be added in the previous patch.

It exists already

> 
>> +	unsigned int has_ddrss_sf_tbu_clk:1;
> 
> Wondering if we could make both the flags "bool" as the values passed to it
> are of boolean type. I don't think we could save a significant amount of
> memory using bitfields.

I followed the existing pipe_clk_need_muxing. I have no strong 
preference here, so let's see what Bjorn will prefer.

> 
> Thanks,
> Mani
>>   };
>>   
>>   struct qcom_pcie {
>> @@ -1164,7 +1166,7 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
>>   	res->clks[3].id = "bus_slave";
>>   	res->clks[4].id = "slave_q2a";
>>   	res->clks[5].id = "tbu";
>> -	if (of_device_is_compatible(dev->of_node, "qcom,pcie-sm8250")) {
>> +	if (pcie->cfg->has_ddrss_sf_tbu_clk) {
>>   		res->clks[6].id = "ddrss_sf_tbu";
>>   		res->num_clks = 7;
>>   	} else {
>> @@ -1512,6 +1514,7 @@ static const struct qcom_pcie_cfg sdm845_cfg = {
>>   
>>   static const struct qcom_pcie_cfg sm8250_cfg = {
>>   	.ops = &ops_1_9_0,
>> +	.has_ddrss_sf_tbu_clk = true,
>>   };
>>   
>>   static const struct qcom_pcie_cfg sc7280_cfg = {
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
