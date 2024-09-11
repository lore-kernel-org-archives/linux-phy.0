Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EC17EE0217
	for <linux-phy@archiver.kernel.org>; Wed, 11 Sep 2024 08:24:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hNCtji6B1m+ydLrQIz1w2SD6djGY1cEmb14DvN81Jgo=; b=cVWM0lib+udI1H
	D1vwnr0eUx0Z/7QnUqT1q7qzEqNf0LXiFgU+TMPqJCWd2r7k/CeDmBVkdquOaU3WEEi7P7vLI/7hD
	AHaStD2hq4G67IweYLQYFG7rjFb7w2Cu4VdacaNjR9iBFxwH81eT2qE7nkXJiuux9xmAv6xUb7sKv
	o14WnHmoxz6WkfTrP561OU0AhYcGuoM+x4eow2vZ2ZbCoejeP4v7r7vk54pwNmgHkvOZdX7+nhnrd
	188ugQd//7+gZRL5ZK0XR2FIBR/C5mQxl7GRHM20oluMjbcykXfSrC2+zqY7/gTYW60BY/xZfYKmR
	VUCS5ME7IjsDz5iHMURg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIe2-00000008d5F-2UPE;
	Wed, 11 Sep 2024 08:24:10 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIY1-00000008bLR-3LRB
	for linux-phy@lists.infradead.org;
	Wed, 11 Sep 2024 08:18:00 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48B3bYgc026723;
	Wed, 11 Sep 2024 08:17:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xtFklBpz11AJvrufQKKYnZ86yF9hL02EOkaQvIZNkDI=; b=MzT0ZbnhVh/LK44U
	OfZDGJj9x6cEO/YPwqOV+4NT/0FqXKKp5Neq3jVRdE/mxpZWFCUr8JeF43APYN4I
	URDv9hZ+dMGlKedGgzB4GZsvvlv+xFTowBqdugryjQ5uJmyQ/aW7K6RhbTatf/WH
	6ho+L13takL+YwucGQhifc02DKec2urp01n0UixHWd/aOFQDwZH1xKRT74RsUXPt
	UdhxFXAG0E9njTUDQz77TZwM9NlRuEgtTnxGQwFg/oX+M0HQs0Jd5e02DiaSj5Ny
	Lek9DB6gFqb8jsO49TGVprAtDIHknccXv/i30n362lr91OWxBsYDKyOvGV4N+9FT
	vYY2Yg==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41gy6e8sh4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Sep 2024 08:17:49 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 48B8HmhF021058
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Sep 2024 08:17:48 GMT
Received: from [10.239.29.179] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 11 Sep
 2024 01:17:43 -0700
Message-ID: <26f2845f-2e29-4887-9f33-0b5b2a06adb6@quicinc.com>
Date: Wed, 11 Sep 2024 16:17:41 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/8] PCI: qcom: Add support to PCIe slot power supplies
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Dmitry Baryshkov
	<dmitry.baryshkov@linaro.org>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
        <andersson@kernel.org>, <konradybcio@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <abel.vesa@linaro.org>, <quic_msarkar@quicinc.com>,
        <quic_devipriy@quicinc.com>, <kw@linux.com>, <lpieralisi@kernel.org>,
        <neil.armstrong@linaro.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-clk@vger.kernel.org>
References: <20240827063631.3932971-1-quic_qianyu@quicinc.com>
 <20240827063631.3932971-9-quic_qianyu@quicinc.com>
 <CAA8EJpq5KergZ8czg4F=EYMLANoOeBsiSVoO-zAgfG0ezQrKCQ@mail.gmail.com>
 <20240827165826.moe6cnemeheos6jn@thinkpad>
Content-Language: en-US
From: Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <20240827165826.moe6cnemeheos6jn@thinkpad>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: ijbW-f1D4liPaX-mPUGTaLhfU_ebnCX2
X-Proofpoint-ORIG-GUID: ijbW-f1D4liPaX-mPUGTaLhfU_ebnCX2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 suspectscore=0
 bulkscore=0 clxscore=1011 mlxscore=0 lowpriorityscore=0 impostorscore=0
 mlxlogscore=999 spamscore=0 adultscore=0 priorityscore=1501 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2408220000
 definitions=main-2409110062
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_011758_043614_C0E8DFA0 
X-CRM114-Status: GOOD (  24.67  )
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


On 8/28/2024 12:58 AM, Manivannan Sadhasivam wrote:
> On Tue, Aug 27, 2024 at 02:44:09PM +0300, Dmitry Baryshkov wrote:
>> On Tue, 27 Aug 2024 at 09:36, Qiang Yu <quic_qianyu@quicinc.com> wrote:
>>> On platform x1e80100 QCP, PCIe3 is a standard x8 form factor. Hence, add
>>> support to use 3.3v, 3.3v aux and 12v regulators.
>> First of all, I don't see corresponding bindings change.
>>
>> Second, these supplies power up the slot, not the host controller
>> itself. As such these supplies do not belong to the host controller
>> entry. Please consider using the pwrseq framework instead.
>>
> Indeed. For legacy reasons, slot power supplies were populated in the host
> bridge node itself until recently Rob started objecting it [1]. And it makes
> real sense to put these supplies in the root port node and handle them in the
> relevant driver.
>
> I'm still evaluating whether the handling should be done in the portdrv or
> pwrctl driver, but haven't reached the conclusion. Pwrctl seems to be the ideal
> choice, but I see a few issues related to handling the OF node for the root
> port.
>
> Hope I'll come to a conclusion in the next few days and will update this thread.
>
> - Mani
>
> [1] https://lore.kernel.org/lkml/20240604235806.GA1903493-robh@kernel.org/
Hi Mani, do you have any updates?

Thanks,
Qiang
>
>>> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
>>> ---
>>>   drivers/pci/controller/dwc/pcie-qcom.c | 52 +++++++++++++++++++++++++-
>>>   1 file changed, 50 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
>>> index 6f953e32d990..59fb415dfeeb 100644
>>> --- a/drivers/pci/controller/dwc/pcie-qcom.c
>>> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
>>> @@ -248,6 +248,8 @@ struct qcom_pcie_cfg {
>>>          bool no_l0s;
>>>   };
>>>
>>> +#define QCOM_PCIE_SLOT_MAX_SUPPLIES                    3
>>> +
>>>   struct qcom_pcie {
>>>          struct dw_pcie *pci;
>>>          void __iomem *parf;                     /* DT parf */
>>> @@ -260,6 +262,7 @@ struct qcom_pcie {
>>>          struct icc_path *icc_cpu;
>>>          const struct qcom_pcie_cfg *cfg;
>>>          struct dentry *debugfs;
>>> +       struct regulator_bulk_data slot_supplies[QCOM_PCIE_SLOT_MAX_SUPPLIES];
>>>          bool suspended;
>>>          bool use_pm_opp;
>>>   };
>>> @@ -1174,6 +1177,41 @@ static int qcom_pcie_link_up(struct dw_pcie *pci)
>>>          return !!(val & PCI_EXP_LNKSTA_DLLLA);
>>>   }
>>>
>>> +static int qcom_pcie_enable_slot_supplies(struct qcom_pcie *pcie)
>>> +{
>>> +       struct dw_pcie *pci = pcie->pci;
>>> +       int ret;
>>> +
>>> +       ret = regulator_bulk_enable(ARRAY_SIZE(pcie->slot_supplies),
>>> +                                   pcie->slot_supplies);
>>> +       if (ret < 0)
>>> +               dev_err(pci->dev, "Failed to enable slot regulators\n");
>>> +
>>> +       return ret;
>>> +}
>>> +
>>> +static void qcom_pcie_disable_slot_supplies(struct qcom_pcie *pcie)
>>> +{
>>> +       regulator_bulk_disable(ARRAY_SIZE(pcie->slot_supplies),
>>> +                              pcie->slot_supplies);
>>> +}
>>> +
>>> +static int qcom_pcie_get_slot_supplies(struct qcom_pcie *pcie)
>>> +{
>>> +       struct dw_pcie *pci = pcie->pci;
>>> +       int ret;
>>> +
>>> +       pcie->slot_supplies[0].supply = "vpcie12v";
>>> +       pcie->slot_supplies[1].supply = "vpcie3v3";
>>> +       pcie->slot_supplies[2].supply = "vpcie3v3aux";
>>> +       ret = devm_regulator_bulk_get(pci->dev, ARRAY_SIZE(pcie->slot_supplies),
>>> +                                     pcie->slot_supplies);
>>> +       if (ret < 0)
>>> +               dev_err(pci->dev, "Failed to get slot regulators\n");
>>> +
>>> +       return ret;
>>> +}
>>> +
>>>   static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
>>>   {
>>>          struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
>>> @@ -1182,10 +1220,14 @@ static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
>>>
>>>          qcom_ep_reset_assert(pcie);
>>>
>>> -       ret = pcie->cfg->ops->init(pcie);
>>> +       ret = qcom_pcie_enable_slot_supplies(pcie);
>>>          if (ret)
>>>                  return ret;
>>>
>>> +       ret = pcie->cfg->ops->init(pcie);
>>> +       if (ret)
>>> +               goto err_disable_slot;
>>> +
>>>          ret = phy_set_mode_ext(pcie->phy, PHY_MODE_PCIE, PHY_MODE_PCIE_RC);
>>>          if (ret)
>>>                  goto err_deinit;
>>> @@ -1216,7 +1258,8 @@ static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
>>>          phy_power_off(pcie->phy);
>>>   err_deinit:
>>>          pcie->cfg->ops->deinit(pcie);
>>> -
>>> +err_disable_slot:
>>> +       qcom_pcie_disable_slot_supplies(pcie);
>>>          return ret;
>>>   }
>>>
>>> @@ -1228,6 +1271,7 @@ static void qcom_pcie_host_deinit(struct dw_pcie_rp *pp)
>>>          qcom_ep_reset_assert(pcie);
>>>          phy_power_off(pcie->phy);
>>>          pcie->cfg->ops->deinit(pcie);
>>> +       qcom_pcie_disable_slot_supplies(pcie);
>>>   }
>>>
>>>   static void qcom_pcie_host_post_init(struct dw_pcie_rp *pp)
>>> @@ -1602,6 +1646,10 @@ static int qcom_pcie_probe(struct platform_device *pdev)
>>>                          goto err_pm_runtime_put;
>>>          }
>>>
>>> +       ret = qcom_pcie_get_slot_supplies(pcie);
>>> +       if (ret)
>>> +               goto err_pm_runtime_put;
>>> +
>>>          ret = pcie->cfg->ops->get_resources(pcie);
>>>          if (ret)
>>>                  goto err_pm_runtime_put;
>>> --
>>> 2.34.1
>>>
>>
>> -- 
>> With best wishes
>> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
