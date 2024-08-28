Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2642BC54FB3
	for <linux-phy@archiver.kernel.org>; Wed, 28 Aug 2024 13:44:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F6Hrz+7iG9lMYurAvlYuA0OYOp1pJHTkcjy1DbgPwoc=; b=baDjg2QVxmVA6O
	2ZW5mz4Do3lJCKY4fu2s6S6u6brEDfCYh/UPpzo1LTTPiw6R1WagJTfRw9CrpUE/06Y/meVCTZk1K
	BBzDGqT7jp4wWt3NcVqX2yvyyYHT/X2Gi8XMLNKkvqupZ4ulNs6QqLRghJ72xDLsWG1FRInRg0YrQ
	Z6+i91M8BiwnHMWYnLZdJNfDTehmyUO/k+L1LVXAekihFVaSDG4lKJdhSIwM639hAPWDx/aFJ41Fn
	9PfXQRBs2oD7xRevwakmsYYltmJgZDxZPgDwGqqWtQ5GUahvcK6MZjq3r/5cOY79HRupw1vYK25Jw
	jgZWMlAjIygWi70ISqZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjIyP-0000000FZeC-3Ucd;
	Wed, 28 Aug 2024 13:44:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjIyM-0000000FZdI-47mb
	for linux-phy@lists.infradead.org;
	Wed, 28 Aug 2024 13:44:32 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47SBGBuj005876;
	Wed, 28 Aug 2024 13:44:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WV6pOsN3fzAOdvPKz8rxnXPKkoNjSkNfRLTZAiQzD6s=; b=XQX1xlWUOZ/mwcR1
	ybKElGSj+kEgAYLK1Zl5/YqTUla64WimlWfkOXJPlLaCxXcYWMLbsrev5sYrdT5d
	m602n5l/UnJE5SSiOn8C/5I7uQnL+SIOp873lVB5DRrlAzEZ+TqD7NPe798Q/wHM
	Ed1Rn6VEchqchJzAu3ZrCNM3t1vdsrpBbf7sigF/Jar5BjHIf5OZZJ+RyRS4QQDP
	w+IqodQEJ/x3cFfxwkSY6Flwq+FtmGvPl26/g/7J49pgfW3l5ojZ0gK1Ss1sd3lM
	SjOybkToPPJ9tTIn7R82a3DA8AGQx0/M2f/D6RdN4vlpvuWwEIMetE5U4onUDLXZ
	LgrLsw==
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 419pv2huyb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 28 Aug 2024 13:44:20 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 47SDiJjj016907
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 28 Aug 2024 13:44:19 GMT
Received: from [10.253.39.71] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 28 Aug
 2024 06:44:13 -0700
Message-ID: <844538cc-9f58-4e05-8356-096a98bd543a@quicinc.com>
Date: Wed, 28 Aug 2024 21:44:11 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/8] PCI: qcom: Add support to PCIe slot power supplies
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: <manivannan.sadhasivam@linaro.org>, <vkoul@kernel.org>,
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
Content-Language: en-US
From: Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <CAA8EJpq5KergZ8czg4F=EYMLANoOeBsiSVoO-zAgfG0ezQrKCQ@mail.gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: ecUGWv2wRlPHoo51cogHb43pAmzADN8m
X-Proofpoint-ORIG-GUID: ecUGWv2wRlPHoo51cogHb43pAmzADN8m
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-28_05,2024-08-27_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 priorityscore=1501 malwarescore=0 adultscore=0 phishscore=0
 impostorscore=0 bulkscore=0 spamscore=0 suspectscore=0 mlxscore=0
 mlxlogscore=999 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2407110000 definitions=main-2408280098
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_064431_206600_D0172EBD 
X-CRM114-Status: GOOD (  18.44  )
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


On 8/27/2024 7:44 PM, Dmitry Baryshkov wrote:
> On Tue, 27 Aug 2024 at 09:36, Qiang Yu <quic_qianyu@quicinc.com> wrote:
>> On platform x1e80100 QCP, PCIe3 is a standard x8 form factor. Hence, add
>> support to use 3.3v, 3.3v aux and 12v regulators.
> First of all, I don't see corresponding bindings change.
>
> Second, these supplies power up the slot, not the host controller
> itself. As such these supplies do not belong to the host controller
> entry. Please consider using the pwrseq framework instead.
As Mani commented, he is exploring to use pwrctl driver to control this
three power. Will update the patch after Mani share his conclusion. This
patch may even not required.

Thanks,
Qiang
>
>> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
>> ---
>>   drivers/pci/controller/dwc/pcie-qcom.c | 52 +++++++++++++++++++++++++-
>>   1 file changed, 50 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
>> index 6f953e32d990..59fb415dfeeb 100644
>> --- a/drivers/pci/controller/dwc/pcie-qcom.c
>> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
>> @@ -248,6 +248,8 @@ struct qcom_pcie_cfg {
>>          bool no_l0s;
>>   };
>>
>> +#define QCOM_PCIE_SLOT_MAX_SUPPLIES                    3
>> +
>>   struct qcom_pcie {
>>          struct dw_pcie *pci;
>>          void __iomem *parf;                     /* DT parf */
>> @@ -260,6 +262,7 @@ struct qcom_pcie {
>>          struct icc_path *icc_cpu;
>>          const struct qcom_pcie_cfg *cfg;
>>          struct dentry *debugfs;
>> +       struct regulator_bulk_data slot_supplies[QCOM_PCIE_SLOT_MAX_SUPPLIES];
>>          bool suspended;
>>          bool use_pm_opp;
>>   };
>> @@ -1174,6 +1177,41 @@ static int qcom_pcie_link_up(struct dw_pcie *pci)
>>          return !!(val & PCI_EXP_LNKSTA_DLLLA);
>>   }
>>
>> +static int qcom_pcie_enable_slot_supplies(struct qcom_pcie *pcie)
>> +{
>> +       struct dw_pcie *pci = pcie->pci;
>> +       int ret;
>> +
>> +       ret = regulator_bulk_enable(ARRAY_SIZE(pcie->slot_supplies),
>> +                                   pcie->slot_supplies);
>> +       if (ret < 0)
>> +               dev_err(pci->dev, "Failed to enable slot regulators\n");
>> +
>> +       return ret;
>> +}
>> +
>> +static void qcom_pcie_disable_slot_supplies(struct qcom_pcie *pcie)
>> +{
>> +       regulator_bulk_disable(ARRAY_SIZE(pcie->slot_supplies),
>> +                              pcie->slot_supplies);
>> +}
>> +
>> +static int qcom_pcie_get_slot_supplies(struct qcom_pcie *pcie)
>> +{
>> +       struct dw_pcie *pci = pcie->pci;
>> +       int ret;
>> +
>> +       pcie->slot_supplies[0].supply = "vpcie12v";
>> +       pcie->slot_supplies[1].supply = "vpcie3v3";
>> +       pcie->slot_supplies[2].supply = "vpcie3v3aux";
>> +       ret = devm_regulator_bulk_get(pci->dev, ARRAY_SIZE(pcie->slot_supplies),
>> +                                     pcie->slot_supplies);
>> +       if (ret < 0)
>> +               dev_err(pci->dev, "Failed to get slot regulators\n");
>> +
>> +       return ret;
>> +}
>> +
>>   static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
>>   {
>>          struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
>> @@ -1182,10 +1220,14 @@ static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
>>
>>          qcom_ep_reset_assert(pcie);
>>
>> -       ret = pcie->cfg->ops->init(pcie);
>> +       ret = qcom_pcie_enable_slot_supplies(pcie);
>>          if (ret)
>>                  return ret;
>>
>> +       ret = pcie->cfg->ops->init(pcie);
>> +       if (ret)
>> +               goto err_disable_slot;
>> +
>>          ret = phy_set_mode_ext(pcie->phy, PHY_MODE_PCIE, PHY_MODE_PCIE_RC);
>>          if (ret)
>>                  goto err_deinit;
>> @@ -1216,7 +1258,8 @@ static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
>>          phy_power_off(pcie->phy);
>>   err_deinit:
>>          pcie->cfg->ops->deinit(pcie);
>> -
>> +err_disable_slot:
>> +       qcom_pcie_disable_slot_supplies(pcie);
>>          return ret;
>>   }
>>
>> @@ -1228,6 +1271,7 @@ static void qcom_pcie_host_deinit(struct dw_pcie_rp *pp)
>>          qcom_ep_reset_assert(pcie);
>>          phy_power_off(pcie->phy);
>>          pcie->cfg->ops->deinit(pcie);
>> +       qcom_pcie_disable_slot_supplies(pcie);
>>   }
>>
>>   static void qcom_pcie_host_post_init(struct dw_pcie_rp *pp)
>> @@ -1602,6 +1646,10 @@ static int qcom_pcie_probe(struct platform_device *pdev)
>>                          goto err_pm_runtime_put;
>>          }
>>
>> +       ret = qcom_pcie_get_slot_supplies(pcie);
>> +       if (ret)
>> +               goto err_pm_runtime_put;
>> +
>>          ret = pcie->cfg->ops->get_resources(pcie);
>>          if (ret)
>>                  goto err_pm_runtime_put;
>> --
>> 2.34.1
>>
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
