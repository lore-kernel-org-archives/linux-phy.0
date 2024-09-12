Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2662EED606
	for <linux-phy@archiver.kernel.org>; Thu, 12 Sep 2024 13:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i1VUZls0cf6ex60xylHYiMZeyqvm8mpiLP/8y4204Tc=; b=Dat/jkXrL6kxh+
	YJbfvBuKRjdY673o7N3zPcIbBE5gFhcHP9XJjTD/eF0htsutQLQatmljOJP/Vm7BIn/fqp8UCqfSL
	nLJc4FEc260s6N7gOLPu3rJSWaffypCiZJfSvetPG9YyfnQwQVGjcHwwo7gtSlqF04SoxjTMGBYuX
	0RlSywirpyFiHcxvy4D9Jg99PF7q46SoJZ+fbbKoBIWZ8cu0uNV6lExZ2PsuRedOpbR2Lys2DPR4J
	dyJXEDS3Yu5LtjMwoiSPnuVMGEyknbMD+w8E6QWFREkfHXP8R7xB26YCP84e/zMW+v8E4ci0DkNQc
	YzyzD/Q/1JIfFzusQqOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sok3J-0000000DEQq-1AHR;
	Thu, 12 Sep 2024 13:40:05 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sok3F-0000000DEPl-2os7
	for linux-phy@lists.infradead.org;
	Thu, 12 Sep 2024 13:40:03 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48CCDX7J008535;
	Thu, 12 Sep 2024 13:39:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Aa6+bQLRYyqWajbCu2qsPnsRVrEkV4p/ueSyTyh2JRE=; b=cdzhJ1AeGaBdU8cc
	XySgrcaZFzgyNigYEmaFdkrCwC0eg3qa+czEZY18Dm09IRTIRfWhUfU/7VQ6cBi0
	l2jSz+caU2jbEGcVE+yEbebPNvqhxejZojsPTeB5NxQ5MB8TER6VFSuvkY+HfP6d
	Jg6uPxJKKZkAjZpygfEinm8Ok1cufoNca4ZDpK2oHq8nt4TKBOi+wsrY6Nn1dnMr
	6LlsqATouUAQXkqS6qPcJWxYLbyAJMMDVxXAuZEDgBhrasT1dli9CTJXo6GXnICx
	NOsFTBgjrRes6G5oKXIG2/4AS+9WS0CoIP862hOlc7PAJxhUwTXnySxXHisi3e//
	5Gax2g==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41j6gn1n3a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 12 Sep 2024 13:39:54 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 48CDdrI3028430
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 12 Sep 2024 13:39:53 GMT
Received: from [10.253.13.69] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Thu, 12 Sep
 2024 06:39:48 -0700
Message-ID: <9222ef18-2eef-4ba3-95aa-fae540c06925@quicinc.com>
Date: Thu, 12 Sep 2024 21:39:44 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/8] PCI: qcom: Add support to PCIe slot power supplies
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
CC: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh@kernel.org>, <andersson@kernel.org>,
        <konradybcio@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>, <abel.vesa@linaro.org>,
        <quic_msarkar@quicinc.com>, <quic_devipriy@quicinc.com>,
        <kw@linux.com>, <lpieralisi@kernel.org>, <neil.armstrong@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-clk@vger.kernel.org>
References: <20240827063631.3932971-1-quic_qianyu@quicinc.com>
 <20240827063631.3932971-9-quic_qianyu@quicinc.com>
 <CAA8EJpq5KergZ8czg4F=EYMLANoOeBsiSVoO-zAgfG0ezQrKCQ@mail.gmail.com>
 <20240827165826.moe6cnemeheos6jn@thinkpad>
 <26f2845f-2e29-4887-9f33-0b5b2a06adb6@quicinc.com>
 <20240911153228.7ajcqicxnu2afhbp@thinkpad>
Content-Language: en-US
From: Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <20240911153228.7ajcqicxnu2afhbp@thinkpad>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: NLJRrRe3U1E6MJVZB1ufqd-FX3yRHmOp
X-Proofpoint-GUID: NLJRrRe3U1E6MJVZB1ufqd-FX3yRHmOp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 adultscore=0
 clxscore=1015 phishscore=0 mlxlogscore=999 lowpriorityscore=0
 suspectscore=0 mlxscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2409120099
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240912_064001_767561_FED00699 
X-CRM114-Status: GOOD (  24.39  )
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


On 9/11/2024 11:32 PM, Manivannan Sadhasivam wrote:
> On Wed, Sep 11, 2024 at 04:17:41PM +0800, Qiang Yu wrote:
>> On 8/28/2024 12:58 AM, Manivannan Sadhasivam wrote:
>>> On Tue, Aug 27, 2024 at 02:44:09PM +0300, Dmitry Baryshkov wrote:
>>>> On Tue, 27 Aug 2024 at 09:36, Qiang Yu <quic_qianyu@quicinc.com> wrote:
>>>>> On platform x1e80100 QCP, PCIe3 is a standard x8 form factor. Hence, add
>>>>> support to use 3.3v, 3.3v aux and 12v regulators.
>>>> First of all, I don't see corresponding bindings change.
>>>>
>>>> Second, these supplies power up the slot, not the host controller
>>>> itself. As such these supplies do not belong to the host controller
>>>> entry. Please consider using the pwrseq framework instead.
>>>>
>>> Indeed. For legacy reasons, slot power supplies were populated in the host
>>> bridge node itself until recently Rob started objecting it [1]. And it makes
>>> real sense to put these supplies in the root port node and handle them in the
>>> relevant driver.
>>>
>>> I'm still evaluating whether the handling should be done in the portdrv or
>>> pwrctl driver, but haven't reached the conclusion. Pwrctl seems to be the ideal
>>> choice, but I see a few issues related to handling the OF node for the root
>>> port.
>>>
>>> Hope I'll come to a conclusion in the next few days and will update this thread.
>>>
>>> - Mani
>>>
>>> [1] https://lore.kernel.org/lkml/20240604235806.GA1903493-robh@kernel.org/
>> Hi Mani, do you have any updates?
>>
> I'm working with Bartosz to add a new pwrctl driver for rootports. And we are
> debugging an issue currently. Unfortunately, the progress is very slow as I'm on
> vacation still.
>
> Will post the patches once it got resolved.
>
> - Mani
OK, thanks for your update.

Thanks,
Qiang
>> Thanks,
>> Qiang
>>>>> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
>>>>> ---
>>>>>    drivers/pci/controller/dwc/pcie-qcom.c | 52 +++++++++++++++++++++++++-
>>>>>    1 file changed, 50 insertions(+), 2 deletions(-)
>>>>>
>>>>> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
>>>>> index 6f953e32d990..59fb415dfeeb 100644
>>>>> --- a/drivers/pci/controller/dwc/pcie-qcom.c
>>>>> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
>>>>> @@ -248,6 +248,8 @@ struct qcom_pcie_cfg {
>>>>>           bool no_l0s;
>>>>>    };
>>>>>
>>>>> +#define QCOM_PCIE_SLOT_MAX_SUPPLIES                    3
>>>>> +
>>>>>    struct qcom_pcie {
>>>>>           struct dw_pcie *pci;
>>>>>           void __iomem *parf;                     /* DT parf */
>>>>> @@ -260,6 +262,7 @@ struct qcom_pcie {
>>>>>           struct icc_path *icc_cpu;
>>>>>           const struct qcom_pcie_cfg *cfg;
>>>>>           struct dentry *debugfs;
>>>>> +       struct regulator_bulk_data slot_supplies[QCOM_PCIE_SLOT_MAX_SUPPLIES];
>>>>>           bool suspended;
>>>>>           bool use_pm_opp;
>>>>>    };
>>>>> @@ -1174,6 +1177,41 @@ static int qcom_pcie_link_up(struct dw_pcie *pci)
>>>>>           return !!(val & PCI_EXP_LNKSTA_DLLLA);
>>>>>    }
>>>>>
>>>>> +static int qcom_pcie_enable_slot_supplies(struct qcom_pcie *pcie)
>>>>> +{
>>>>> +       struct dw_pcie *pci = pcie->pci;
>>>>> +       int ret;
>>>>> +
>>>>> +       ret = regulator_bulk_enable(ARRAY_SIZE(pcie->slot_supplies),
>>>>> +                                   pcie->slot_supplies);
>>>>> +       if (ret < 0)
>>>>> +               dev_err(pci->dev, "Failed to enable slot regulators\n");
>>>>> +
>>>>> +       return ret;
>>>>> +}
>>>>> +
>>>>> +static void qcom_pcie_disable_slot_supplies(struct qcom_pcie *pcie)
>>>>> +{
>>>>> +       regulator_bulk_disable(ARRAY_SIZE(pcie->slot_supplies),
>>>>> +                              pcie->slot_supplies);
>>>>> +}
>>>>> +
>>>>> +static int qcom_pcie_get_slot_supplies(struct qcom_pcie *pcie)
>>>>> +{
>>>>> +       struct dw_pcie *pci = pcie->pci;
>>>>> +       int ret;
>>>>> +
>>>>> +       pcie->slot_supplies[0].supply = "vpcie12v";
>>>>> +       pcie->slot_supplies[1].supply = "vpcie3v3";
>>>>> +       pcie->slot_supplies[2].supply = "vpcie3v3aux";
>>>>> +       ret = devm_regulator_bulk_get(pci->dev, ARRAY_SIZE(pcie->slot_supplies),
>>>>> +                                     pcie->slot_supplies);
>>>>> +       if (ret < 0)
>>>>> +               dev_err(pci->dev, "Failed to get slot regulators\n");
>>>>> +
>>>>> +       return ret;
>>>>> +}
>>>>> +
>>>>>    static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
>>>>>    {
>>>>>           struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
>>>>> @@ -1182,10 +1220,14 @@ static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
>>>>>
>>>>>           qcom_ep_reset_assert(pcie);
>>>>>
>>>>> -       ret = pcie->cfg->ops->init(pcie);
>>>>> +       ret = qcom_pcie_enable_slot_supplies(pcie);
>>>>>           if (ret)
>>>>>                   return ret;
>>>>>
>>>>> +       ret = pcie->cfg->ops->init(pcie);
>>>>> +       if (ret)
>>>>> +               goto err_disable_slot;
>>>>> +
>>>>>           ret = phy_set_mode_ext(pcie->phy, PHY_MODE_PCIE, PHY_MODE_PCIE_RC);
>>>>>           if (ret)
>>>>>                   goto err_deinit;
>>>>> @@ -1216,7 +1258,8 @@ static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
>>>>>           phy_power_off(pcie->phy);
>>>>>    err_deinit:
>>>>>           pcie->cfg->ops->deinit(pcie);
>>>>> -
>>>>> +err_disable_slot:
>>>>> +       qcom_pcie_disable_slot_supplies(pcie);
>>>>>           return ret;
>>>>>    }
>>>>>
>>>>> @@ -1228,6 +1271,7 @@ static void qcom_pcie_host_deinit(struct dw_pcie_rp *pp)
>>>>>           qcom_ep_reset_assert(pcie);
>>>>>           phy_power_off(pcie->phy);
>>>>>           pcie->cfg->ops->deinit(pcie);
>>>>> +       qcom_pcie_disable_slot_supplies(pcie);
>>>>>    }
>>>>>
>>>>>    static void qcom_pcie_host_post_init(struct dw_pcie_rp *pp)
>>>>> @@ -1602,6 +1646,10 @@ static int qcom_pcie_probe(struct platform_device *pdev)
>>>>>                           goto err_pm_runtime_put;
>>>>>           }
>>>>>
>>>>> +       ret = qcom_pcie_get_slot_supplies(pcie);
>>>>> +       if (ret)
>>>>> +               goto err_pm_runtime_put;
>>>>> +
>>>>>           ret = pcie->cfg->ops->get_resources(pcie);
>>>>>           if (ret)
>>>>>                   goto err_pm_runtime_put;
>>>>> --
>>>>> 2.34.1
>>>>>
>>>> -- 
>>>> With best wishes
>>>> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
