Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71DB1D0BB5E
	for <linux-phy@archiver.kernel.org>; Thu, 24 Oct 2024 06:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EGpxYOaqLCIWBUihgHdSa1OxOPLKyufHZfmTN1Trkds=; b=uFLD1RMdYjPoPh
	Vi02/TURsfhRS1xCeCu0Cyiw4YBtjMNPlZ5KW+F6Q4V3xZV6/fPgBpeK7UDqnhJ+5pikLctEqmWEb
	eVAzJGX4qjdvXPu8MzXxvSR+cWxTWMsbJnvhwcOLRHhzBvq18gk+BBdR8V8RgCGWoJtWK41iCO1df
	kOUIKQY9DVlXQ9kwYjy1YrOpzFmjtdsUKiIKQgEWAy6YFR88EJcIPljhFQOVt4NO+BzwfPRRSGqla
	5RkfFVzVn/rCFSwkDkmky98OBQOC4tV2+AnVFRP+G4NO3FT5IqTkpOolDxCvCjHQwtIQsPPAOU79e
	ojvfNa+vbssm+GiHNuCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3rWV-0000000Gwdf-0EZt;
	Thu, 24 Oct 2024 06:40:43 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3rW2-0000000Gwad-2v4O
	for linux-phy@lists.infradead.org;
	Thu, 24 Oct 2024 06:40:16 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49NLg2Tl017697;
	Thu, 24 Oct 2024 06:39:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fk26zDPuQfok9dl0kGUbFQvIezkCct5ynjCixGyvLcQ=; b=Aa7Aw1qRXAyrdU/k
	2ZbXvyDxBD5paQLpvB7LQO8T5hiAjG1OP/pmEGhggP7SIw1XOsULY5QxP8hFTZsZ
	9Gqa9sXvZ37IPMbdlDf0hFRbM9EI8+bAWdKjmKUGMcnKm9xXa18exHYAaZnTLxYB
	OLa4Xd3/+/7xhzcnCxoX6BY1EKrJA7DcXr3PSVZ1/p875VhSQT+pLbSaKTORUPPC
	PrMDqKQ0oNmBypuY6CjhUSYZ9bTK1/zV7iuIZlijqVQxi5kD4XY2YmNagMF+mKjW
	ERXBWiVi2b4KePQjVlsoT09siPXVJ/AZCYznuPZS9O4VwkBbvMthUZdcuvyviXxw
	wHpQiA==
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42em3wcq0f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 24 Oct 2024 06:39:53 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 49O6dqjn007427
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 24 Oct 2024 06:39:52 GMT
Received: from [10.239.29.179] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 23 Oct
 2024 23:39:47 -0700
Message-ID: <e3e75d14-94dc-4ec5-a72b-4df0ae66655b@quicinc.com>
Date: Thu, 24 Oct 2024 14:39:34 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 5/7] PCI: qcom: Remove BDF2SID mapping config for
 SC8280X family SoC
To: Johan Hovold <johan@kernel.org>
CC: <manivannan.sadhasivam@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh@kernel.org>, <andersson@kernel.org>,
        <konradybcio@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>, <abel.vesa@linaro.org>,
        <quic_msarkar@quicinc.com>, <quic_devipriy@quicinc.com>,
        <dmitry.baryshkov@linaro.org>, <kw@linux.com>, <lpieralisi@kernel.org>,
        <neil.armstrong@linaro.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-clk@vger.kernel.org>, <johan+linaro@kernel.org>
References: <20241017030412.265000-1-quic_qianyu@quicinc.com>
 <20241017030412.265000-6-quic_qianyu@quicinc.com>
 <ZxJn_Xf4NO3eAfey@hovoldconsulting.com>
Content-Language: en-US
From: Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <ZxJn_Xf4NO3eAfey@hovoldconsulting.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: nTg7MJty3ekN0XfECM95-k_nBPjfK-ke
X-Proofpoint-ORIG-GUID: nTg7MJty3ekN0XfECM95-k_nBPjfK-ke
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 malwarescore=0
 mlxscore=0 lowpriorityscore=0 phishscore=0 impostorscore=0 clxscore=1011
 priorityscore=1501 mlxlogscore=999 suspectscore=0 bulkscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2409260000
 definitions=main-2410240048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241023_234014_991892_89688CD5 
X-CRM114-Status: GOOD (  19.34  )
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


On 10/18/2024 9:51 PM, Johan Hovold wrote:
> On Wed, Oct 16, 2024 at 08:04:10PM -0700, Qiang Yu wrote:
>> On SC8280X family SoC, PCIe controllers are connected to SMMUv3, hence
>> they don't need the config_sid() callback in ops_1_9_0 struct. Fix it by
>> introducing a new ops struct, namely ops_1_21_0 which is same as ops_1_9_0
>> without config_sid() callback so that BDF2SID mapping won't be configured
>> during init.
> The sc8280xp PCIe devicetree nodes do not specify an 'iommu-map' so the
> config_sid() callback is effectively a no-op. Please rephrase this so
> that it becomes obvious that this is a clean up rather than fix.
>
>> Fixes: 70574511f3fc ("PCI: qcom: Add support for SC8280XP")
> And drop the Fixes tag.
>
>> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>> ---
>>   drivers/pci/controller/dwc/pcie-qcom.c | 12 +++++++++++-
>>   1 file changed, 11 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
>> index 88a98be930e3..468bd4242e61 100644
>> --- a/drivers/pci/controller/dwc/pcie-qcom.c
>> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
>> @@ -1367,6 +1367,16 @@ static const struct qcom_pcie_ops ops_2_9_0 = {
>>   	.ltssm_enable = qcom_pcie_2_3_2_ltssm_enable,
>>   };
>>   
>> +/* Qcom IP rev.: 1.21.0 */
> Is this the actual IP revision on sc8280xp (and not just the revision
> used on x1e80100)?
Get confirmation from HW team. 1.21.0 is Qcom IP rev of sc8280xp,
Synopsis IP rev is 5.60a.

Thanks,
Qiang
> Please also provide the Synopsis IP rev like the other configs do.
>
>> +static const struct qcom_pcie_ops ops_1_21_0 = {
>> +	.get_resources = qcom_pcie_get_resources_2_7_0,
>> +	.init = qcom_pcie_init_2_7_0,
>> +	.post_init = qcom_pcie_post_init_2_7_0,
>> +	.host_post_init = qcom_pcie_host_post_init_2_7_0,
>> +	.deinit = qcom_pcie_deinit_2_7_0,
>> +	.ltssm_enable = qcom_pcie_2_3_2_ltssm_enable,
>> +};
>> +
>>   static const struct qcom_pcie_cfg cfg_1_0_0 = {
>>   	.ops = &ops_1_0_0,
>>   };
> And try to keep these structs sorted by revision. At least put this one
> after ops_1_9_0.
>
> Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
